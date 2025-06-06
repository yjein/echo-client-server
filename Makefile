#############################################################################
# Makefile for building: echo-client-server
# Generated by qmake (3.1) (Qt 5.15.15)
# Project:  echo-client-server.pro
# Template: subdirs
# Command: /usr/lib/qt5/bin/qmake -o Makefile echo-client-server.pro
#############################################################################

MAKEFILE      = Makefile

EQ            = =

first: make_first
QMAKE         = /usr/lib/qt5/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
QINSTALL      = /usr/lib/qt5/bin/qmake -install qinstall
QINSTALL_PROGRAM = /usr/lib/qt5/bin/qmake -install qinstall -exe
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = echo-client-server1.0.0
DISTDIR = /home/yjein/gilgil/echo-client-server/.tmp/echo-client-server1.0.0
SUBTARGETS    =  \
		sub-echo-server \
		sub-echo-client


sub-echo-server-qmake_all:  FORCE
	@test -d echo-server/ || mkdir -p echo-server/
	cd echo-server/ && $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-server/echo-server.pro
	cd echo-server/ && $(MAKE) -f Makefile qmake_all
sub-echo-server: FORCE
	@test -d echo-server/ || mkdir -p echo-server/
	cd echo-server/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-server/echo-server.pro ) && $(MAKE) -f Makefile
sub-echo-server-make_first: FORCE
	@test -d echo-server/ || mkdir -p echo-server/
	cd echo-server/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-server/echo-server.pro ) && $(MAKE) -f Makefile 
sub-echo-server-all: FORCE
	@test -d echo-server/ || mkdir -p echo-server/
	cd echo-server/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-server/echo-server.pro ) && $(MAKE) -f Makefile all
sub-echo-server-clean: FORCE
	@test -d echo-server/ || mkdir -p echo-server/
	cd echo-server/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-server/echo-server.pro ) && $(MAKE) -f Makefile clean
sub-echo-server-distclean: FORCE
	@test -d echo-server/ || mkdir -p echo-server/
	cd echo-server/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-server/echo-server.pro ) && $(MAKE) -f Makefile distclean
sub-echo-server-install_subtargets: FORCE
	@test -d echo-server/ || mkdir -p echo-server/
	cd echo-server/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-server/echo-server.pro ) && $(MAKE) -f Makefile install
sub-echo-server-uninstall_subtargets: FORCE
	@test -d echo-server/ || mkdir -p echo-server/
	cd echo-server/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-server/echo-server.pro ) && $(MAKE) -f Makefile uninstall
sub-echo-client-qmake_all:  FORCE
	@test -d echo-client/ || mkdir -p echo-client/
	cd echo-client/ && $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-client/echo-client.pro
	cd echo-client/ && $(MAKE) -f Makefile qmake_all
sub-echo-client: FORCE
	@test -d echo-client/ || mkdir -p echo-client/
	cd echo-client/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-client/echo-client.pro ) && $(MAKE) -f Makefile
sub-echo-client-make_first: FORCE
	@test -d echo-client/ || mkdir -p echo-client/
	cd echo-client/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-client/echo-client.pro ) && $(MAKE) -f Makefile 
sub-echo-client-all: FORCE
	@test -d echo-client/ || mkdir -p echo-client/
	cd echo-client/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-client/echo-client.pro ) && $(MAKE) -f Makefile all
sub-echo-client-clean: FORCE
	@test -d echo-client/ || mkdir -p echo-client/
	cd echo-client/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-client/echo-client.pro ) && $(MAKE) -f Makefile clean
sub-echo-client-distclean: FORCE
	@test -d echo-client/ || mkdir -p echo-client/
	cd echo-client/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-client/echo-client.pro ) && $(MAKE) -f Makefile distclean
sub-echo-client-install_subtargets: FORCE
	@test -d echo-client/ || mkdir -p echo-client/
	cd echo-client/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-client/echo-client.pro ) && $(MAKE) -f Makefile install
sub-echo-client-uninstall_subtargets: FORCE
	@test -d echo-client/ || mkdir -p echo-client/
	cd echo-client/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-client/echo-client.pro ) && $(MAKE) -f Makefile uninstall

Makefile: echo-client-server.pro /usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qmake_use.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		echo-client-server.pro
	$(QMAKE) -o Makefile echo-client-server.pro
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qmake_use.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf:
echo-client-server.pro:
qmake: FORCE
	@$(QMAKE) -o Makefile echo-client-server.pro

qmake_all: sub-echo-server-qmake_all sub-echo-client-qmake_all FORCE

make_first: sub-echo-server-make_first sub-echo-client-make_first  FORCE
all: sub-echo-server-all sub-echo-client-all  FORCE
clean: sub-echo-server-clean sub-echo-client-clean  FORCE
distclean: sub-echo-server-distclean sub-echo-client-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) .qmake.stash
install_subtargets: sub-echo-server-install_subtargets sub-echo-client-install_subtargets FORCE
uninstall_subtargets: sub-echo-server-uninstall_subtargets sub-echo-client-uninstall_subtargets FORCE

sub-echo-server-check:
	@test -d echo-server/ || mkdir -p echo-server/
	cd echo-server/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-server/echo-server.pro ) && $(MAKE) -f Makefile check
sub-echo-client-check:
	@test -d echo-client/ || mkdir -p echo-client/
	cd echo-client/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-client/echo-client.pro ) && $(MAKE) -f Makefile check
check: sub-echo-server-check sub-echo-client-check

sub-echo-server-benchmark:
	@test -d echo-server/ || mkdir -p echo-server/
	cd echo-server/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-server/echo-server.pro ) && $(MAKE) -f Makefile benchmark
sub-echo-client-benchmark:
	@test -d echo-client/ || mkdir -p echo-client/
	cd echo-client/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-client/echo-client.pro ) && $(MAKE) -f Makefile benchmark
benchmark: sub-echo-server-benchmark sub-echo-client-benchmark
install:install_subtargets  FORCE

uninstall: uninstall_subtargets FORCE

FORCE:

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: sub-echo-server-distdir sub-echo-client-distdir FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qmake_use.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf echo-client-server.pro $(DISTDIR)/

sub-echo-server-distdir: FORCE
	@test -d echo-server/ || mkdir -p echo-server/
	cd echo-server/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-server/echo-server.pro ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/echo-server

sub-echo-client-distdir: FORCE
	@test -d echo-client/ || mkdir -p echo-client/
	cd echo-client/ && ( test -e Makefile || $(QMAKE) -o Makefile /home/yjein/gilgil/echo-client-server/echo-client/echo-client.pro ) && $(MAKE) -e -f Makefile distdir DISTDIR=$(DISTDIR)/echo-client

