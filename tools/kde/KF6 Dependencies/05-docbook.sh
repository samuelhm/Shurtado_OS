#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"

# ============================================================
# Part 1: docbook-xml-4.5
# ============================================================
DOCBOOK_XML="docbook-xml-4.5"
DOCBOOK_XML_ZIP="$DOCBOOK_XML.zip"
DOCBOOK_XML_URL="https://archive.docbook.org/xml/4.5/$DOCBOOK_XML_ZIP"

[ -d "$SOURCES" ] || err "$SOURCES not found"

step "Downloading $DOCBOOK_XML..."
cd "$SOURCES"
[ -f "$DOCBOOK_XML_ZIP" ] || wget "$DOCBOOK_XML_URL"
[ -f "$DOCBOOK_XML_ZIP" ] || err "download failed"

step "Installing $DOCBOOK_XML..."
mkdir -p docbook-xml-install && cd docbook-xml-install
unzip -o ../"$DOCBOOK_XML_ZIP" > /dev/null

install -v -d -m755 /usr/share/xml/docbook/xml-dtd-4.5
install -v -d -m755 /etc/xml
cp -v -af --no-preserve=ownership \
    catalog.xml docbook.cat *.dtd ent/ *.mod \
    /usr/share/xml/docbook/xml-dtd-4.5

xmlcatalog --noout --add "rewriteSystem"        \
    "http://www.oasis-open.org/docbook/xml/4.5" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5" \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml

xmlcatalog --noout --add "rewriteURI"           \
    "http://www.oasis-open.org/docbook/xml/4.5" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5" \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml

if [ ! -e /etc/xml/catalog ]; then
    xmlcatalog --noout --create /etc/xml/catalog
fi

xmlcatalog --noout --add "delegatePublic"                   \
    "-//OASIS//ENTITIES DocBook XML"                        \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/catalog.xml" \
    /etc/xml/catalog

xmlcatalog --noout --add "delegatePublic"                   \
    "-//OASIS//DTD DocBook XML"                             \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/catalog.xml" \
    /etc/xml/catalog

xmlcatalog --noout --add "delegateSystem"                   \
    "http://www.oasis-open.org/docbook/"                    \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/catalog.xml" \
    /etc/xml/catalog

xmlcatalog --noout --add "delegateURI"                      \
    "http://www.oasis-open.org/docbook/"                    \
    "file:///usr/share/xml/docbook/xml-dtd-4.5/catalog.xml" \
    /etc/xml/catalog

for DTDVERSION in 4.1.2 4.2 4.3 4.4
do
  xmlcatalog --noout --add "public"                                  \
    "-//OASIS//DTD DocBook XML V$DTDVERSION//EN"                     \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION/docbookx.dtd" \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml

  xmlcatalog --noout --add "rewriteSystem"              \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5"         \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml

  xmlcatalog --noout --add "rewriteURI"                 \
    "http://www.oasis-open.org/docbook/xml/$DTDVERSION" \
    "file:///usr/share/xml/docbook/xml-dtd-4.5"         \
    /usr/share/xml/docbook/xml-dtd-4.5/catalog.xml
done

cd "$SOURCES"
rm -rf docbook-xml-install

# ============================================================
# Part 2: docbook-xsl-nons-1.79.2
# ============================================================
DOCBOOK_XSL="docbook-xsl-nons-1.79.2"
DOCBOOK_XSL_TAR="$DOCBOOK_XSL.tar.bz2"
DOCBOOK_XSL_URL="https://github.com/docbook/xslt10-stylesheets/releases/download/release/1.79.2/$DOCBOOK_XSL_TAR"
DOCBOOK_XSL_PATCH="$DOCBOOK_XSL-stack_fix-1.patch"
DOCBOOK_XSL_PATCH_URL="https://www.linuxfromscratch.org/patches/blfs/svn/$DOCBOOK_XSL_PATCH"

step "Downloading $DOCBOOK_XSL..."
cd "$SOURCES"
[ -f "$DOCBOOK_XSL_TAR" ]   || wget "$DOCBOOK_XSL_URL"
[ -f "$DOCBOOK_XSL_TAR" ]   || err "download failed"
[ -f "$DOCBOOK_XSL_PATCH" ] || wget "$DOCBOOK_XSL_PATCH_URL"
[ -f "$DOCBOOK_XSL_PATCH" ] || err "patch download failed"

step "Extracting $DOCBOOK_XSL..."
rm -rf "$DOCBOOK_XSL"
tar -xf "$DOCBOOK_XSL_TAR"
cd "$DOCBOOK_XSL"

step "Applying stack overflow patch..."
patch -Np1 -i ../"$DOCBOOK_XSL_PATCH" || err "patch failed"

step "Installing $DOCBOOK_XSL..."
install -v -m755 -d /usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2

cp -v -R VERSION assembly common eclipse epub epub3 extensions fo        \
         highlighting html htmlhelp images javahelp lib manpages params  \
         profiling roundtrip slides template tests tools webhelp website \
         xhtml xhtml-1_1 xhtml5                                          \
    /usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2

ln -svf VERSION /usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2/VERSION.xsl

install -v -m644 -D README \
                    /usr/share/doc/docbook-xsl-nons-1.79.2/README.txt

install -v -m644    RELEASE-NOTES* NEWS* \
                    /usr/share/doc/docbook-xsl-nons-1.79.2

step "Configuring docbook-xsl catalog..."
if [ ! -e /etc/xml/catalog ]; then
    xmlcatalog --noout --create /etc/xml/catalog
fi

xmlcatalog --noout --add "rewriteSystem" \
    "https://cdn.docbook.org/release/xsl-nons/1.79.2" \
    "file:///usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
    "https://cdn.docbook.org/release/xsl-nons/1.79.2" \
    "file:///usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
    "https://cdn.docbook.org/release/xsl-nons/current" \
    "file:///usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
    "https://cdn.docbook.org/release/xsl-nons/current" \
    "file:///usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteSystem" \
    "http://docbook.sourceforge.net/release/xsl/current" \
    "file:///usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2" \
    /etc/xml/catalog

xmlcatalog --noout --add "rewriteURI" \
    "http://docbook.sourceforge.net/release/xsl/current" \
    "file:///usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2" \
    /etc/xml/catalog

cd "$SOURCES"
rm -rf "$DOCBOOK_XSL"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  docbook-xml 4.5 + docbook-xsl-nons 1.79.2${NC}"
echo -e "${GREEN}  Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  XML DTD:    ${BLUE}/usr/share/xml/docbook/xml-dtd-4.5${NC}"
echo -e "  XSL:        ${BLUE}/usr/share/xml/docbook/xsl-stylesheets-nons-1.79.2${NC}"
echo -e "  Catalog:    ${BLUE}/etc/xml/catalog${NC}"
echo -e "  Fuente:     ${BLUE}docs/blfs/pst/docbook.md${NC}"
echo ""
