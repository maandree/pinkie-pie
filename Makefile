PREFIX=/usr
BIN=/bin

install:
	install -d "${DESTDIR}$(PREFIX)$(BIN)"
	install -m 755 pinkie pinkiepie "${DESTDIR}$(PREFIX)$(BIN)"

uninstall:
	-rm -- "${DESTDIR}$(PREFIX)$(BIN)/pinkie"
	-rm -- "${DESTDIR}$(PREFIX)$(BIN)/pinkiepie"
