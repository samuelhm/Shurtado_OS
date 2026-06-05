#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libepoxy-1.5.10"
TAR="$PKG.tar.xz"
URL="https://download.gnome.org/sources/libepoxy/1.5/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading libepoxy 1.5.10..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting libepoxy..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building libepoxy..."
mkdir build && cd build
meson setup --prefix=/usr --buildtype=release .. || err "meson setup failed"
ninja || err "ninja failed"

step "Installing libepoxy..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  libepoxy 1.5.10 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Libreria:   ${GREEN}libepoxy.so${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Gestion de punteros de funcion OpenGL."
echo -e "  Abstrae las diferencias entre extensiones GL."
echo ""
