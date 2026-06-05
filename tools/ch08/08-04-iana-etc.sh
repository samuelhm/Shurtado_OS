#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
[ -d "$SOURCES" ] || err "$SOURCES not found. Is this a chroot?"

step "Extracting Iana-Etc..."
cd "$SOURCES"
tar -xf iana-etc-20260529.tar.gz
cd iana-etc-20260529

step "Installing Iana-Etc (copying services and protocols to /etc)..."
cp -v services protocols /etc || err "cp failed"

cd "$SOURCES"
rm -rf iana-etc-20260529

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Iana-Etc - Instalacion completada      ${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Paquete:    ${BLUE}Iana-Etc-20260529${NC}"
echo -e "  Ubicacion:  ${BLUE}/etc/${NC}"
echo ""
echo -e "  Archivos instalados:"
echo -e "    ${GREEN}/etc/services${NC}  - Mapeo de puertos y protocolos"
echo -e "    ${GREEN}/etc/protocols${NC} - Protocolos DARPA Internet"
echo ""
echo -e "  Proposito: Datos para servicios de red y protocolos"
echo -e "  estandarizados por IANA (Internet Assigned Numbers Authority)."
echo ""
