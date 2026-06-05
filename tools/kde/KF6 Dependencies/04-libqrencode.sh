#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libqrencode-4.1.1"
TAR="$PKG.tar.gz"
URL="https://github.com/fukuchi/libqrencode/archive/v4.1.1/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building $PKG..."
sh autogen.sh             || err "autogen failed"
./configure --prefix=/usr || err "configure failed"
make                      || err "make failed"

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
echo -e "  Libs:       ${BLUE}libqrencode.so${NC}"
echo -e "  Tool:       ${BLUE}qrencode${NC}"
echo -e "  Fuente:     ${BLUE}docs/blfs/general/libqrencode.md${NC}"
echo ""
