#!/bin/bash

# Prefer bundled pico-sdk
if [[ -d ./module/pico-sdk ]]; then
	export PICO_SDK_PATH="$(realpath ./module/pico-sdk)"
else
	export PICO_SDK_PATH
fi

# Is Ninja available
if command -v ninja > /dev/null 2>&1; then
	CUSTOM_OPTS="-G Ninja"
fi

mkdir -p ./build && cd ./build && cmake $CUSTOM_OPTS .. && cmake --build . -j$(nproc)
