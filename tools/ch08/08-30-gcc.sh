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

SOURCES="/sources"

[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting gcc-16.1.0..."
cd "$SOURCES"
tar -xf gcc-16.1.0.tar.xz
cd gcc-16.1.0

step "Patching: x86_64 lib64 -> lib..."
case $(uname -m) in
  x86_64)
    sed -e '/m64=/s/lib64/lib/' \
        -i.orig gcc/config/i386/t-linux64 || err "sed failed"
  ;;
esac

step "Creating build directory..."
mkdir -v build
cd build

step "Configuring GCC..."
../configure --prefix=/usr            \
             LD=ld                    \
             --enable-languages=c,c++ \
             --enable-default-pie     \
             --enable-default-ssp     \
             --enable-host-pie        \
             --enable-targets=all     \
             --disable-multilib       \
             --disable-bootstrap      \
             --disable-fixincludes    \
             --with-system-zlib || err "configure failed"

step "Compiling GCC (this will take a long time)..."
make -j$(nproc) || err "make failed"

step "Installing GCC..."
make install || err "make install failed"

step "Fixing header ownership..."
chown -v -R root:root /usr/lib/gcc/$(gcc -dumpmachine)/16.1.0/include{,-fixed} || err "chown failed"

step "Creating symlinks..."
ln -svr /usr/bin/cpp /usr/lib || err "ln cpp failed"
ln -sv gcc.1 /usr/share/man/man1/cc.1 || err "ln cc.1 failed"
ln -sfvr $(gcc -print-prog-name=liblto_plugin.so) /usr/lib/bfd-plugins/ || err "ln lto_plugin failed"

step "Running sanity checks..."
check "1/6: Compiling dummy program..."
echo 'int main(){}' | cc -x c - -v -Wl,--verbose &> dummy.log || err "dummy compile failed"

check "2/6: Checking program interpreter..."
readelf -l a.out | grep ': /lib' || err "readelf check failed"

check "3/6: Checking start files..."
grep -E -o '/usr/lib.*/S?crt[1in].*succeeded' dummy.log || err "start files check failed"

check "4/6: Checking header search paths..."
grep -B4 '^ /usr/include' dummy.log || err "header search check failed"

check "5/6: Checking linker search paths..."
grep 'SEARCH.*/usr/lib' dummy.log | sed 's|; |\n|g' || err "linker search check failed"

check "6/6: Checking libc..."
grep "/lib.*/libc.so.6 " dummy.log || err "libc check failed"

rm -v a.out dummy.log

step "Moving GDB auto-load files..."
mkdir -pv /usr/share/gdb/auto-load/usr/lib
mv -v /usr/lib/*gdb.py /usr/share/gdb/auto-load/usr/lib || true

cd "$SOURCES"
rm -rf gcc-16.1.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  GCC-16.1.0 - Instalacion completada    ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}GCC-16.1.0 - GNU Compiler Collection${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/gcc, /usr/bin/g++, /usr/bin/cpp${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}gcc${NC}       - Compilador C"
echo -e "    ${GREEN}g++${NC}       - Compilador C++"
echo -e "    ${GREEN}cpp${NC}       - Preprocesador C"
echo -e "    ${GREEN}gcov${NC}       - Herramienta de cobertura"
echo ""
echo -e "  Librerias clave:"
echo -e "    ${GREEN}libstdc++.so${NC}  - Biblioteca estandar C++"
echo -e "    ${GREEN}libgcc_s.so${NC}   - Soporte en tiempo de ejecucion GCC"
echo -e "    ${GREEN}libgomp.so${NC}    - OpenMP para paralelismo"
echo ""
echo -e "  Proposito: GCC es el compilador principal del sistema."
echo -e "  Compila C y C++ con soporte para PIE, SSP, y LTO."
echo -e "  Es la pieza central del toolchain GNU."
echo ""
