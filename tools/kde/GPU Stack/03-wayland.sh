#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="wayland-1.25.0"
TAR="$PKG.tar.xz"
URL="https://gitlab.freedesktop.org/wayland/wayland/-/releases/1.25.0/downloads/$TAR"

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
      -D documentation=false || err "meson setup failed"
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
echo -e "  Librerias:  ${GREEN}libwayland-client.so, libwayland-server.so${NC}"
echo -e "              ${GREEN}libwayland-cursor.so, libwayland-egl.so${NC}"
echo -e "  Programa:   ${GREEN}wayland-scanner${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Protocolo y libreria para compositores Wayland."
echo -e "  Requerido por Mesa, GTK, Qt6, y KDE Plasma."
echo ""
