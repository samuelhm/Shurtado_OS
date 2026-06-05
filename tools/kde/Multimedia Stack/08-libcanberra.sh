#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libcanberra-0.30"
TAR="$PKG.tar.xz"
URL="https://0pointer.de/lennart/projects/libcanberra/$TAR"
PATCH_URL="https://www.linuxfromscratch.org/patches/blfs/svn/libcanberra-0.30-wayland-1.patch"
PATCH_FILE="libcanberra-0.30-wayland-1.patch"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"
[ -f "$PATCH_FILE" ] || wget "$PATCH_URL"
[ -f "$PATCH_FILE" ] || err "download patch failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Applying patch..."
patch -Np1 -i "/sources/$PATCH_FILE" || err "patch failed"

step "Building $PKG..."
./configure --prefix=/usr --disable-oss || err "configure failed"
make || err "make failed"

step "Installing $PKG..."
make docdir=/usr/share/doc/libcanberra-0.30 install || err "make install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libcanberra.so, libcanberra-gtk3.so${NC}"
echo -e "  Programas:  ${GREEN}canberra-boot, canberra-gtk-play${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Sonidos de eventos del escritorio (XDG Sound Theme)."
echo -e "  Requerido por KDE Plasma para sonidos del sistema."
echo ""
