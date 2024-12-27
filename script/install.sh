#!/bin/bash

# Update for stable
rustup update --no-self-update stable

# Install for coverage
cargo install cargo-tarpaulin

# Install for lint
cargo install cargo-hack --debug
rustup component add clippy
rustup component add rustfmt

# Install for upx
sudo apt update -y
sudo apt install -y upx

# Install for Windows
# rustc --print target-list
sudo apt update -y
sudo apt install -y mingw-w64
rustup target add x86_64-pc-windows-gnu
rustup toolchain install stable-x86_64-pc-windows-gnu

# Install for Linux
# rustc --print target-list
rustup target add x86_64-unknown-linux-gnu
rustup toolchain install stable-x86_64-unknown-linux-gnu
