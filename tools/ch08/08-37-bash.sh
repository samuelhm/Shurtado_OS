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

step "Extracting bash-5.3..."
cd "$SOURCES"
tar -xf bash-5.3.tar.gz
cd bash-5.3

step "Configuring Bash..."
./configure --prefix=/usr                    \
            --without-bash-malloc            \
            --with-installed-readline        \
            --docdir=/usr/share/doc/bash-5.3 || err "configure failed"

step "Compiling Bash..."
make -j$(nproc) || err "make failed"

step "Installing Bash..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf bash-5.3

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Bash-5.3 - Instalacion completada     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Bash-5.3 - Bourne-Again SHell${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/bash${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}bash${NC}      - El shell de GNU"
echo -e "    ${GREEN}bashbug${NC}   - Reporte de bugs de bash"
echo -e "    ${GREEN}sh${NC}        - Symlink a bash (shell por defecto)"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libreadline.a${NC} - Readline vinculado estaticamente"
echo ""
echo -e "  Proposito: Bash es el shell por defecto en LFS y la mayoria"
echo -e "  de distribuciones Linux. Proporciona el interprete de"
echo -e "  comandos interactivo y de scripting usado por el sistema."
echo ""
