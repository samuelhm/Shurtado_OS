#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="URI-5.34"
TAR="$PKG.tar.gz"
URL="https://www.cpan.org/authors/id/O/OA/OALDERS/$TAR"

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
perl Makefile.PL || err "Makefile.PL failed"
make             || err "make failed"

step "Testing $PKG..."
make test || true

step "Installing $PKG..."
make install || err "make install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf "$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  $PKG - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Prefijo:    ${BLUE}/usr/lib/perl5/site_perl/${NC}"
echo -e "  Modulo:     ${BLUE}URI${NC}"
echo -e "  Fuente:     ${BLUE}docs/blfs/general/perl-modules.md#uri-5.34${NC}"
echo ""
