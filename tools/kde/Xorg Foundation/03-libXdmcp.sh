#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libXdmcp-1.1.5"
TAR="$PKG.tar.xz"
URL="https://www.x.org/pub/individual/lib/$TAR"

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
./configure $XORG_CONFIG --docdir='${datadir}'/doc/libXdmcp-1.1.5 || err "configure failed"
make -j$(nproc) || err "make failed"

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
echo -e "  Libreria:   ${GREEN}libXdmcp.so${NC}"
echo -e "  Ubicacion:  ${BLUE}$XORG_PREFIX/lib/${NC}"
echo ""
echo -e "  Proposito: Implementa el X Display Manager Control Protocol."
echo -e "  Permite a los clientes interactuar con el display manager."
echo ""
