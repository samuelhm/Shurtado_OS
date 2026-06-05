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

step "Extracting meson-1.11.1..."
cd "$SOURCES"
tar -xf meson-1.11.1.tar.gz
cd meson-1.11.1

step "Building Meson wheel..."
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD || err "pip3 wheel failed"

step "Installing Meson..."
pip3 install --no-index --find-links dist meson || err "pip3 install failed"

step "Installing shell completions..."
install -vDm644 data/shell-completions/bash/meson /usr/share/bash-completion/completions/meson || err "bash completion failed"
install -vDm644 data/shell-completions/zsh/_meson /usr/share/zsh/site-functions/_meson || err "zsh completion failed"

cd "$SOURCES"
rm -rf meson-1.11.1

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Meson-1.11.1 - Instalacion completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Meson-1.11.1${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/lib/python3.14/site-packages/${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}meson${NC} - Sistema de construccion de alta productividad"
echo ""
echo -e "  Proposito: Meson es un sistema de construccion open source"
echo -e "  disenado para ser extremadamente rapido y amigable. Es"
echo -e "  utilizado por systemd, kmod, Xorg, GTK y muchos otros"
echo -e "  proyectos. Usa Ninja como backend de compilacion."
echo ""
