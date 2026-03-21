build: airdrop

airdrop: airdrop.swift
	swiftc -O -o $@ $<

clean:
	rm -f airdrop
