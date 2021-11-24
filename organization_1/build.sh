#!/usr/bin/env bash

set -euo pipefail

cat <<EOF | docker build -t organization1builder -
from rust:latest as wasm_game_of_life

RUN apt-get update && apt-get install -y \
        nodejs npm \
  && rm -rf /var/lib/apt/lists/* \
  && npm install wasm-pack -g \
  && cargo install cargo-generate
EOF

docker run --rm \
    -v "$(pwd)/Rust_Source_Code:/src" \
    -v "$(pwd)/pkg:/src/pkg" \
    --workdir "/src" \
    organization1builder \
    wasm-pack build
