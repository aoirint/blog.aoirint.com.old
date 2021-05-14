
.PHONY: serve
serve: install
	miyadaiku-build ./aoirint-blog -sw -p 8180 --rebuild -o ./public

.PHONY: build
build: init install
	miyadaiku-build ./aoirint-blog --rebuild -o ./public

.PHONY: install
install:
	pip3 install -e ./miyadaiku
	pip3 install -e ./aoirint-miyadaiku-theme-blog

.PHONY: init
init:
	git submodule update --init --recursive
