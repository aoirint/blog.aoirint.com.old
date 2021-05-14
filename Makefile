
.PHONY: serve
serve: install
	miyadaiku-build ./aoirint-blog -sw -p 8180 --rebuild -o ./public

.PHONY: build
build: clean install
	miyadaiku-build ./aoirint-blog --rebuild -o ./public

.PHONY: install
install:
	pip3 install -e ./miyadaiku
	pip3 install -e ./aoirint-miyadaiku-theme-blog

.PHONY: clean
clean:
	git submodule update --init --recursive
