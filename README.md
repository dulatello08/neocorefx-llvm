# NeoCoreFX LLVM Backend

This repository contains the out-of-tree LLVM backend for the NeoCoreFX architecture.

## Repository Structure

Managing a full fork of `llvm-project` can be unwieldy due to its massive size. This project is structured as an "out-of-tree" backend to keep the repository small and focused purely on NeoCoreFX.

- `backend/` - The actual LLVM backend implementation (TableGen files, C++ passes, MC layer).
- `patches/` - Small patches applied to LLVM core files (e.g., adding the triple to `Triple.cpp`/`Triple.h` and adding to `LLVM_ALL_TARGETS` in `CMakeLists.txt`).
- `docs/` - Architecture and ABI specifications for NeoCoreFX.
- `setup.sh` - Script to clone `llvm-project`, checkout a known-good commit, apply patches, and symlink the backend into the LLVM tree.
- `build.sh` - Example script to configure and build the LLVM `llc` tool with only the NeoCoreFX backend enabled.

## Getting Started

1. **Setup the Workspace:** Run `./setup.sh`
   - This script will clone the `llvm-project` repository (~2GB-3GB) into the current directory. (Note: `llvm-project/` is ignored by `.gitignore`).
   - It hooks into a known, stable commit of LLVM.
   - It will apply the patches from `patches/` to the LLVM infrastructure to make LLVM aware of the `neocorefx` triple.
   - Finally, it symlinks the `backend/` directory into `llvm-project/llvm/lib/Target/NeoCoreFX`.

2. **Build the Toolchain:** Run `./build.sh`
   - This sets up a CMake build directory (`build-llvm/`) configured to build only the `NeoCoreFX` backend, drastically speeding up compilation.
   - It invokes Ninja to build `llc` (the LLVM static compiler).

3. **Development Cycle:**
   - Modify the TableGen (`.td`) and C++ files in `backend/`.
   - Run `./build.sh` (or `cd build-llvm && ninja llc`) to compile your changes.
   - Run `build-llvm/bin/llc -march=neocorefx input.ll -o output.s` to test CodeGen.

## Advantages

- **Lightweight Checkouts:** Your repository only tracks your actual backend code (~35 files), rather than the 100,000+ files in `llvm-project`.
- **Easy Updating:** If you want to move to a newer version of LLVM, update `$LLVM_COMMIT` and `$LLVM_REPO` in `setup.sh`, verify the patches still apply, and re-generate `0001-*.patch` if needed.
- **Portability:** Anyone cloning this repository can quickly bootstrap the correct environment with a single `./setup.sh` command.
