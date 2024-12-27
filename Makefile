# Config

VERSION=$(version)


# Build

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


# Non-PHONY targets (real files)

rs-build: FORCE
	./script/build.sh $(VERSION)

rs-clean: FORCE
	./script/clean.sh

rs-install: FORCE
	./script/install.sh

rs-lint: FORCE
	./script/lint.sh

rs-test: FORCE
	./script/test.sh
