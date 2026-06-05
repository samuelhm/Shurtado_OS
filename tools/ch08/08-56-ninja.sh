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

step "Extracting ninja-1.13.2..."
cd "$SOURCES"
tar -xf ninja-1.13.2.tar.gz
cd ninja-1.13.2

step "Patching Ninja to respect NINJAJOBS environment variable..."
sed -i '/int Guess/a \
  int   j = 0;\
  char* jobs = getenv( "NINJAJOBS" );\
  if ( jobs != NULL ) j = atoi( jobs );\
  if ( j > 0 ) return j;\
' src/ninja.cc || err "sed patch failed"

step "Bootstrapping Ninja..."
python3 configure.py --bootstrap --verbose || err "bootstrap failed"

step "Installing Ninja..."
install -vm755 ninja /usr/bin/ || err "install ninja binary failed"
install -vDm644 misc/bash-completion /usr/share/bash-completion/completions/ninja || err "install bash completion failed"
install -vDm644 misc/zsh-completion /usr/share/zsh/site-functions/_ninja || err "install zsh completion failed"

cd "$SOURCES"
rm -rf ninja-1.13.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Ninja-1.13.2 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Ninja-1.13.2${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/ninja${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}ninja${NC} - Sistema de construccion enfocado en velocidad"
echo ""
echo -e "  Proposito: Ninja es un sistema de construccion pequeno y"
echo -e "  rapido. Es el backend por defecto de Meson y se usa para"
echo -e "  compilar kmod, systemd y otros paquetes del sistema."
echo -e "  Soporta paralelismo controlado via variable NINJAJOBS."
echo ""
