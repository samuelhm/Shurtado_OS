#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="SPIRV-Tools-vulkan-sdk-1.4.350.0"
TAR="$PKG.tar.gz"
URL="https://github.com/KhronosGroup/SPIRV-Tools/archive/vulkan-sdk-1.4.350.0/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading SPIRV-Tools 1.4.350.0..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting SPIRV-Tools..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building SPIRV-Tools..."
mkdir build && cd build
cmake -D CMAKE_INSTALL_PREFIX=/usr     \
      -D CMAKE_BUILD_TYPE=Release      \
      -D SPIRV_WERROR=OFF              \
      -D BUILD_SHARED_LIBS=ON          \
      -D SPIRV_TOOLS_BUILD_STATIC=OFF  \
      -D SPIRV-Headers_SOURCE_DIR=/usr \
      -G Ninja .. || err "cmake failed"
ninja || err "ninja failed"

step "Installing SPIRV-Tools..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  SPIRV-Tools 1.4.350.0 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libSPIRV-Tools.so, libSPIRV-Tools-opt.so${NC}"
echo -e "  Programas:  ${GREEN}spirv-as, spirv-dis, spirv-val, spirv-opt${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Herramientas para procesar modulos SPIR-V."
echo -e "  Requerido por glslang y Vulkan."
echo ""
