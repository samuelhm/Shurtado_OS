#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG_SRC="llvm-project-22.1.0.src"
PKG="libclc-22.1.0"
TAR="$PKG_SRC.tar.xz"
URL="https://github.com/llvm/llvm-project/releases/download/llvmorg-22.1.0/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading libclc (from LLVM 22.1.0 sources)..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting LLVM sources for libclc..."
rm -rf "$PKG_SRC"
tar -xf "$TAR"
cd "$PKG_SRC"

step "Building libclc..."
mkdir libclc/build && cd libclc/build
cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -G Ninja .. || err "cmake failed"
ninja || err "ninja failed"

step "Installing libclc..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG_SRC"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  libclc 22.1.0 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Ubicacion:  ${BLUE}/usr/share/clc/${NC}"
echo ""
echo -e "  Proposito: Implementacion de OpenCL C para LLVM."
echo -e "  Requerido por el driver iris de Mesa."
echo ""
