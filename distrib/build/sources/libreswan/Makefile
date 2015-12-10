# SmoothWall Build system.
#
# (c) SmoothWall Ltd 2005
#
# This code is distributed under the terms of the GPL v2.

include ../Makefile
include ../Makefile.conf
include ../Makefile.versions

PACKAGE = $(FREESWAN_TYPE)
VERSION = $(FREESWAN_VER)

BASE_URL = http://www.openswan.org/download/

TARBALL = $(FREESWAN_TYPE)-$(VERSION)

#PATCH_FILE1 = setup.in.patch

KNL_SRC = $(SOURCES_DIR)/linux$(KERNEL_TYPE)/linux
MOD_DEST = /lib/modules/$(K_RAW_VERSION)$(KERNEL_TYPE)/kernel/net/ipsec

unpack: $(DIR)/
	@true

CONFIGURE = yes
COMPILE = yes
INSTALL = yes

configure: patch
	@true
	
CFLAGS:=$(CFLAGS) -fno-strict-aliasing
compile: configure
	$(MAKE) $(JOBS) -C $(COMPILE_DIR) V=0 KERNELSRC=$(KNL_SRC) WERROR_CFLAGS="" base
	$(MAKE) $(JOBS) -C $(COMPILE_DIR) V=0 KERNELSRC=$(KNL_SRC) WERROR_CFLAGS="" module

install: compile
	mkdir -p $(PKG_ROOT)${PKG_DIR}
	tput smso;echo "INSTALL";tput rmso;sleep 1
	$(MAKE) -C $(COMPILE_DIR) DESTDIR=$(PKG_ROOT) KERNELSRC=$(KNL_SRC) install-base
	$(MAKE) -C $(COMPILE_DIR) DESTDIR=$(PKG_ROOT) KERNELSRC=$(KNL_SRC) module_install
	rm -rf $(PKG_ROOT)$(PKG_DIR)/rc* $(PKG_ROOT)$(PKG_DIR)/etc/ipsec.conf $(PKG_ROOT)/var

include ../Makefile.rules
