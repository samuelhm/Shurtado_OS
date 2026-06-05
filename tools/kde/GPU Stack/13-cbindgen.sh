#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="cbindgen-0.29.3"
TAR="$PKG.tar.gz"
URL="https://github.com/mozilla/cbindgen/archive/v0.29.3/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"
command -v cargo >/dev/null 2>&1 || err "cargo not found. Install Rust first."

step "Downloading cbindgen 0.29.3..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting cbindgen..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building cbindgen..."
cargo build --release || err "cargo build failed"

step "Installing cbindgen..."
install -Dm755 target/release/cbindgen /usr/bin/ || err "install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  cbindgen 0.29.3 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Programa:   ${GREEN}cbindgen${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/${NC}"
echo ""
echo -e "  Proposito: Genera bindings C desde codigo Rust."
echo -e "  Requerido por el driver Nouveau Vulkan de Mesa."
echo ""
