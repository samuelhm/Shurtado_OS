#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"

[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting Python-3.14.5..."
cd "$SOURCES"
tar -xf Python-3.14.5.tar.xz
cd Python-3.14.5

step "Configuring Python..."
./configure --prefix=/usr       \
            --enable-shared     \
            --without-ensurepip \
            --without-static-libpython || err "configure failed"

step "Compiling Python..."
make -j$(nproc) || err "make failed"

step "Installing Python..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf Python-3.14.5

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Python-3.14.5 - Instalacion completada ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Python-3.14.5 - Lenguaje interpretado${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/python3${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}python3${NC}    - Interprete de Python 3"
echo -e "    ${GREEN}python3.14${NC}  - Version especifica"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libpython3.14.so${NC} - Biblioteca compartida de Python"
echo ""
echo -e "  Nota: La instalacion de modulos SSL fallara con warnings"
echo -e "  (${YELLOW}Python requires OpenSSL 1.1.1 or newer${NC})."
echo -e "  Es NORMAL. Los modulos opcionales se construiran en"
echo -e "  el capitulo 8 cuando OpenSSL este instalado."
echo ""
echo -e "  Proposito: Python es necesario para el sistema de build"
echo -e "  de varios paquetes (meson, ninja, LLVM) y como lenguaje"
echo -e "  de scripting de sistema."
echo ""
