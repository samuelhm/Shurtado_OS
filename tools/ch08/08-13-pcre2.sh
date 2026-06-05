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

step "Extracting pcre2-10.47..."
cd "$SOURCES"
tar -xf pcre2-10.47.tar.bz2
cd pcre2-10.47

step "Configuring Pcre2..."
./configure --prefix=/usr                          \
            --docdir=/usr/share/doc/pcre2-10.47    \
            --enable-unicode                       \
            --enable-jit                           \
            --enable-pcre2-16                      \
            --enable-pcre2-32                      \
            --enable-pcre2grep-libz                \
            --enable-pcre2grep-libbz2              \
            --enable-pcre2test-libreadline         \
            --disable-static || err "configure failed"

step "Compiling Pcre2..."
make -j$(nproc) || err "make failed"

step "Installing Pcre2..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf pcre2-10.47

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Pcre2-10.47 - Instalacion completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Pcre2-10.47 - Perl-Compatible Regular Expressions v2${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/${NC}"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libpcre2-8.so${NC}    - PCRE2 8-bit (UTF-8, default)"
echo -e "    ${GREEN}libpcre2-16.so${NC}   - PCRE2 16-bit (UTF-16)"
echo -e "    ${GREEN}libpcre2-32.so${NC}   - PCRE2 32-bit (UTF-32)"
echo -e "    ${GREEN}libpcre2-posix.so${NC} - Compatibilidad POSIX regex"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}pcre2grep${NC}  - grep compatible con PCRE2"
echo -e "    ${GREEN}pcre2test${NC}  - Herramienta de prueba de patrones"
echo ""
echo -e "  Proposito: PCRE2 es una libreria de expresiones regulares"
echo -e "  compatibles con Perl. Es usada por grep, systemd, y muchas"
echo -e "  otras herramientas del sistema para busqueda de patrones"
echo -e "  avanzada. Soporte JIT incluido para maximo rendimiento."
echo ""
