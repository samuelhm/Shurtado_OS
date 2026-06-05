#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libmng-2.0.3"
TAR="$PKG.tar.xz"
URL="https://downloads.sourceforge.net/libmng/$TAR"

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
./configure --prefix=/usr --disable-static || err "configure failed"
make || err "make failed"

step "Installing $PKG..."
make install || err "make install failed"
install -v -m755 -d        /usr/share/doc/libmng-2.0.3
install -v -m644 doc/*.txt /usr/share/doc/libmng-2.0.3

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Libreria:   ${GREEN}libmng.so${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Lectura/escritura de imagenes MNG (animacion PNG)."
echo -e "  Requerido por Qt para soporte MNG."
echo ""
