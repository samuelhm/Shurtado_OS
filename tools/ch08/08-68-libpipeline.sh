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

step "Extracting libpipeline-1.5.8..."
cd "$SOURCES"
tar -xf libpipeline-1.5.8.tar.gz
cd libpipeline-1.5.8

step "Configuring libpipeline..."
./configure --prefix=/usr || err "configure failed"

step "Compiling libpipeline..."
make -j$(nproc) || err "make failed"

step "Installing libpipeline..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf libpipeline-1.5.8

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Libpipeline-1.5.8 - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}libpipeline-1.5.8 - Manejo de pipelines${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/libpipeline.so${NC}"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libpipeline.so${NC} - Construccion y ejecucion de pipelines"
echo ""
echo -e "  Proposito: Libpipeline es una libreria en C para manipular"
echo -e "  pipelines de subprocesos de manera flexible y segura."
echo -e "  Es un requisito de man-db para ejecutar comandos en"
echo -e "  cadenas de procesos."
echo ""
