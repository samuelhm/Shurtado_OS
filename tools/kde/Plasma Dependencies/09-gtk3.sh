#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="gtk-3.24.52"
TAR="$PKG.tar.xz"
URL="https://download.gnome.org/sources/gtk/3.24/$TAR"

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
meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D man=true         \
      -D broadway_backend=true || err "meson setup failed"
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
echo -e "  Librerias:  ${GREEN}libgtk-3.so, libgdk-3.so, libgailutil-3.so${NC}"
echo -e "  Programas:  ${GREEN}gtk3-demo, gtk-launch, gtk-update-icon-cache${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib${NC}"
echo ""
echo -e "  Proposito: Toolkit grafico para interfaces de usuario."
echo -e "  Requerido por KDE Plasma (kde-gtk-config, breeze-gtk)."
echo ""
