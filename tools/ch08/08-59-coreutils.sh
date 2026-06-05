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

step "Extracting coreutils-9.11..."
cd "$SOURCES"
tar -xf coreutils-9.11.tar.xz
cd coreutils-9.11

step "Applying i18n patch..."
patch -Np1 -i ../coreutils-9.11-i18n-1.patch || err "patch failed"

step "Regenerating build system..."
autoreconf -fv || err "autoreconf failed"
automake -af || err "automake failed"

step "Configuring Coreutils..."
FORCE_UNSAFE_CONFIGURE=1 ./configure --prefix=/usr || err "configure failed"

step "Compiling Coreutils..."
make -j$(nproc) || err "make failed"

step "Installing Coreutils..."
make install || err "make install failed"

step "Moving chroot to FHS-compliant locations..."
mv -v /usr/bin/chroot /usr/sbin || err "mv chroot binary failed"
mv -v /usr/share/man/man1/chroot.1 /usr/share/man/man8/chroot.8 || err "mv chroot man page failed"
sed -i 's/"1"/"8"/' /usr/share/man/man8/chroot.8 || err "sed man page failed"

cd "$SOURCES"
rm -rf coreutils-9.11

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Coreutils-9.11 - Instalacion completada ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}GNU Coreutils-9.11${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/, /usr/sbin/${NC}"
echo ""
echo -e "  Binarios principales instalados:"
echo -e "    ${GREEN}ls${NC}     - Lista contenido de directorios"
echo -e "    ${GREEN}cp${NC}     - Copia archivos y directorios"
echo -e "    ${GREEN}mv${NC}     - Mueve/renombra archivos"
echo -e "    ${GREEN}rm${NC}     - Elimina archivos"
echo -e "    ${GREEN}cat${NC}    - Concatena archivos"
echo -e "    ${GREEN}echo${NC}   - Muestra texto"
echo -e "    ${GREEN}chmod${NC}  - Cambia permisos"
echo -e "    ${GREEN}chown${NC}  - Cambia propietario"
echo -e "    ${GREEN}dd${NC}     - Copia y convierte archivos"
echo -e "    ${GREEN}ln${NC}     - Crea enlaces"
echo -e "    ${GREEN}mkdir${NC}  - Crea directorios"
echo -e "    ${GREEN}sort${NC}   - Ordena lineas de texto"
echo -e "    ${GREEN}tail${NC}   - Muestra ultimas lineas"
echo -e "    ${GREEN}head${NC}   - Muestra primeras lineas"
echo -e "    ${GREEN}wc${NC}     - Cuenta lineas, palabras, bytes"
echo -e "    + 80+ utilidades basicas mas"
echo ""
echo -e "  Proposito: Coreutils proporciona las utilidades basicas de"
echo -e "  linea de comandos que todo sistema operativo necesita."
echo -e "  Incluye herramientas para manipulacion de archivos, texto,"
echo -e "  permisos y sistema. Esencial para scripts y operacion diaria."
echo ""
