#!/bin/bash

type="$1"

if [ "$type" = "all" ]; then
  cargo build --release --target=x86_64-pc-windows-gnu
  cargo build --release --target=x86_64-unknown-linux-gnu
elif [ "$type" = "offline" ]; then
  cargo build --release --target=x86_64-pc-windows-gnu --offline
  cargo build --release --target=x86_64-unknown-linux-gnu --offline
elif [ "$type" = "check" ]; then
  cargo check --release --all-features --all-targets
else
  cargo build --release --target=x86_64-unknown-linux-gnu
fi
