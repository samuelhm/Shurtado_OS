#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libxcb-1.17.0"
TAR="$PKG.tar.xz"
URL="https://xorg.freedesktop.org/archive/individual/lib/$TAR"

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
./configure $XORG_CONFIG \
            --without-doxygen \
            --docdir='${datadir}'/doc/libxcb-1.17.0 || err "configure failed"
LC_ALL=en_US.UTF-8 make -j$(nproc) || err "make failed"

step "Installing $PKG..."
make install || err "make install failed"
chown -Rv root:root "$XORG_PREFIX/share/doc/libxcb-1.17.0" 2>/dev/null || true

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libxcb.so${NC} (+25 extensiones)"
echo -e "  Ubicacion:  ${BLUE}$XORG_PREFIX/lib/${NC}"
echo ""
echo -e "  Proposito: Interfaz al protocolo X Window System."
echo -e "  Reemplaza a Xlib como capa de transporte."
echo ""
