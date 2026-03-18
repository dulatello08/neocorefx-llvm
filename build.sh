#!/usr/bin/env bash
set -e

BUILD_DIR="build-llvm"
LLVM_DIR="llvm-project/llvm"

mkdir -p "$BUILD_DIR"
cd "$BUILD_DIR"

cmake -G Ninja ../$LLVM_DIR \
  -DCMAKE_BUILD_TYPE=Debug \
  -DLLVM_TARGETS_TO_BUILD="NeoCoreFX" \
  -DLLVM_ENABLE_ASSERTIONS=ON \
  -DLLVM_ENABLE_DUMP=ON

ninja llc
