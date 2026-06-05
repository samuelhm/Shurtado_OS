#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="rust-bindgen-0.72.1"
TAR="$PKG.tar.gz"
URL="https://github.com/rust-lang/rust-bindgen/archive/refs/tags/v0.72.1/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"
command -v cargo >/dev/null 2>&1 || err "cargo not found. Install Rust first."
command -v clang >/dev/null 2>&1 || err "clang not found. Install LLVM with Clang first."

step "Downloading rust-bindgen 0.72.1..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting rust-bindgen..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building rust-bindgen..."
cargo build --release || err "cargo build failed"

step "Installing rust-bindgen..."
install -v -m755 target/release/bindgen /usr/bin || err "install failed"

mkdir -p /usr/share/bash-completion/completions /usr/share/zsh/site-functions 2>/dev/null
bindgen --generate-shell-completions bash > /usr/share/bash-completion/completions/bindgen 2>/dev/null || true
bindgen --generate-shell-completions zsh  > /usr/share/zsh/site-functions/_bindgen 2>/dev/null || true

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  rust-bindgen 0.72.1 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Programa:   ${GREEN}bindgen${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/${NC}"
echo ""
echo -e "  Proposito: Genera bindings Rust desde headers C/C++."
echo -e "  Requerido por el driver Nouveau Vulkan de Mesa."
echo ""
