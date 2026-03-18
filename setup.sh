#!/usr/bin/env bash
set -e

LLVM_REPO="https://github.com/llvm/llvm-project.git"
LLVM_COMMIT="b11a603a45e11cad6b22840c2f780c66b5635f58"
LLVM_DIR="llvm-project"
PATCH_DIR="patches"
BACKEND_DIR="backend"

echo "Setting up NeoCoreFX LLVM workspace..."

# 1. Clone LLVM if it doesn't exist
if [ ! -d "$LLVM_DIR" ]; then
    echo "Cloning llvm-project..."
    git clone $LLVM_REPO $LLVM_DIR
else
    echo "llvm-project already exists."
fi

cd $LLVM_DIR

# 2. Checkout to a known good state and clean working tree
echo "Checking out known good commit: $LLVM_COMMIT..."
git fetch origin $LLVM_COMMIT || true
git reset --hard $LLVM_COMMIT
git clean -fd

# 3. Apply patches to the LLVM infrastructure
echo "Applying patches..."
for patch in ../$PATCH_DIR/*.patch; do
    if [ -f "$patch" ]; then
        echo "Applying $patch"
        git apply "$patch"
    fi
done

# 4. Symlink the backend into the LLVM tree
echo "Linking NeoCoreFX backend..."
TARGET_DIR="llvm/lib/Target/NeoCoreFX"
if [ -L "$TARGET_DIR" ] || [ -d "$TARGET_DIR" ]; then
    rm -rf "$TARGET_DIR"
fi
ln -s "../../../../../$BACKEND_DIR" "$TARGET_DIR"

echo "Setup complete! Run \`./build.sh\` to compile llc."
