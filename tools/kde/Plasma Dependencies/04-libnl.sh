#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libnl-3.12.0"
TAR="$PKG.tar.gz"
URL="https://github.com/thom311/libnl/releases/download/libnl3_12_0/$TAR"

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
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  || err "configure failed"
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
echo -e "  Librerias:  ${GREEN}libnl-3.so, libnl-genl-3.so, libnl-route-3.so${NC}"
echo -e "  Programas:  ${GREEN}nl-link-list, nl-class-add, genl-ctrl-list, ...${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib${NC}"
echo ""
echo -e "  Proposito: APIs de protocolo netlink para interfaces del kernel."
echo -e "  Requerido por KDE Plasma (network management)."
echo ""
