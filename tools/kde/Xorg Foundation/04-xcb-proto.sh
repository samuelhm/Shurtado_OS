#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="xcb-proto-1.17.0"
TAR="$PKG.tar.xz"
URL="https://xorg.freedesktop.org/archive/individual/proto/$TAR"

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
PYTHON=python3 ./configure $XORG_CONFIG || err "configure failed"

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
echo -e "  Ubicacion:  ${BLUE}$XORG_PREFIX/share/xcb${NC}"
echo -e "              ${BLUE}$XORG_PREFIX/lib/python*/site-packages/xcbgen${NC}"
echo ""
echo -e "  Proposito: Descripciones XML-XCB del protocolo que libxcb"
echo -e "  usa para generar su codigo y API."
echo ""
