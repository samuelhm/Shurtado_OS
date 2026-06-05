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

step "Extracting Python-3.14.5..."
cd "$SOURCES"
tar -xf Python-3.14.5.tar.xz
cd Python-3.14.5

step "Applying OpenSSL 4 patch..."
patch -Np1 -i ../Python-3.14.5-openssl_4-1.patch || err "OpenSSL patch failed"

step "Applying security fixes patch..."
patch -Np1 -i ../Python-3.14.5-security_fixes-1.patch || err "security fixes patch failed"

step "Configuring Python..."
./configure --prefix=/usr               \
            --enable-shared              \
            --with-system-expat          \
            --enable-optimizations       \
            --without-static-libpython   || err "configure failed"

step "Compiling Python..."
make -j$(nproc) || err "make failed"

step "Installing Python..."
make install || err "make install failed"

step "Creating pip configuration..."
cat > /etc/pip.conf << EOF
[global]
root-user-action = ignore
disable-pip-version-check = true
EOF

cd "$SOURCES"
rm -rf Python-3.14.5

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Python-3.14.5 - Instalacion completada ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Python-3.14.5 - Lenguaje de programacion interpretado${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/python3${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}python3${NC}     - Interprete de Python"
echo -e "    ${GREEN}pip3${NC}        - Gestor de paquetes de Python"
echo -e "    ${GREEN}idle3${NC}       - Entorno de desarrollo integrado"
echo -e "    ${GREEN}pydoc3${NC}      - Generador de documentacion"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libpython3.14.so.1.0${NC} - Biblioteca compartida de Python"
echo ""
echo -e "  Proposito: Python es un lenguaje de programacion de alto"
echo -e "  nivel, interpretado y multiproposito. Es requerido por el"
echo -e "  toolchain LFS y muchas herramientas del sistema. Con"
echo -e "  optimizaciones habilitadas, expat del sistema, y pip"
echo -e "  configurado para ignorar warnings como root."
echo ""
