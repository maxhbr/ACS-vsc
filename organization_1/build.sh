#!/usr/bin/env bash

cat Dockerfile | docker build -t organization1builder -

docker run --rm \
    -v "$(pwd)/Rust_Source_Code:/src" \
    -v "$(pwd)/out:/src/pkg" \
    --workdir "/src" \
    organization1builder \
    wasm-pack build
