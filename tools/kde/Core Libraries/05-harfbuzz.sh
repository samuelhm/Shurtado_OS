#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="harfbuzz-14.2.1"
TAR="$PKG.tar.xz"
URL="https://github.com/harfbuzz/harfbuzz/releases/download/14.2.1/$TAR"

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
mkdir build && cd build
meson setup ..             \
      --prefix=/usr        \
      --buildtype=release  \
      -D graphite2=enabled || err "meson setup failed"
ninja || err "ninja failed"

step "Installing $PKG..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libharfbuzz.so, libharfbuzz-subset.so,${NC}"
echo -e "              ${GREEN}libharfbuzz-icu.so, libharfbuzz-gobject.so${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Motor de text shaping OpenType."
echo -e "  Requerido por Qt, Pango, y apps graficas."
echo ""
