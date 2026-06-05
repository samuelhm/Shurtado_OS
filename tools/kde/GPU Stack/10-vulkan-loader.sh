#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="Vulkan-Loader-vulkan-sdk-1.4.350.0"
TAR="$PKG.tar.gz"
URL="https://github.com/KhronosGroup/Vulkan-Loader/archive/vulkan-sdk-1.4.350.0/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading Vulkan-Loader 1.4.350.0..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting Vulkan-Loader..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building Vulkan-Loader..."
mkdir build && cd build
cmake -D CMAKE_INSTALL_PREFIX=/usr   \
      -D CMAKE_BUILD_TYPE=Release    \
      -D CMAKE_SKIP_INSTALL_RPATH=ON \
      -G Ninja .. || err "cmake failed"
ninja || err "ninja failed"

step "Installing Vulkan-Loader..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Vulkan-Loader 1.4.350.0 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Libreria:   ${GREEN}libvulkan.so${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Implementacion de la API Vulkan."
echo -e "  Requerido por Mesa (driver zink) y aplicaciones Vulkan."
echo ""
