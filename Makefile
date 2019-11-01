include pkgfiles.mk

package = packages
distfiles = Makefile pkgfiles.mk README

prefix = /usr/local
datarootdir = $(prefix)/share
datadir = $(datarootdir)
pkgrepodir = $(datadir)/pkgrepo

.PHONY: all check dist clean distclean install uninstall

all:

check:

dist:
	rm -R -f $(package) $(package).tar $(package).tar.gz
	mkdir $(package)
	cp -f $(distfiles) $(package)
	$(MAKE) DESTDIR=$(package)/pkg PKGVER=1 copypkg
	tar -c -f $(package).tar $(package)
	gzip $(package).tar
	rm -R -f $(package) $(package).tar

clean:
	rm -R -f $(package) $(package).tar $(package).tar.gz

distclean: clean

install: all
	mkdir -p $(DESTDIR)$(pkgrepodir)/pkg
	$(MAKE) DESTDIR=$(DESTDIR)$(pkgrepodir)/pkg copypkg

uninstall:
	cd $(DESTDIR)$(pkgrepodir)/pkg; rm -f $(pkgfiles)

.PHONY: copypkg $(pkgfiles)

copypkg: $(pkgfiles)

$(pkgfiles):
	test $(DESTDIR)
	test $(PKGVER)
	mkdir -p $(DESTDIR)/$$(dirname $@)
	sed 's/^pkgver=.*/pkgver=$(PKGVER)/' pkg/$@ > $(DESTDIR)/$@
