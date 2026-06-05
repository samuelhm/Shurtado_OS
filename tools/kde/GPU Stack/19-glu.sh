#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="glu-9.0.3"
TAR="$PKG.tar.xz"
URL="https://archive.mesa3d.org/glu/$TAR"

: "${XORG_PREFIX:=/usr}"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading GLU 9.0.3..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting GLU..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building GLU..."
mkdir build && cd build
meson setup ..              \
      --prefix="$XORG_PREFIX" \
      --buildtype=release   \
      -D gl_provider=gl     \
      -D default_library=shared || err "meson setup failed"
ninja || err "ninja failed"

step "Installing GLU..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  GLU 9.0.3 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Libreria:   ${GREEN}libGLU.so${NC}"
echo -e "  Ubicacion:  ${BLUE}$XORG_PREFIX/lib/${NC}"
echo ""
echo -e "  Proposito: Mesa OpenGL Utility Library."
echo -e "  Funciones auxiliares para OpenGL (tesselacion, mipmaps)."
echo ""
