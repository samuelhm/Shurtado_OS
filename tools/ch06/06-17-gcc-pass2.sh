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

step "Extracting mpfr, gmp, mpc..."
tar -xf ../mpfr-4.2.2.tar.xz && mv -v mpfr-4.2.2 mpfr || err "mpfr extract failed"
tar -xf ../gmp-6.3.0.tar.xz   && mv -v gmp-6.3.0 gmp     || err "gmp extract failed"
tar -xf ../mpc-1.4.1.tar.xz   && mv -v mpc-1.4.1 mpc     || err "mpc extract failed"

# Los tarballs externos (mpfr, gmp, mpc) pueden traer timestamps
# inconsistentes de fabrica: aclocal.m4 mas reciente que configure o
# Makefile.in. make detecta estos desfases y dispara
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

step "Creating build directory..."
mkdir -v build && cd build || err "mkdir build failed"

step "Configuring GCC Pass 2..."
../configure                   \
    --build=$(../config.guess) \
    --host=$LFS_TGT            \
    --target=$LFS_TGT          \
    --prefix=/usr              \
    --with-build-sysroot=$LFS  \
    --enable-default-pie       \
    --enable-default-ssp       \
    --disable-nls              \
    --disable-multilib         \
    --disable-libatomic        \
    --disable-libgomp          \
    --disable-libquadmath      \
    --disable-libsanitizer     \
    --disable-libssp           \
    --disable-libvtv           \
    --enable-languages=c,c++   \
    LDFLAGS_FOR_TARGET=-L$PWD/$LFS_TGT/libgcc \
    target_configargs=gcc_cv_target_thread_file=posix || err "configure failed"

step "Compiling GCC Pass 2 (this takes a while, ~4.5 SBU)..."
make -j$(nproc) || err "make failed"

step "Installing GCC Pass 2..."
make DESTDIR=$LFS install || err "make install failed"

step "Creating cc symlink..."
ln -sv gcc $LFS/usr/bin/cc || err "symlink failed"

cd "$SOURCES"
rm -rf gcc-16.1.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  GCC Pass 2 - Instalacion completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}GCC-16.1.0 - GNU Compiler Collection - Pass 2${NC}"
echo -e "  Ubicacion:  ${BLUE}\$LFS/usr/bin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}gcc${NC}      - Compilador de C"
echo -e "    ${GREEN}g++${NC}      - Compilador de C++"
echo -e "    ${GREEN}cpp${NC}      - Preprocesador de C"
echo -e "    ${GREEN}cc${NC}       - Symlink a gcc (estandar POSIX)"
echo -e "    ${GREEN}gcc-ar${NC}   - Archivador con soporte LTO"
echo -e "    ${GREEN}gcc-nm${NC}   - Lista de simbolos con soporte LTO"
echo -e "    ${GREEN}gcc-ranlib${NC} - Indexador con soporte LTO"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libgcc_s.so${NC}    - Soporte runtime de GCC"
echo -e "    ${GREEN}libstdc++.so${NC}   - Biblioteca estandar de C++"
echo -e "    ${GREEN}libgomp.so${NC}     - OpenMP (si aplica)"
echo ""
echo -e "  Proposito: Este segundo pase de GCC compila el compilador"
echo -e "  final del sistema, linkeado contra Glibc y produciendo"
echo -e "  binarios nativos para el target. A diferencia del Pass 1"
echo -e "  (cross-compilador puro), este GCC genera ejecutables que"
echo -e "  corren en el sistema LFS final. Es el compilador que se"
echo -e "  usara para construir el resto del sistema en el chroot."
echo ""
