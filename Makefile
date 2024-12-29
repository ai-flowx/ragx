TYPE=$(type)


.PHONY: FORCE

build: rs-build
.PHONY: build

clean: rs-clean
.PHONY: clean

install: rs-install
.PHONY: install

lint: rs-lint
.PHONY: lint

test: rs-test
.PHONY: test


rs-build: FORCE
	./script/build.sh $(TYPE)

rs-clean: FORCE
	./script/clean.sh

rs-install: FORCE
	./script/install.sh

rs-lint: FORCE
	./script/lint.sh

rs-test: FORCE
	./script/test.sh
