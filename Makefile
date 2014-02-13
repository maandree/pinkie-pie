PREFIX = /usr
BIN = /bin

.PHONY: all
all:

.PHONY: install
install:
	install -d "$(DESTDIR)$(PREFIX)$(BIN)"
	install -m 755 pinkie pinkiepie "$(DESTDIR)$(PREFIX)$(BIN)"

.PHONY: uninstall
uninstall:
	-rm -- "$(DESTDIR)$(PREFIX)$(BIN)/pinkie"
	-rm -- "$(DESTDIR)$(PREFIX)$(BIN)/pinkiepie"

.PHONY: clean
clean:
