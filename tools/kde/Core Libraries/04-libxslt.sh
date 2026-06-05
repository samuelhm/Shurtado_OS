#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libxslt-1.1.45"
TAR="$PKG.tar.xz"
URL="https://download.gnome.org/sources/libxslt/1.1/$TAR"

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
./configure --prefix=/usr    \
            --disable-static \
            --without-python \
            --docdir=/usr/share/doc/libxslt-1.1.45 || err "configure failed"
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
echo -e "  Librerias:  ${GREEN}libxslt.so, libexslt.so${NC}"
echo -e "  Programas:  ${GREEN}xsltproc, xslt-config${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Transformaciones XSLT para XML."
echo -e "  Requerido por GLib y otras libs."
echo ""
