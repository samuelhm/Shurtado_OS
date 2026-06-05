#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="SPIRV-Headers-vulkan-sdk-1.4.350.0"
TAR="$PKG.tar.gz"
URL="https://github.com/KhronosGroup/SPIRV-Headers/archive/vulkan-sdk-1.4.350.0/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading SPIRV-Headers 1.4.350.0..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting SPIRV-Headers..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building SPIRV-Headers..."
mkdir build && cd build
cmake -D CMAKE_INSTALL_PREFIX=/usr -G Ninja .. || err "cmake failed"
ninja || err "ninja failed"

step "Installing SPIRV-Headers..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  SPIRV-Headers 1.4.350.0 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Ubicacion:  ${BLUE}/usr/include/spirv/${NC}"
echo ""
echo -e "  Proposito: Headers SPIR-V para Vulkan/OpenGL."
echo -e "  Requerido por SPIRV-Tools y Vulkan."
echo ""
