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

step "Extracting flex-2.6.4..."
cd "$SOURCES"
tar -xf flex-2.6.4.tar.gz
cd flex-2.6.4

step "Configuring Flex..."
./configure --prefix=/usr                       \
            --disable-static                    \
            --docdir=/usr/share/doc/flex-2.6.4 || err "configure failed"

step "Compiling Flex..."
make -j$(nproc) || err "make failed"

step "Installing Flex..."
make install || err "make install failed"

step "Creating lex symlinks..."
ln -sv flex /usr/bin/lex || err "ln flex failed"
ln -sv flex.1 /usr/share/man/man1/lex.1 || err "ln flex.1 failed"

cd "$SOURCES"
rm -rf flex-2.6.4

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Flex-2.6.4 - Instalacion completada     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Flex-2.6.4 - Fast Lexical Analyzer Generator${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/flex${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}flex${NC}    - Generador de analizadores lexicos"
echo -e "    ${GREEN}lex${NC}     - Symlink POSIX -> flex"
echo -e "    ${GREEN}flex++${NC}  - Generador de scanners C++"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libfl.so${NC} - Biblioteca de soporte de Flex"
echo ""
echo -e "  Proposito: Flex genera codigo C/C++ para analizadores"
echo -e "  lexicos (scanners/tokenizers) a partir de reglas con"
echo -e "  expresiones regulares. Es necesario para compilar el"
echo -e "  kernel Linux, binutils, gcc, y muchas otras herramientas."
echo ""
