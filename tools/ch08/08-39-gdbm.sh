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

step "Extracting gdbm-1.26..."
cd "$SOURCES"
tar -xf gdbm-1.26.tar.gz
cd gdbm-1.26

step "Configuring GDBM..."
./configure --prefix=/usr          \
            --disable-static       \
            --enable-libgdbm-compat || err "configure failed"

step "Compiling GDBM..."
make -j$(nproc) || err "make failed"

step "Installing GDBM..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf gdbm-1.26

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  GDBM-1.26 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}GDBM-1.26 - Base de datos GNU dbm${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/libgdbm.so${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}gdbmtool${NC}   - Herramienta de gestion de bases de datos GDBM"
echo -e "    ${GREEN}gdbm_dump${NC}   - Vuelca base de datos GDBM a texto"
echo -e "    ${GREEN}gdbm_load${NC}   - Carga base de datos GDBM desde texto"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libgdbm.so${NC}     - Biblioteca GNU dbm"
echo -e "    ${GREEN}libgdbm_compat${NC} - Capa de compatibilidad con dbm/ndbm tradicional"
echo ""
echo -e "  Proposito: GDBM es una biblioteca de base de datos clave-valor"
echo -e "  que reemplaza a las antiguas bibliotecas dbm y ndbm. Es"
echo -e "  requerida por Perl, Python y otros paquetes para almacenar"
echo -e "  datos persistentes con indices hash."
echo ""
