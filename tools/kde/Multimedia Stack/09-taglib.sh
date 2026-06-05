#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="taglib-2.3"
TAR="$PKG.tar.gz"
URL="https://taglib.org/releases/$TAR"

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
cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_SHARED_LIBS=ON      \
      .. || err "cmake failed"
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
echo -e "  Librerias:  ${GREEN}libtag.so, libtag_c.so${NC}"
echo -e "  Programa:   ${GREEN}taglib-config${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Lectura/escritura de metadatos de audio."
echo -e "  Requerido por VLC y apps multimedia."
echo ""
