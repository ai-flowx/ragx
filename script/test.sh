#!/bin/bash

build=$(date +%FT%T%z)

# rustup update --no-self-update stable
build=$build cargo test --all-features --all-targets -- --nocapture
