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

step "Extracting automake-1.18.1..."
cd "$SOURCES"
tar -xf automake-1.18.1.tar.xz
cd automake-1.18.1

step "Configuring Automake..."
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.18.1 || err "configure failed"

step "Compiling Automake..."
make -j$(nproc) || err "make failed"

step "Installing Automake..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf automake-1.18.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Automake-1.18.1 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Automake-1.18.1 - Generador de Makefile.in${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/automake${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}automake${NC}    - Genera Makefile.in desde Makefile.am"
echo -e "    ${GREEN}aclocal${NC}     - Genera aclocal.m4 para autoconf"
echo ""
echo -e "  Proposito: Automake produce archivos Makefile.in que"
echo -e "  autoconf transforma en Makefile finales. Junto con"
echo -e "  autoconf, forma el sistema GNU Autotools usado para"
echo -e "  construir la mayoria del software libre."
echo ""
