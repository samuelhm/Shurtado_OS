#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libinput-1.31.2"
TAR="$PKG.tar.gz"
URL="https://gitlab.freedesktop.org/libinput/libinput/-/archive/1.31.2/$TAR"

: "${XORG_PREFIX:=/usr}"
: "${XORG_CONFIG:=--prefix=$XORG_PREFIX --sysconfdir=/etc --localstatedir=/var --disable-static}"

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
meson setup .. \
      --prefix="$XORG_PREFIX" \
      --buildtype=release \
      -D debug-gui=false \
      -D tests=false \
      -D libwacom=false \
      -D udev-dir=/usr/lib/udev || err "meson setup failed"
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
echo -e "  Libreria:   ${GREEN}libinput.so${NC}"
echo -e "  Programa:   ${GREEN}libinput${NC}"
echo -e "  Ubicacion:  ${BLUE}$XORG_PREFIX/lib/${NC}"
echo -e "  Udev dir:   ${BLUE}/usr/lib/udev/${NC}"
echo ""
echo -e "  Proposito: Libreria de entrada para Wayland y Xorg."
echo -e "  Maneja teclado, raton, touchpad, touchscreen y tabletas."
echo ""
