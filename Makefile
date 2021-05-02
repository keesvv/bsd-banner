all: compile
install: install-bin install-man

compile:
	gcc -o banner banner.c

install-bin:
	install -Dm755 banner /usr/local/bin/banner

install-man:
	install -Dm644 banner.6 /usr/local/share/man/man6/banner.6
	gzip /usr/local/share/man/man6/banner.6

clean:
	rm banner
