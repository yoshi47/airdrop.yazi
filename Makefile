PREFIX ?= $(HOME)/.local

build: airdrop

airdrop: airdrop.swift
	swiftc -O -o $@ $<

install: airdrop
	mkdir -p $(PREFIX)/bin
	cp airdrop $(PREFIX)/bin/

clean:
	rm -f airdrop

uninstall:
	rm -f $(PREFIX)/bin/airdrop
