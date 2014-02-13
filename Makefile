PREFIX = /usr
DATA = /share
BIN = /bin
PKGNAME = pinkie-pie


.PHONY: all doc info
all: doc
doc: info
info: pinkie-pie.info


pinkie-pie.info: info/pinkie-pie.texinfo
	makeinfo "$<"


.PHONY: install
install: install-command install-info

.PHONY: install-command
install-command:
	install -d -- "$(DESTDIR)$(PREFIX)$(BIN)"
	install -m755 -- pinkie pinkiepie "$(DESTDIR)$(PREFIX)$(BIN)"

.PHONY: install-info
install-info: pinkie-pie.info
	install -d -- "$(DESTDIR)$(PREFIX)$(DATA)/info"
	install -m644 pinkie-pie.info -- "$(DESTDIR)$(PREFIX)$(DATA)/info/$(PKGNAME).info"


.PHONY: uninstall
uninstall:
	-rm -- "$(DESTDIR)$(PREFIX)$(BIN)/pinkie"
	-rm -- "$(DESTDIR)$(PREFIX)$(BIN)/pinkiepie"
	-rm -- "$(DESTDIR)$(PREFIX)$(DATA)/info/$(PKGNAME).info"


.PHONY: clean
clean:
	-rm -- pinkie-pie.info

