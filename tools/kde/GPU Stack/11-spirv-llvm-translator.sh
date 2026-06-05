#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="SPIRV-LLVM-Translator-22.1.2"
TAR="$PKG.tar.gz"
URL="https://github.com/KhronosGroup/SPIRV-LLVM-Translator/archive/v22.1.2/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading SPIRV-LLVM-Translator 22.1.2..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting SPIRV-LLVM-Translator..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Building SPIRV-LLVM-Translator..."
mkdir build && cd build
cmake -D CMAKE_INSTALL_PREFIX=/usr                   \
      -D CMAKE_BUILD_TYPE=Release                    \
      -D BUILD_SHARED_LIBS=ON                        \
      -D CMAKE_SKIP_INSTALL_RPATH=ON                 \
      -D LLVM_EXTERNAL_SPIRV_HEADERS_SOURCE_DIR=/usr \
      -G Ninja .. || err "cmake failed"
ninja || err "ninja failed"

step "Installing SPIRV-LLVM-Translator..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  SPIRV-LLVM-Translator 22.1.2 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Libreria:   ${GREEN}libLLVMSPIRVLib.so${NC}"
echo -e "  Programa:   ${GREEN}llvm-spirv${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Convierte entre LLVM IR y SPIR-V."
echo -e "  Requerido por libclc y el driver iris de Mesa."
echo ""
