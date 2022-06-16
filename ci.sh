#!/bin/bash

set -euxo pipefail

rustup toolchain install nightly-2022-06-10 --component rust-src
cargo +nightly-2022-06-10 build -Zbuild-std=core --target avr-specs/avr-atmega328p.json

cargo build
cargo build --target thumbv6m-none-eabi
cargo build --target thumbv7em-none-eabi
cargo build --target riscv32imc-unknown-none-elf
cargo build --target riscv32imac-unknown-none-elf
