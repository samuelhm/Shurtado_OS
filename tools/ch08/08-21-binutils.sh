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

step "Extracting binutils-2.46.0..."
cd "$SOURCES"
tar -xf binutils-2.46.0.tar.xz
cd binutils-2.46.0

step "Creating build directory..."
mkdir -v build && cd build || err "mkdir build failed"

step "Configuring Binutils..."
../configure --prefix=/usr                  \
             --sysconfdir=/etc               \
             --enable-ld=default             \
             --enable-plugins                \
             --enable-shared                 \
             --disable-werror                \
             --enable-64-bit-bfd             \
             --enable-new-dtags              \
             --with-system-zlib              \
             --enable-default-hash-style=gnu || err "configure failed"

step "Compiling Binutils..."
make -j$(nproc) tooldir=/usr || err "make failed"

step "Installing Binutils..."
make tooldir=/usr install || err "make install failed"

step "Removing static libraries and gprofng docs..."
rm -rfv /usr/lib/libbfd.a                                              \
        /usr/lib/libctf.a                                              \
        /usr/lib/libctf-nobfd.a                                        \
        /usr/lib/libgprofng.a                                          \
        /usr/lib/libopcodes.a                                          \
        /usr/lib/libsframe.a                                           \
        /usr/share/doc/gprofng/ || err "cleanup failed"

cd "$SOURCES"
rm -rf binutils-2.46.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Binutils-2.46.0 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Binutils-2.46.0 - GNU Binary Utilities${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}ld${NC}        - GNU linker (ELF, soporte plugins LTO)"
echo -e "    ${GREEN}as${NC}        - GNU assembler"
echo -e "    ${GREEN}objdump${NC}   - Muestra informacion de archivos objeto"
echo -e "    ${GREEN}readelf${NC}   - Muestra informacion de archivos ELF"
echo -e "    ${GREEN}nm${NC}        - Lista simbolos de archivos objeto"
echo -e "    ${GREEN}strip${NC}     - Elimina simbolos de depuracion"
echo -e "    ${GREEN}ar${NC}        - Crea/modifica librerias estaticas (.a)"
echo -e "    ${GREEN}ranlib${NC}    - Genera indices para librerias estaticas"
echo -e "    ${GREEN}size${NC}      - Muestra tamanos de secciones"
echo -e "    ${GREEN}strings${NC}   - Extrae strings imprimibles de binarios"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libbfd.so${NC}     - Binary File Descriptor library"
echo -e "    ${GREEN}libopcodes.so${NC} - Desensamblador de opcodes"
echo -e "    ${GREEN}libctf.so${NC}     - Compact C Type Format"
echo -e "    ${GREEN}libsframe.so${NC}  - Stack Frame unwind info"
echo ""
echo -e "  Proposito: Binutils proporciona el linker, assembler, y"
echo -e "  herramientas de manipulacion de binarios del toolchain GNU."
echo -e "  Es el segundo componente mas critico despues de GCC. Sin"
echo -e "  Binutils no se puede compilar ni enlazar ningun programa."
echo ""
