#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libdmtx-0.7.8"
TAR="$PKG.tar.gz"
URL="https://github.com/dmtx/libdmtx/archive/v0.7.8/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Fixing cmake version requirement..."
sed -i 's/3.5/3.10/' CMakeLists.txt

step "Building $PKG..."
mkdir build && cd build

cmake -D CMAKE_INSTALL_PREFIX=/usr .. || err "cmake failed"
make || err "make failed"

step "Installing $PKG..."
make install || err "make install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Prefijo:    ${BLUE}/usr${NC}"
echo -e "  Libs:       ${BLUE}libdmtx.so${NC}"
echo -e "  Fuente:     ${BLUE}docs/blfs/kde/libdmtx.md${NC}"
echo ""
