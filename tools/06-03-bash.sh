#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="$LFS/sources"

[ -n "$LFS" ]    || err '$LFS not set. Are you logged in as lfs?'
[ -d "$SOURCES" ] || err "$SOURCES not found. Is the disk mounted?"

step "Extracting bash-5.3..."
cd "$SOURCES"
tar -xf bash-5.3.tar.gz
cd bash-5.3

step "Configuring Bash..."
./configure --prefix=/usr                      \
            --build=$(sh support/config.guess) \
            --host=$LFS_TGT                    \
            --without-bash-malloc              \
            --docdir=/usr/share/doc/bash-5.3 || err "configure failed"

step "Compiling Bash..."
make -j$(nproc) || err "make failed"

step "Installing Bash..."
make DESTDIR=$LFS install || err "make install failed"

step "Creating /bin/sh symlink..."
ln -sv bash $LFS/bin/sh || err "symlink failed"

cd "$SOURCES"
rm -rf bash-5.3

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Bash-5.3 - Instalacion completada     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Bash-5.3 - Bourne-Again Shell${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/bin/bash${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}bash${NC}   - El shell de linea de comandos"
echo -e "    ${GREEN}sh${NC}     - Symlink a bash (shell POSIX por defecto)"
echo ""
echo -e "  Proposito: Bash es el shell estandar de Linux. Ejecuta comandos,"
echo -e "  scripts, y proporciona el entorno interactivo de terminal."
echo -e "  Virtualmente todo script del sistema depende de /bin/sh."
echo ""
