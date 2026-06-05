#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="libva-2.23.0"
TAR="$PKG.tar.gz"
URL="https://github.com/intel/libva/archive/2.23.0/$TAR"

: "${XORG_PREFIX:=/usr}"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading libva 2.23.0 (full: con EGL/GLX)..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting libva..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building libva (con soporte Mesa EGL/GLX)..."
cd build 2>/dev/null || { mkdir build && cd build; }
meson setup --prefix="$XORG_PREFIX" --buildtype=release || err "meson setup failed"
ninja || err "ninja failed"

step "Installing libva..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  libva 2.23.0 (full) - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libva.so, libva-drm.so, libva-glx.so${NC}"
echo -e "              ${GREEN}libva-wayland.so, libva-x11.so${NC}"
echo -e "  Ubicacion:  ${BLUE}$XORG_PREFIX/lib/${NC}"
echo ""
echo -e "  Proposito: API de aceleracion de video (VA-API) con"
echo -e "  soporte completo EGL/GLX tras instalar Mesa."
echo ""
