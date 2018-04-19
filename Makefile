shell:
	rebar3 shell

zip:
	mkdir -p _build/HackathonBlockchain
	cp -r src _build/HackathonBlockchain
	cp -r src .git .gitignore Makefile rebar.config _build/HackathonBlockchain
	cd _build && zip -1mrq HackathonBlockchain HackathonBlockchain
