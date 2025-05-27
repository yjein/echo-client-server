#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#ifdef __linux__
#include <arpa/inet.h>
#include <sys/socket.h>
#endif // __linux
#ifdef WIN32
#include <ws2tcpip.h>
#endif // WIN32
#include <thread>
#include <vector>
#include <mutex>
#include <algorithm>

#ifdef WIN32
void myerror(const char* msg) { fprintf(stderr, "%s %lu\n", msg, GetLastError()); }
#else
void myerror(const char* msg) { fprintf(stderr, "%s %s %d\n", msg, strerror(errno), errno); }
#endif

void usage() {
    printf("syntax : echo-server <port> [-e[-b]] [-si <src ip>] [-sp <src port>]\n");
    printf("sample : echo-server 1234 -e -b\n");
}

struct Param {
    char* port{nullptr};
    uint32_t srcIp{0};
    uint16_t srcPort{0};
    bool echo{false};
    bool broadcast{false};

    bool parse(int argc, char* argv[]) {
        if (argc < 2) return false;
        port = argv[1];

        for (int i = 2; i < argc;) {
            if (strcmp(argv[i], "-e") == 0) {
                echo = true;
                i++;
                continue;
            }
            if (strcmp(argv[i], "-b") == 0) {
                broadcast = true;
                i++;
                continue;
            }
            if (strcmp(argv[i], "-si") == 0) {
                int res = inet_pton(AF_INET, argv[i + 1], &srcIp);
                switch (res) {
                    case 1: break;
                    case 0: fprintf(stderr, "not a valid network address\n"); return false;
                    case -1: myerror("inet_pton"); return false;
                }
                i += 2;
                continue;
            }
            if (strcmp(argv[i], "-sp") == 0) {
                srcPort = atoi(argv[i + 1]);
                i += 2;
                continue;
            }
            fprintf(stderr, "unknown parameter %s\n", argv[i]);
            return false;
        }
        return (port != nullptr);
    }
} param;

std::vector<int> clients;
std::mutex clients_mutex;

void broadcast_message(int sender_sd, const char* buf, size_t len) {
    std::lock_guard<std::mutex> lock(clients_mutex);
    for (int client_sd : clients) {
        if (client_sd != sender_sd) {
            send(client_sd, buf, len, 0);
        }
    }
}

void recvThread(int sd) {
    printf("connected\n");
    fflush(stdout);

    {
        std::lock_guard<std::mutex> lock(clients_mutex);
        clients.push_back(sd);
    }

    static const int BUFSIZE = 65536;
    char buf[BUFSIZE];
    while (true) {
        ssize_t res = ::recv(sd, buf, BUFSIZE - 1, 0);
        if (res == 0 || res == -1) {
            fprintf(stderr, "recv return %zd", res);
            myerror(" ");
            break;
        }
        buf[res] = '\0';
        printf("%s", buf);
        fflush(stdout);

        if (param.echo) {
            res = ::send(sd, buf, res, 0);
            if (res == 0 || res == -1) {
                fprintf(stderr, "send return %zd", res);
                myerror(" ");
                break;
            }
        }

        if (param.broadcast) {
            broadcast_message(sd, buf, res);
        }
    }

    {
        std::lock_guard<std::mutex> lock(clients_mutex);
        clients.erase(std::remove(clients.begin(), clients.end(), sd), clients.end());
    }

    printf("disconnected\n");
    fflush(stdout);
    ::close(sd);
}

int main(int argc, char* argv[]) {
    if (!param.parse(argc, argv)) {
        usage();
        return -1;
    }

#ifdef WIN32
    WSAData wsaData;
    WSAStartup(0x0202, &wsaData);
#endif // WIN32

    int sd = ::socket(AF_INET, SOCK_STREAM, 0);
    if (sd == -1) {
        myerror("socket");
        return -1;
    }

#ifdef __linux__
    int optval = 1;
    int res = ::setsockopt(sd, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval));
    if (res == -1) {
        myerror("setsockopt");
        return -1;
    }
#endif // __linux

    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = param.srcIp ? param.srcIp : INADDR_ANY;
    addr.sin_port = htons(atoi(param.port));

    if (::bind(sd, (struct sockaddr *)&addr, sizeof(addr)) == -1) {
        myerror("bind");
        return -1;
    }

    if (::listen(sd, SOMAXCONN) == -1) {
        myerror("listen");
        return -1;
    }

    while (true) {
        struct sockaddr_in cli_addr;
        socklen_t len = sizeof(cli_addr);
        int cli_sd = ::accept(sd, (struct sockaddr *)&cli_addr, &len);
        if (cli_sd == -1) {
            myerror("accept");
            break;
        }
        std::thread(recvThread, cli_sd).detach();  // 수정된 부분
    }
    ::close(sd);
    return 0;
}
