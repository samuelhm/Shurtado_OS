#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }
check() { echo -e "${YELLOW}[CHECK]${NC} $*"; }

SOURCES="$LFS/sources"

[ -n "$LFS" ]    || err '$LFS not set. Are you logged in as lfs?'
[ -d "$SOURCES" ] || err "$SOURCES not found. Is the disk mounted?"

step "Extracting binutils-2.46.0..."
cd "$SOURCES"
tar -xf binutils-2.46.0.tar.xz
cd binutils-2.46.0

step "Applying sed fix for internal libs..."
sed '6031s/$add_dir//' -i ltmain.sh || err "sed ltmain.sh failed"

step "Creating build directory..."
mkdir -v build && cd build || err "mkdir build failed"

step "Configuring Binutils Pass 2..."
../configure                   \
    --prefix=/usr              \
    --build=$(../config.guess) \
    --host=$LFS_TGT            \
    --disable-nls              \
    --enable-shared            \
    --enable-gprofng=no        \
    --disable-werror           \
    --enable-64-bit-bfd        \
    --enable-new-dtags         \
    --enable-default-hash-style=gnu || err "configure failed"

step "Compiling Binutils Pass 2..."
make -j$(nproc) || err "make failed"

step "Installing Binutils Pass 2..."
make DESTDIR=$LFS install || err "make install failed"

step "Removing harmful libtool archives and static libs..."
rm -v $LFS/usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes,sframe}.{a,la} || err "rm failed"

cd "$SOURCES"
rm -rf binutils-2.46.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Binutils Pass 2 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Binutils-2.46.0 - Pass 2${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}ld${NC}        - Linker (enlaza objetos -> ejecutables)"
echo -e "    ${GREEN}as${NC}        - Assembler (ensambla .s -> .o)"
echo -e "    ${GREEN}ar${NC}        - Archivador (crea .a estaticas)"
echo -e "    ${GREEN}nm${NC}        - Lista simbolos de objetos"
echo -e "    ${GREEN}objdump${NC}   - Desensamblador / info de objetos"
echo -e "    ${GREEN}objcopy${NC}   - Copia y traduce objetos"
echo -e "    ${GREEN}ranlib${NC}    - Indexa archivos .a"
echo -e "    ${GREEN}readelf${NC}   - Lee info de archivos ELF"
echo -e "    ${GREEN}strip${NC}     - Elimina simbolos de depuracion"
echo -e "    ${GREEN}size${NC}      - Muestra tamanos de secciones"
echo -e "    ${GREEN}strings${NC}   - Extrae strings de binarios"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libbfd.so${NC} - Binary File Descriptor (lee ELF, etc.)"
echo -e "    ${GREEN}libopcodes.so${NC} - Desensamblado de instrucciones"
echo ""
echo -e "  Proposito: Este segundo pase de Binutils produce las"
echo -e "  herramientas de binarios finales que usara el sistema."
echo -e "  A diferencia del Pass 1 (cross), este build se linkea"
echo -e "  contra Glibc y produce binarios nativos listos para chroot."
echo ""
