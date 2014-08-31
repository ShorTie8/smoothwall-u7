# SmoothWall Build system.
#
# (c) SmoothWall Ltd 2005
#
# This code is distributed under the terms of the GPL v2.

include ../Makefile.conf

PACKAGE = daq
VERSION = 2.0.2

BASE_URL = https://www.snort.org/downloads/snort/

DOWNLOAD = yes

download:
	@if [ ! -e ../../downloads/$(TARBALL)$(EXTENSION).done ]; then \
	  wget --no-check-certificate -O ../../downloads/$(TARBALL)$(EXTENSION) $(BASE_URL)$(TARBALL)$(EXTENSION); \
	  if [ $$? -eq 0 ]; then \
	    touch ../../downloads/$(TARBALL)$(EXTENSION).done; \
	  fi; \
	fi

include ../Makefile.rules
