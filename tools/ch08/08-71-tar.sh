#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"

[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting tar-1.35..."
cd "$SOURCES"
tar -xf tar-1.35.tar.xz
cd tar-1.35

step "Configuring Tar..."
FORCE_UNSAFE_CONFIGURE=1 ./configure --prefix=/usr || err "configure failed"

step "Compiling Tar..."
make -j$(nproc) || err "make failed"

step "Installing Tar..."
make install || err "make install failed"

step "Installing HTML documentation..."
make -C doc install-html docdir=/usr/share/doc/tar-1.35 || err "install-html failed"

cd "$SOURCES"
rm -rf tar-1.35

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Tar-1.35 - Instalacion completada      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Tar-1.35 - Archivador de cintas (Tape ARchiver)${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/tar${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}tar${NC} - Crea, extrae y manipula archivos .tar"
echo ""
echo -e "  Proposito: GNU Tar es la herramienta estandar para crear"
echo -e "  y extraer archivos tar. Soporta multiples formatos de"
echo -e "  compresion (gzip, bzip2, xz) y es la base de distribucion"
echo -e "  de practicamente todo el software en Linux."
echo ""
