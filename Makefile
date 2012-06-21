install:
	install -d "${DESTDIR}/usr/bin"
	install -m 755 pinkie pinkiepie "${DESTDIR}/usr/bin"

uninstall:
	unlink "${DESTDIR}/usr/bin/pinkie"
	unlink "${DESTDIR}/usr/bin/pinkiepie"
