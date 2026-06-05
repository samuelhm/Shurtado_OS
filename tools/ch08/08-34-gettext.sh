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

step "Extracting gettext-1.0..."
cd "$SOURCES"
tar -xf gettext-1.0.tar.xz
cd gettext-1.0

step "Configuring Gettext..."
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-1.0 || err "configure failed"

step "Compiling Gettext..."
make -j$(nproc) || err "make failed"

step "Installing Gettext..."
make install || err "make install failed"

step "Fixing permissions on preloadable_libintl..."
chmod -v 0755 /usr/lib/preloadable_libintl.so || err "chmod failed"

cd "$SOURCES"
rm -rf gettext-1.0

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Gettext-1.0 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Gettext-1.0 - Soporte i18n/l10n${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}msgfmt${NC}      - Compila archivos .po -> .mo"
echo -e "    ${GREEN}msgmerge${NC}    - Fusiona traducciones con plantillas"
echo -e "    ${GREEN}xgettext${NC}    - Extrae cadenas traducibles del codigo"
echo -e "    ${GREEN}gettext${NC}     - Traduce cadenas en tiempo de ejecucion"
echo -e "    ${GREEN}ngettext${NC}    - Traduccion con soporte de plurales"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libintl.so${NC}              - Biblioteca de internacionalizacion"
echo -e "    ${GREEN}libasprintf.so${NC}          - sprintf con soporte i18n"
echo -e "    ${GREEN}preloadable_libintl.so${NC}  - libintl pre-cargable (LD_PRELOAD)"
echo ""
echo -e "  Proposito: Gettext es el framework estandar para la"
echo -e "  internacionalizacion (i18n) de software. Permite que"
echo -e "  los programas muestren mensajes en multiples idiomas."
echo ""
