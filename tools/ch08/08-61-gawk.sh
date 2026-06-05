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

step "Extracting gawk-5.4.0..."
cd "$SOURCES"
tar -xf gawk-5.4.0.tar.xz
cd gawk-5.4.0

step "Disabling unneeded extras..."
sed -i 's/extras//' Makefile.in || err "sed failed"

step "Configuring Gawk..."
./configure --prefix=/usr || err "configure failed"

step "Compiling Gawk..."
make -j$(nproc) || err "make failed"

step "Installing Gawk..."
rm -f /usr/bin/gawk-5.4.0
make install || err "make install failed"

step "Creating awk man page symlink..."
ln -sv gawk.1 /usr/share/man/man1/awk.1 || err "ln failed"

cd "$SOURCES"
rm -rf gawk-5.4.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Gawk-5.4.0 - Instalacion completada     ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}GNU Awk (gawk)-5.4.0${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/gawk${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}gawk${NC}  - GNU AWK, manipulacion de archivos de texto"
echo -e "    ${GREEN}awk${NC}   - Enlace simbolico a gawk (POSIX)"
echo ""
echo -e "  Librerias instaladas en /usr/lib/gawk/:"
echo -e "    ${GREEN}filefuncs.so${NC}, ${GREEN}fnmatch.so${NC}, ${GREEN}fork.so${NC},"
echo -e "    ${GREEN}inplace.so${NC}, ${GREEN}readdir.so${NC}, ${GREEN}readfile.so${NC},"
echo -e "    ${GREEN}time.so${NC}, y mas extensiones dinamicas"
echo ""
echo -e "  Proposito: Gawk es el estandar de facto para procesamiento"
echo -e "  de texto en Unix/Linux. Es usado extensivamente en scripts"
echo -e "  de sistema, configuracion y administracion para extraer,"
echo -e "  transformar y reportar datos estructurados en texto."
echo ""
