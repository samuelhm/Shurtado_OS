#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libical-4.0.2"
TAR="$PKG.tar.gz"
URL="https://github.com/libical/libical/releases/download/v4.0.2/$TAR"

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

cmake -D CMAKE_INSTALL_PREFIX=/usr           \
      -D CMAKE_BUILD_TYPE=Release            \
      -D LIBICAL_STATIC=NO                   \
      -D LIBICAL_BUILD_DOCS=false            \
      -D LIBICAL_GLIB_VAPI=true              \
      -D LIBICAL_JAVA_BINDINGS=OFF           \
      -D LIBICAL_GOBJECT_INTROSPECTION=true  \
      .. || err "cmake failed"

make -j1 || err "make failed"

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
echo -e "  Libs:       ${BLUE}libical.so, libical-glib.so, libicalss.so${NC}"
echo -e "  Fuente:     ${BLUE}docs/blfs/general/libical.md${NC}"
echo ""
