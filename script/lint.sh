#!/bin/bash

build=$(date +%FT%T%z)

# rustup update --no-self-update stable
# rustup component add rustfmt
cargo fmt --all

# rustup update --no-self-update stable
# rustup component add clippy
build=$build cargo clippy --all-features --all-targets -- -A clippy::all

# rustup update --no-self-update stable
# cargo install cargo-hack --debug
#build=$build cargo hack check --all-features --all-targets
