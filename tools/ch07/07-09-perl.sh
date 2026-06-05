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

step "Extracting perl-5.42.2..."
cd "$SOURCES"
tar -xf perl-5.42.2.tar.xz
cd perl-5.42.2

step "Configuring Perl..."
sh Configure -des                                         \
             -D prefix=/usr                               \
             -D vendorprefix=/usr                         \
             -D useshrplib                                \
             -D privlib=/usr/lib/perl5/5.42/core_perl     \
             -D archlib=/usr/lib/perl5/5.42/core_perl     \
             -D sitelib=/usr/lib/perl5/5.42/site_perl     \
             -D sitearch=/usr/lib/perl5/5.42/site_perl    \
             -D vendorlib=/usr/lib/perl5/5.42/vendor_perl \
             -D vendorarch=/usr/lib/perl5/5.42/vendor_perl || err "configure failed"

step "Compiling Perl..."
make -j$(nproc) || err "make failed"

step "Installing Perl..."
make install || err "make install failed"

cd "$SOURCES"
rm -rf perl-5.42.2

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Perl-5.42.2 - Instalacion completada   ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Perl-5.42.2 - Practical Extraction and Report Language${NC}"
echo -e "  Ubicacion:  ${BLUE}/usr/bin/perl${NC}"
echo ""
echo -e "  Binarios instalados:"
echo -e "    ${GREEN}perl${NC}      - Interprete de Perl"
echo -e "    ${GREEN}perl5.42.2${NC}- Version especifica (con patchlevel)"
echo -e "    ${GREEN}corelist${NC}   - Lista modulos core de Perl"
echo -e "    ${GREEN}cpan${NC}       - Instalador de modulos CPAN"
echo -e "    ${GREEN}pod2man${NC}    - Convierte POD -> man"
echo -e "    ${GREEN}pod2html${NC}   - Convierte POD -> HTML"
echo ""
echo -e "  Librerias instaladas:"
echo -e "    ${GREEN}libperl.so${NC} - Biblioteca compartida de Perl"
echo ""
echo -e "  Proposito: Perl es un potente lenguaje de scripting usado"
echo -e "  por herramientas de build (autoconf, automake), tests, y"
echo -e "  administracion del sistema. Indispensable para el toolchain."
echo ""
