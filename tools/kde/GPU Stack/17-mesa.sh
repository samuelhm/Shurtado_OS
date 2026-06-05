#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="mesa-26.0.7"
TAR="$PKG.tar.xz"
URL="https://mesa.freedesktop.org/archive/$TAR"

: "${XORG_PREFIX:=/usr}"
: "${XORG_CONFIG:=--prefix=$XORG_PREFIX --sysconfdir=/etc --localstatedir=/var --disable-static}"

[ -d "$SOURCES" ] || err "$SOURCES not found"
command -v llvm-config >/dev/null 2>&1 || err "LLVM not found. Install LLVM first."

step "Downloading Mesa 26.0.7..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting Mesa..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building Mesa (x11, wayland, auto drivers)..."
mkdir build && cd build
meson setup ..                 \
      --prefix="$XORG_PREFIX"  \
      --buildtype=release      \
      -D platforms=x11,wayland \
      -D gallium-drivers=auto  \
      -D vulkan-drivers=auto   \
      -D valgrind=disabled     \
      -D video-codecs=all      \
      -D libunwind=disabled    || err "meson setup failed"
ninja || err "ninja failed"

step "Installing Mesa..."
ninja install || err "ninja install failed"

step "Installing docs..."
cp -rv ../docs -T /usr/share/doc/mesa-26.0.7 2>/dev/null || true

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Mesa 26.0.7 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libGL.so, libEGL.so, libgbm.so${NC}"
echo -e "  Drivers:    ${GREEN}llvmpipe, virgl, zink + Vulkan swrast${NC}"
echo -e "  Ubicacion:  ${BLUE}$XORG_PREFIX/lib/${NC}"
echo ""
echo -e "  Proposito: Implementacion open-source de OpenGL y Vulkan."
echo -e "  Nucleo del stack grafico para KDE Plasma."
echo ""
