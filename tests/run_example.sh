#!/usr/bin/env bash
set -e

LLC="../build-llvm/bin/llc"
WRAPPER="../ncfx-clang"

if [ ! -f "$LLC" ]; then
    echo "Error: llc not found at $LLC."
    echo "Please run ./build.sh first from the repository root."
    exit 1
fi

if [ ! -x "$WRAPPER" ]; then
    echo "Error: wrapper not found or not executable at $WRAPPER."
    echo "Please ensure ../ncfx-clang exists and has execute permissions."
    exit 1
fi

echo "Compiling addg.c -> addg.s (one command wrapper)"
"$WRAPPER" -O3 addg.c -o addg.s

echo "Success! Output assembly from C source:"
cat addg.s

echo ""
echo "Compiling test.ll -> test.s (direct llc)"
"$LLC" -march=neocorefx test.ll -o test.s
echo "Success! Output assembly from LLVM IR:"
cat test.s

echo ""
echo "Manual two-step equivalent:"
echo "clang -O3 -S -emit-llvm addg.c -o addg.ll"
echo "$LLC -march=neocorefx addg.ll -o addg.s"
