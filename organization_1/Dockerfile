from rust:latest as wasm_game_of_life

RUN apt-get update && apt-get install -y \
        nodejs npm \
  && rm -rf /var/lib/apt/lists/* \
  && npm install wasm-pack -g \
  && cargo install cargo-generate
