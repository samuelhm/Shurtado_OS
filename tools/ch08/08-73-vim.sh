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

step "Extracting vim-9.2.0567..."
cd "$SOURCES"
tar -xf vim-9.2.0567.tar.gz
cd vim-9.2.0567

step "Setting system-wide vimrc path..."
echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h

step "Configuring Vim..."
./configure --prefix=/usr || err "configure failed"

step "Compiling Vim..."
make -j$(nproc) || err "make failed"

step "Installing Vim..."
make install || err "make install failed"

step "Creating symlinks..."
ln -sv vim /usr/bin/vi
for L in /usr/share/man/{,*/}man1/vim.1; do
    ln -sv vim.1 "$(dirname "$L")/vi.1"
done
ln -sv ../vim/vim92/doc /usr/share/doc/vim-9.2.0567

step "Creating /etc/vimrc..."
cat > /etc/vimrc << 'EOF'
" Begin /etc/vimrc
source $VIMRUNTIME/defaults.vim
let skip_defaults_vim=1
set nocompatible
set backspace=2
set mouse=
syntax on
if (&term == "xterm") || (&term == "putty")
  set background=dark
endif
" End /etc/vimrc
EOF

cd "$SOURCES"
rm -rf vim-9.2.0567

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Vim-9.2.0567 - Instalacion completada  ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Vim-9.2.0567 - Editor de texto avanzado${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/vim${NC}, ${BLUE}/usr/bin/vi${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}vim${NC}  - Vi IMproved, editor de texto con resaltado"
echo -e "    ${GREEN}vi${NC}   - Symlink a vim para compatibilidad POSIX"
echo -e "    ${GREEN}xxd${NC}  - Genera/revierte volcados hexadecimales"
echo ""
echo -e "  Archivos de configuracion:"
echo -e "    ${GREEN}/etc/vimrc${NC} - Configuracion global de Vim"
echo ""
echo -e "  Proposito: Vim es un potente editor de texto basado en vi"
echo -e "  con resaltado de sintaxis, multiples niveles de undo,"
echo -e "  soporte para plugins y lenguajes de scripting. Es el"
echo -e "  editor por defecto en la mayoria de sistemas Linux."
echo ""
