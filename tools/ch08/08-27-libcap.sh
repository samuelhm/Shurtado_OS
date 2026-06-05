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

step "Extracting libcap-2.78..."
cd "$SOURCES"
tar -xf libcap-2.78.tar.xz
cd libcap-2.78

step "Patching: preventing static libraries..."
sed -i '/install -m.*STA/d' libcap/Makefile || err "sed failed"

step "Compiling Libcap..."
make prefix=/usr lib=lib -j$(nproc) || err "make failed"

step "Installing Libcap..."
make prefix=/usr lib=lib install || err "make install failed"

cd "$SOURCES"
rm -rf libcap-2.78

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Libcap-2.78 - Instalacion completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Libcap-2.78 - POSIX Capabilities Library${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/libcap.so, /usr/lib/libpsx.so${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}capsh${NC}    - Shell wrapper para explorar capabilities"
echo -e "    ${GREEN}getcap${NC}   - Examina capabilities de archivos"
echo -e "    ${GREEN}getpcaps${NC} - Muestra capabilities de procesos"
echo -e "    ${GREEN}setcap${NC}   - Establece capabilities de archivos"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libcap.so${NC}  - Funciones para manipular POSIX capabilities"
echo -e "    ${GREEN}libpsx.so${NC}  - Soporte POSIX para syscalls con pthreads"
echo ""
echo -e "  Proposito: Libcap implementa la interfaz de usuario para"
echo -e "  las POSIX 1003.1e capabilities del kernel Linux, dividiendo"
echo -e "  los privilegios de root en un conjunto de privilegios finos."
echo ""
