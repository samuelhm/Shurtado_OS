#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="glslang-16.3.0"
TAR="$PKG.tar.gz"
URL="https://github.com/KhronosGroup/glslang/archive/16.3.0/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading glslang 16.3.0..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting glslang..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building glslang..."
mkdir build && cd build
cmake -D CMAKE_INSTALL_PREFIX=/usr     \
      -D CMAKE_BUILD_TYPE=Release      \
      -D ALLOW_EXTERNAL_SPIRV_TOOLS=ON \
      -D BUILD_SHARED_LIBS=ON          \
      -D GLSLANG_TESTS=OFF             \
      -G Ninja .. || err "cmake failed"
ninja || err "ninja failed"

step "Installing glslang..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  glslang 16.3.0 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libglslang.so, libSPIRV.so${NC}"
echo -e "  Programa:   ${GREEN}glslangValidator${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Frontend y validador de shaders OpenGL/Vulkan."
echo -e "  Requerido por Mesa para soporte Vulkan."
echo ""
