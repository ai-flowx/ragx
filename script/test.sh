#!/bin/bash

# rustup update --no-self-update stable
cargo test --all-features --all-targets -- --nocapture
