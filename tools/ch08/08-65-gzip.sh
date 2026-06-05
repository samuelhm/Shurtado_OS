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

step "Extracting gzip-1.14..."
cd "$SOURCES"
tar -xf gzip-1.14.tar.xz
cd gzip-1.14

step "Configuring Gzip..."
./configure --prefix=/usr || err "configure failed"

step "Compiling Gzip..."
make -j$(nproc) || err "make failed"

step "Installing Gzip..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf gzip-1.14

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Gzip-1.14 - Instalacion completada      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}GNU Gzip-1.14${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/gzip${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}gzip${NC}       - Comprime archivos (LZ77)"
echo -e "    ${GREEN}gunzip${NC}     - Descomprime archivos .gz"
echo -e "    ${GREEN}zcat${NC}       - Muestra contenido de .gz sin descomprimir"
echo -e "    ${GREEN}zcmp${NC}       - Compara archivos comprimidos"
echo -e "    ${GREEN}zdiff${NC}      - Muestra diferencias en archivos .gz"
echo -e "    ${GREEN}zgrep${NC}      - Busca patrones en archivos comprimidos"
echo -e "    ${GREEN}zless${NC}      - Paginador para archivos comprimidos"
echo -e "    ${GREEN}zmore${NC}      - Visualizador para archivos comprimidos"
echo ""
echo -e "  Proposito: Gzip es la herramienta estandar de compresion"
echo -e "  en sistemas Unix/Linux usando el algoritmo Lempel-Ziv (LZ77)."
echo -e "  Se usa para comprimir archivos de log, tarballs (.tar.gz),"
echo -e "  paginas de manual, y distribucion de software."
echo ""
