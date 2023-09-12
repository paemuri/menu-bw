PREFIX ?= /usr
DOCDIR ?= $(PREFIX)/share/doc/menu-bw

all:
	@echo Run \'make install\' to install menu-bw.

install:
	@mkdir -p $(DESTDIR)$(DOCDIR)
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p README.md $(DESTDIR)$(DOCDIR)
	@cp -p menu-bw $(DESTDIR)$(PREFIX)/bin/menu-bw
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/menu-bw

uninstall:
	@rm -rf $(DESTDIR)$(DOCDIR)
	@rm -rf $(DESTDIR)$(PREFIX)/bin/menu-bw

