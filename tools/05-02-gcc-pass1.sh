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

step "Extracting gcc-16.1.0..."
cd "$SOURCES"
tar -xf gcc-16.1.0.tar.xz
cd gcc-16.1.0

echo " $(pwd)"

step "Extracting mpfr, gmp, mpc..."
tar -xf ../mpfr-4.2.2.tar.xz && mv -v mpfr-4.2.2 mpfr || err "mpfr extract failed"
tar -xf ../gmp-6.3.0.tar.xz   && mv -v gmp-6.3.0 gmp     || err "gmp extract failed"
tar -xf ../mpc-1.4.1.tar.xz   && mv -v mpc-1.4.1 mpc     || err "mpc extract failed"

# Los tarballs externos (mpfr, gmp, mpc) pueden traer timestamps
# inconsistentes de fábrica: aclocal.m4 mas reciente que configure o
# Makefile.in. make (incluso con -j1) detecta estos desfases y dispara
# autoconf/automake para regenerar los archivos, fallando si automake
# no esta instalado. Un solo find -exec ... + garantiza que todos los
# archivos reciban el mismo nanosegundo, rompiendo la cadena de dependencias.
step "Resetting timestamps on bundled libs (prevents autotools regeneration)..."
for lib in mpfr gmp mpc; do
    find $lib \( -name Makefile.in -o -name configure -o -name aclocal.m4 \) -exec touch {} +
done

step "Fixing lib64 -> lib on x86_64..."
case $(uname -m) in
    x86_64) sed -e '/m64=/s/lib64/lib/' -i.orig gcc/config/i386/t-linux64 ;;
esac

step "Configuring GCC Pass 1..."
mkdir -v build && cd build
../configure                  \
    --target=$LFS_TGT         \
    --prefix=$LFS/tools       \
    --with-glibc-version=2.43 \
    --with-sysroot=$LFS       \
    --with-newlib             \
    --without-headers         \
    --enable-default-pie      \
    --enable-default-ssp      \
    --disable-nls             \
    --disable-shared          \
    --disable-multilib        \
    --disable-threads         \
    --disable-libatomic       \
    --disable-libgomp         \
    --disable-libquadmath     \
    --disable-libssp          \
    --disable-libvtv          \
    --disable-libstdcxx       \
    --enable-languages=c,c++  || err "configure failed"

step "Compiling GCC Pass 1 (this takes a while)..."
make -j1 || err "make failed"

step "Installing GCC Pass 1..."
make install || err "make install failed"

step "Creating full limits.h..."
cat ../gcc/{limitx,glimits,limity}.h > \
  $($LFS_TGT-gcc -print-file-name=include)/limits.h || err "limits.h creation failed"

cd "$SOURCES"
rm -rf gcc-16.1.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  GCC Pass 1 - Instalación completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}GCC-16.1.0 (GNU Compiler Collection) - Pass 1${NC}"
echo -e "  Ubicación:  ${BLUE}\$LFS/tools/${NC}"
echo ""
echo -e "  Binarios instalados en \$LFS/tools/bin/:"
echo -e "    ${GREEN}$LFS_TGT-gcc${NC}      - Cross-compilador de C"
echo -e "    ${GREEN}$LFS_TGT-g++${NC}      - Cross-compilador de C++"
echo -e "    ${GREEN}$LFS_TGT-cpp${NC}      - Preprocesador de C"
echo -e "    ${GREEN}$LFS_TGT-gcc-ar${NC}   - Archivador para LTO"
echo -e "    ${GREEN}$LFS_TGT-gcc-nm${NC}   - Lista de símbolos para LTO"
echo -e "    ${GREEN}$LFS_TGT-gcc-ranlib${NC} - Indexador para LTO"
echo ""
echo -e "  Librerías instaladas:"
echo -e "    libgcc        - Librería de soporte en tiempo de ejecución"
echo -e "                     (aritmética, excepciones, stack unwinding)"
echo -e "    libgcc_eh     - Módulo de manejo de excepciones de libgcc"
echo ""
echo -e "  Propósito: Compilador cruzado temporal que compilará"
echo -e "  los paquetes del capítulo 5 y 6 sin depender del"
echo -e "  sistema host. Genera código para la máquina target"
echo -e "  ($LFS_TGT)."
echo ""
