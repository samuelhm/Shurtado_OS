#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libwebp-1.6.0"
TAR="$PKG.tar.gz"
URL="https://storage.googleapis.com/downloads.webmproject.org/releases/webp/$TAR"

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
./configure --prefix=/usr           \
            --enable-libwebpmux     \
            --enable-libwebpdemux   \
            --enable-libwebpdecoder \
            --enable-libwebpextras  \
            --enable-swap-16bit-csp \
            --disable-static        || err "configure failed"
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
echo -e "  Librerias:  ${GREEN}libwebp.so, libwebpmux.so, libwebpdemux.so,${NC}"
echo -e "              ${GREEN}libwebpdecoder.so, libsharpyuv.so${NC}"
echo -e "  Programas:  ${GREEN}cwebp, dwebp, gif2webp, img2webp, vwebp${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Codificacion/decodificacion de imagenes WebP."
echo -e "  Requerido por Qt, GDK-Pixbuf y apps graficas."
echo ""
