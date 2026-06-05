#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="llvm-project-22.1.0.src"
TAR="$PKG.tar.xz"
URL="https://github.com/llvm/llvm-project/releases/download/llvmorg-22.1.0/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading LLVM 22.1.0..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting LLVM..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"

step "Patching Python shebangs..."
grep -rl '#!.*python$' | xargs sed -i '1s/python$/python3/'

step "Enabling FileCheck install..."
sed 's/utility/tool/' -i llvm/utils/FileCheck/CMakeLists.txt

step "Building LLVM (with Clang + RTTI)..."
mkdir -v llvm/build && cd llvm/build

CC=gcc CXX=g++                               \
cmake -D CMAKE_INSTALL_PREFIX=/usr           \
      -D CMAKE_SKIP_INSTALL_RPATH=ON         \
      -D LLVM_ENABLE_FFI=ON                  \
      -D CMAKE_BUILD_TYPE=Release            \
      -D LLVM_BUILD_LLVM_DYLIB=ON            \
      -D LLVM_LINK_LLVM_DYLIB=ON             \
      -D LLVM_ENABLE_RTTI=ON                 \
      -D LLVM_TARGETS_TO_BUILD="host;AMDGPU" \
      -D LLVM_ENABLE_PROJECTS=clang          \
      -D LLVM_ENABLE_RUNTIMES=compiler-rt    \
      -D LLVM_BINUTILS_INCDIR=/usr/include   \
      -D LLVM_INCLUDE_BENCHMARKS=OFF         \
      -D CLANG_DEFAULT_PIE_ON_LINUX=ON       \
      -D CLANG_CONFIG_FILE_SYSTEM_DIR=/etc/clang \
      -W no-dev -G Ninja ..                  || err "cmake failed"
ninja || err "ninja failed"

step "Installing LLVM..."
ninja install || err "ninja install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  LLVM 22.1.0 + Clang - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Libreria:   ${GREEN}libLLVM-22.so${NC}"
echo -e "  Programa:   ${GREEN}clang, clang++${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Proposito: Infraestructura de compilador modular."
echo -e "  Requerido por Mesa (llvmpipe/radeonsi), Rust, y SPIRV."
echo ""
