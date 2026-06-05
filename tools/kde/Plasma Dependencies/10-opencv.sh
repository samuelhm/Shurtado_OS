#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="opencv-4.13.0"
TAR="$PKG.tar.gz"
URL="https://github.com/opencv/opencv/archive/4.13.0/$TAR"
CONTRIB_TAR="opencv_contrib-4.13.0.tar.gz"
CONTRIB_URL="https://github.com/opencv/opencv_contrib/archive/4.13.0/$CONTRIB_TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"
[ -f "$CONTRIB_TAR" ] || wget "$CONTRIB_URL"
[ -f "$CONTRIB_TAR" ] || err "opencv_contrib download failed"

step "Extracting $PKG..."
rm -rf "$PKG"
tar -xf "$TAR"
cd "$PKG"
tar -xf ../"$CONTRIB_TAR"

step "Building $PKG..."
mkdir build && cd build
cmake -D CMAKE_INSTALL_PREFIX=/usr      \
      -D CMAKE_BUILD_TYPE=Release       \
      -D ENABLE_CXX11=ON                \
      -D BUILD_PERF_TESTS=OFF           \
      -D WITH_XINE=ON                   \
      -D BUILD_TESTS=OFF                \
      -D ENABLE_PRECOMPILED_HEADERS=OFF \
      -D CMAKE_SKIP_INSTALL_RPATH=ON    \
      -D BUILD_WITH_DEBUG_INFO=OFF      \
      -D OPENCV_GENERATE_PKGCONFIG=ON   \
      -D OPENCV_EXTRA_MODULES_PATH=../opencv_contrib-4.13.0/modules \
      -W no-dev .. || err "cmake failed"
make || err "make failed"

step "Installing $PKG..."
make install || err "make install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG (+contrib) - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libopencv_*.so${NC} (50+ modulos)"
echo -e "  Programas:  ${GREEN}opencv_annotation, opencv_version${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib${NC}"
echo ""
echo -e "  Proposito: Librerias de vision artificial en tiempo real."
echo -e "  Requerido por KDE Plasma (kwin, kquickimageeditor)."
echo ""
