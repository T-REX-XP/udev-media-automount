.PHONY: install
install:
	install -D media-automount $(DESTDIR)$(PREFIX)/bin/media-automount
	install -D umount_dmenu $(DESTDIR)$(PREFIX)/bin/umount_dmenu
	install -Dm644 media-automount.rules /etc/udev/rules.d/99-media-automount.rules
	install -Dm644 media-automount@.service /usr/lib/systemd/system/media-automount@.service
	install -Dm644 gpio.service /usr/lib/systemd/system/gpio.service
	install -d $(DESTDIR)/etc/media-automount.d
	install -Cm644 media-automount.d/* $(DESTDIR)/etc/media-automount.d/
	install -Dm644 gpio_export.sh /usr/local/bin/gpio_export.sh
        install -Dm644 gpio.service /usr/lib/systemd/system/gpio.service
