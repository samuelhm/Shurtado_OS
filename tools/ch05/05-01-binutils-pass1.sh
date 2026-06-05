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

step "Extracting binutils-2.46.0..."
cd "$SOURCES"
tar -xf binutils-2.46.0.tar.xz
cd binutils-2.46.0

step "Creating build directory..."
mkdir -v build && cd build || err "mkdir build failed"

step "Configuring Binutils Pass 1..."
../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --enable-gprofng=no \
             --disable-werror    \
             --enable-new-dtags  \
             --enable-default-hash-style=gnu || err "configure failed"

step "Compiling Binutils Pass 1 (this defines the SBU)..."
make -j$(nproc) || err "make failed"

step "Installing Binutils Pass 1..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf binutils-2.46.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Binutils Pass 1 - Instalación OK      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Binutils-2.46.0 - Pass 1${NC}"
echo -e "  Ubicación:  ${BLUE}\$LFS/tools/${NC}"
echo ""
echo -e "  Binarios instalados en \$LFS/tools/bin/:"
echo -e "    ${GREEN}$LFS_TGT-ld${NC}        - Cross-linker (enlaza objetos → ejecutables)"
echo -e "    ${GREEN}$LFS_TGT-as${NC}        - Cross-assembler (ensambla .s → .o)"
echo -e "    ${GREEN}$LFS_TGT-ar${NC}        - Archivador (crea .a estáticas)"
echo -e "    ${GREEN}$LFS_TGT-nm${NC}        - Lista símbolos de objetos"
echo -e "    ${GREEN}$LFS_TGT-objdump${NC}   - Desensamblador / info de objetos"
echo -e "    ${GREEN}$LFS_TGT-objcopy${NC}   - Copia y traduce objetos"
echo -e "    ${GREEN}$LFS_TGT-ranlib${NC}    - Indexa archivos .a"
echo -e "    ${GREEN}$LFS_TGT-readelf${NC}   - Lee info de archivos ELF"
echo -e "    ${GREEN}$LFS_TGT-strip${NC}     - Elimina símbolos de depuración"
echo -e "    ${GREEN}$LFS_TGT-size${NC}      - Muestra tamaños de secciones"
echo -e "    ${GREEN}$LFS_TGT-strings${NC}   - Extrae strings de binarios"
echo ""
echo -e "  Librerías en \$LFS/tools/lib/:"
echo -e "    libbfd       - Binary File Descriptor (manipula objetos)"
echo -e "    libopcodes   - Desensamblado de instrucciones máquina"
echo -e "    libiberty    - Utilidades de soporte (xmalloc, xexit, etc.)"
echo ""
echo -e "  Propósito: Provee el linker (ld) y el assembler (as)"
echo -e "  cruzados, las herramientas fundamentales para compilar"
echo -e "  cualquier programa. Va primero porque GCC y Glibc hacen"
echo -e "  tests sobre el linker y assembler disponibles para decidir"
echo -e "  qué características activar. Su tiempo de compilación"
echo -e "  define la unidad SBU (Standard Build Unit)."
echo ""
