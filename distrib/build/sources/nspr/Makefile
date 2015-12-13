# SmoothWall Build system.
#
# (c) SmoothWall Ltd 2005
#
# This code is distributed under the terms of the GPL v2.

include ../Makefile.conf

PACKAGE = nspr
VERSION = 4.11

BASE_URL = https://ftp.mozilla.org/pub/mozilla.org/$(PACKAGE)/releases/v$(VERSION)/src

DIR = $(PACKAGE)-$(VERSION)/nspr

CONFIG_OPTS = --prefix=$(PKG_DIR) \
	      --with-mozilla \
	      --with-pthreads
ifeq ($(BITS_64), yes)
  CONFIG_OPTS += --enable-64-bit
endif

CONFIGURE = yes
configure: patch
	cd $(COMPILE_DIR); \
	  sed -ri 's#^(RELEASE_BINS =).*#\1#' pr/src/misc/Makefile.in; \
	  sed -i 's#$$(LIBRARY) ##' config/rules.mk; \
	  ./configure $(CONFIG_OPTS)

include ../Makefile.rules
