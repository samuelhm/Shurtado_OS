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

step "Extracting openssl-4.0.0..."
cd "$SOURCES"
tar -xf openssl-4.0.0.tar.gz
cd openssl-4.0.0

step "Configuring OpenSSL..."
./config --prefix=/usr          \
         --openssldir=/etc/ssl  \
         --libdir=lib           \
         shared                 \
         zlib-dynamic || err "configure failed"

step "Compiling OpenSSL..."
make -j$(nproc) || err "make failed"

step "Installing OpenSSL..."
make INSTALL_LIBS= MANSUFFIX=ssl install || err "make install failed"

step "Renaming documentation directory..."
mv -v /usr/share/doc/openssl /usr/share/doc/openssl-4.0.0

cd "$SOURCES"
rm -rf openssl-4.0.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  OpenSSL-4.0.0 - Instalacion completada ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}OpenSSL-4.0.0 - Toolkit de criptografia y SSL/TLS${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/openssl, /etc/ssl/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}openssl${NC}    - Herramienta de linea de comandos SSL/TLS"
echo -e "    ${GREEN}c_rehash${NC}   - Recalcula hash de certificados en directorios"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libssl.so${NC}      - Protocolos SSL/TLS"
echo -e "    ${GREEN}libcrypto.so${NC}   - Algoritmos criptograficos"
echo ""
echo -e "  Proposito: OpenSSL proporciona cifrado SSL/TLS y"
echo -e "  funciones criptograficas (hash, firmas, cifrado)."
echo -e "  Esencial para SSH, HTTPS, y casi toda comunicacion"
echo -e "  segura en el sistema. Compilado con zlib dinamico."
echo ""
