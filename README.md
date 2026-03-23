# NeoCoreFX LLVM Backend

![License: Apache 2.0 with LLVM Exceptions](https://img.shields.io/badge/License-Apache%202.0%20with%20LLVM%20Exceptions-blue.svg)
![Status: Experimental](https://img.shields.io/badge/Status-Experimental-orange)
![LLVM Version](https://img.shields.io/badge/LLVM-b11a603a-green)

This repository contains the out-of-tree LLVM backend for the **NeoCoreFX** custom architecture. It provides an `llc` (static compiler) target capable of lowering LLVM Intermediate Representation (IR) into NeoCoreFX assembly (`.s` files).

## 🚀 Overview & Current Scope

Developing a backend directly within a full LLVM fork can be unwieldy due to the massive repository size. This project is structured as an **"out-of-tree" backend** to keep the repository lightweight (~35 files), focused, and easy to review without tracking 100,000+ LLVM files. 

- **Primary supported workflow**: `C -> LLVM IR -> NeoCoreFX assembly (.s)`.
- **Recommended backend invocation**: `llc -march=neocorefx -filetype=asm`.
- Object/machine-code emission paths (JIT/Object Code) are currently not the focus of this repository.

## 📁 Repository Structure

- `backend/` - The actual LLVM backend implementation (TableGen `.td` files, C++ passes, MC layer, target lowering).
- `patches/` - Small patches applied to LLVM core files (e.g., registering the `neocorefx` triple in `Triple.cpp`/`Triple.h` and tweaking `CMakeLists.txt`).
- `docs/` - Architecture and ABI specifications for the NeoCoreFX processor (e.g., ISA details, microarchitecture, calling conventions).
- `tests/` - Example C code and LLVM IR for testing compilation runs.
- `setup.sh` - Automated script to clone `llvm-project`, checkout a known-good commit, apply patches, and symlink the backend cleanly into the LLVM tree.
- `build.sh` - Helper script to configure CMake and build *only* the LLVM `llc` tool with the NeoCoreFX backend enabled, drastically speeding up compilation.

## 🛠 Getting Started

### 1. Setup the Workspace

Run the setup script to fetch LLVM and apply the out-of-tree structure. 
```bash
./setup.sh
```
What it does:
- Clones the `llvm-project` repository (~2GB-3GB) into the current directory.
- Checks out a specific, known-stable commit of LLVM.
- Applies the patches from `patches/` to make LLVM aware of the `neocorefx` triple.
- Symlinks the `backend/` directory into `llvm-project/llvm/lib/Target/NeoCoreFX`.

*(Note: The downloaded `llvm-project/` is ignored by `.gitignore` to keep your tree clean).*

### 2. Build the Toolchain

Run the build script to compile the compiler:
```bash
./build.sh
```
What it does:
- Creates a CMake build directory (`build-llvm/`).
- Configures Ninja to build **only** the `NeoCoreFX` backend (disabling other targets, docs, and unnecessary tools for a fast compile).
- Compiles `llc` (the LLVM static compiler).

### 3. Usage & Testing

You can use standard clang to generate LLVM IR, and then lower it to NeoCoreFX assembly using our custom `llc` binary.

```bash
# Example: Compile C code to LLVM IR
clang -O3 -S -emit-llvm tests/addg.c -o tests/addg.ll

# Example: Lower LLVM IR to NeoCoreFX Assembly
./build-llvm/bin/llc -march=neocorefx tests/addg.ll -o tests/addg.s

# Check out the resulting assembly!
cat tests/addg.s
```

One-command wrapper (same pipeline internally):

```bash
./ncfx-clang -O3 tests/addg.c -o tests/addg.s
```

`ncfx-clang` is intentionally clang-like for compile-to-assembly workflows:

```bash
# target flag is accepted (consumed by wrapper)
./ncfx-clang --target=neocorefx -O3 -S tests/addg.c -o tests/addg.s

# multiple inputs (writes one .s per input basename)
./ncfx-clang -O2 foo.c bar.c
```

You can also try running the built-in example script:
```bash
cd tests
./run_example.sh
```

## 💡 Advantages of this Structure

- **Lightweight Checkouts:** The repository tracks only the actual backend code, keeping your Git history directly relevant to NeoCoreFX.
- **Easy Upgrades:** If you want to move to a newer version of LLVM in the future, just update `$LLVM_COMMIT` in `setup.sh`, verify the patches still apply, and re-generate `0001-*.patch` if needed.
- **Portability:** Anyone cloning this repository can instantly bootstrap the correct environment with a single `./setup.sh` command.

## 📜 License

This codebase combines project-specific code and bindings tied to LLVM. The LLVM Project itself is under the [Apache License v2.0 with LLVM Exceptions](https://llvm.org/docs/DeveloperPolicy.html#software-license).

See `LICENSE` for more details.
