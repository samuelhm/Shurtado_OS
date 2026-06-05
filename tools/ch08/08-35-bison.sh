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

step "Extracting bison-3.8.2..."
cd "$SOURCES"
tar -xf bison-3.8.2.tar.xz
cd bison-3.8.2

step "Configuring Bison..."
./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.8.2 || err "configure failed"

step "Compiling Bison..."
make -j$(nproc) || err "make failed"

step "Installing Bison..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf bison-3.8.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Bison-3.8.2 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Bison-3.8.2 - Generador de parsers${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/bison${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}bison${NC}  - Generador de parsers LALR(1)/GLR"
echo -e "    ${GREEN}yacc${NC}   - Symlink POSIX a bison"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}liby.a${NC} - Biblioteca de soporte de parsers YACC"
echo ""
echo -e "  Proposito: Bison genera codigo C/C++ a partir de gramaticas"
echo -e "  formales. Es necesario para compilar binutils, gcc, bash"
echo -e "  y otros paquetes que usan parsers en su build."
echo ""
