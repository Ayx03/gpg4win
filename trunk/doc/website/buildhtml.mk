# Build html from m4 macrofiles
# $Id$
#
# (c)2005,2006 by Intevation GmbH
# Author(s): Sascha Wilde
#
# This is Free Software licensed under the GPL

# Preprocessor configuration
PP = m4
PPFLAGS = --prefix-builtins

# Build configuration
TARGETS = $(patsubst %.htm4,%.html,$(wildcard *.htm4))
SUBDIRS = 

# Installation configuration
INSTALL_DIR = /tmp/gpg4win-www
ADD_INST_TYPES = *.css *.ico *.php
ADD_INST_DIRS = pix

USER=$(shell grep "svn+ssh://" .svn/entries | sed -e "s/.*svn+ssh:\/\///g" | sed -e "s/@.*//g")

CURDIR=$(shell pwd)

.SUFFIXES: .html .htm4

.htm4.html:
	$(PP) $(PPFLAGS) $< > $@

all: $(TARGETS) subdirs

$(TARGETS): template.m4 template_header.m4 versions.m4

subdirs: $(SUBDIRS)
	@for dir in $^ ; do \
	  $(MAKE) -C $$dir SUBDIRS="" ; \
	done

online: all
	echo "Going to put current contents online for www.gpg4win.org ..."
	rsync -urvP --exclude='.svn' $(ADD_INST_TYPES) $(TARGETS) $(ADD_INST_DIRS) \
      $(USER)@wald.intevation.org:/gpg4win/htdocs/

install: all
	mkdir -p $(INSTALL_DIR) ;\
	cp -uf $(TARGETS) $(INSTALL_DIR) ;\
	cp -uf $(ADD_INST_TYPES) $(INSTALL_DIR)
	cp -urf *$(ADD_INST_DIRS) $(INSTALL_DIR)
	find $(INSTALL_DIR) -name ".svn" | xargs rm -rf

tar: install
	echo $(CURDIR)
	( cd $(INSTALL_DIR) ; tar -czv -f $(CURDIR)/www.gpg4win.org.tar.gz . )
