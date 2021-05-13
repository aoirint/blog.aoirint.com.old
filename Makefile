
.PHONY: serve
serve: install
	miyadaiku-build ./aoirint-blog -sw -p 8180 --rebuild -o ./public

.PHONY: build
build: install
	miyadaiku-build ./aoirint-blog --rebuild -o ./public

.PHONY: resolve
resolve:
	git submodule update --init --recursive

.PHONY: install
install: resolve
	pip3 install -e ./miyadaiku
	pip3 install -e ./aoirint-miyadaiku-theme-blog
