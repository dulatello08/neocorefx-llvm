#!/usr/bin/env bash
set -e

LLC="../build-llvm/bin/llc"

if [ ! -f "$LLC" ]; then
    echo "Error: llc not found at $LLC."
    echo "Please run ./build.sh first from the repository root."
    exit 1
fi

echo "Compiling test.ll -> test.s"
$LLC -march=neocorefx test.ll -o test.s

echo "Success! Output assembly:"
cat test.s

echo ""
echo "Note: To compile C code like addg.c, run:"
echo "clang -O3 -S -emit-llvm addg.c -o addg.ll"
echo "Then lower it with:"
echo "$LLC -march=neocorefx addg.ll -o addg.s"
