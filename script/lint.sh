#!/bin/bash

# rustup update --no-self-update stable
# rustup component add rustfmt
cargo fmt --all

# rustup update --no-self-update stable
# rustup component add clippy
cargo clippy --all-features --all-targets -- -A clippy::all

# rustup update --no-self-update stable
# cargo install cargo-hack --debug
# cargo hack check --all-features --all-targets
