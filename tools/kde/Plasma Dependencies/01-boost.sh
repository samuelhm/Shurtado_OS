#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="boost-1.91.0-1"
TAR="$PKG-b2-nodocs.tar.xz"
URL="https://github.com/boostorg/boost/releases/download/$PKG/$TAR"
NJOBS=$(nproc)

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
case $(uname -m) in
   i?86)
      sed -e "s/defined(__MINGW32__)/& || defined(__i386__)/" \
          -i ./libs/stacktrace/src/exception_headers.h ;;
esac

./bootstrap.sh --prefix=/usr --with-python=python3 || err "bootstrap failed"
./b2 stage -j$NJOBS threading=multi link=shared || err "b2 stage failed"

step "Installing $PKG..."
rm -rf /usr/lib/cmake/[Bb]oost*
./b2 install threading=multi link=shared || err "b2 install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}libboost_*.so${NC} (30+ modulos)"
echo -e "  Ubicacion:  ${BLUE}/usr/lib${NC}"
echo -e "  Headers:    ${BLUE}/usr/include/boost${NC}"
echo ""
echo -e "  Proposito: Coleccion de librerias C++ portables."
echo -e "  Requerido por KDE Plasma y opencv."
echo ""
