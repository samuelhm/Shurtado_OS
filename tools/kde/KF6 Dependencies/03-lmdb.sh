#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
PKG="LMDB_0.9.35"
TAR="$PKG.tar.bz2"
URL="https://git.openldap.org/openldap/openldap/-/archive/$PKG/$TAR"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $PKG..."
cd "$SOURCES"
[ -f "$TAR" ] || wget "$URL"
[ -f "$TAR" ] || err "download failed"

step "Extracting $PKG..."
rm -rf openldap-"$PKG"
tar -xf "$TAR"
cd openldap-"$PKG"

step "Building $PKG..."
cd libraries/liblmdb
make || err "make failed"
sed -i 's| liblmdb.a||' Makefile

step "Installing $PKG..."
make prefix=/usr install || err "make install failed"

step "Cleanup..."
cd "$SOURCES"
rm -rf openldap-"$PKG"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  lmdb 0.9.35 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Prefijo:    ${BLUE}/usr${NC}"
echo -e "  Libs:       ${BLUE}liblmdb.so${NC}"
echo -e "  Tools:      ${BLUE}mdb_copy, mdb_dump, mdb_load, mdb_stat${NC}"
echo -e "  Fuente:     ${BLUE}docs/blfs/server/lmdb.md${NC}"
echo ""
