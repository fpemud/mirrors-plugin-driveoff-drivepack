prefix=/usr

all:

clean:
	fixme

install:
	install -d -m 0755 "$(DESTDIR)/$(prefix)/lib64/mirrors/plugins"
	cp -r driveoff-drivepack "$(DESTDIR)/$(prefix)/lib64/mirrors"
	find "$(DESTDIR)/$(prefix)/lib64/mirrors/driveoff-drivepack" -type f | xargs chmod 644
	find "$(DESTDIR)/$(prefix)/lib64/mirrors/driveoff-drivepack" -type d | xargs chmod 755
	find "$(DESTDIR)/$(prefix)/lib64/mirrors/driveoff-drivepack" -name "*.py" | xargs chmod 755

uninstall:
	rm -rf "$(DESTDIR)/$(prefix)/lib64/mirrors/driveoff-drivepack"

.PHONY: all clean install uninstall
