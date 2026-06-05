#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libevdev-1.13.6"
TAR="$PKG.tar.xz"
URL="https://www.freedesktop.org/software/libevdev/$TAR"

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
      -D documentation=disabled \
      -D tests=disabled || err "meson setup failed"
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
echo -e "  Libreria:   ${GREEN}libevdev.so${NC}"
echo -e "  Programas:  ${GREEN}libevdev-tweak-device${NC}, ${GREEN}mouse-dpi-tool${NC}"
echo -e "              ${GREEN}touchpad-edge-detector${NC}"
echo -e "  Ubicacion:  ${BLUE}$XORG_PREFIX/lib/${NC}"
echo ""
echo -e "  Proposito: Funciones comunes para drivers de entrada Xorg."
echo -e "  Manejo de eventos de teclado, raton y touchpad."
echo ""
