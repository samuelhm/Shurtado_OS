#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
LIBDIR="$SOURCES/xorg-libraries"

: "${XORG_PREFIX:=/usr}"
: "${XORG_CONFIG:=--prefix=$XORG_PREFIX --sysconfdir=/etc --localstatedir=/var --disable-static}"

[ -d "$SOURCES" ] || err "$SOURCES not found"

as_root() {
  if [ "$EUID" = 0 ]; then "$@"
  elif [ -x /usr/bin/sudo ]; then sudo "$@"
  else su -c "$*"
  fi
}

step "Creating library list..."
mkdir -p "$LIBDIR"
cd "$LIBDIR"

cat > lib-7.md5 << "EOF"
6ad67d4858814ac24e618b8072900664  xtrans-1.6.0.tar.xz
b617a053d2003cc81309f4e13d01379c  libX11-1.8.13.tar.xz
ea8149187a26e9df6dbd94a60b3d8da0  libXext-1.3.7.tar.xz
c5cc0942ed39c49b8fcd47a427bd4305  libFS-1.0.10.tar.xz
d1ffde0a07709654b20bada3f9abdd16  libICE-1.1.2.tar.xz
3aeeea05091db1c69e6f768e0950a431  libSM-1.2.6.tar.xz
ec09c90a1cfd2c0630321d366a5e7203  libXScrnSaver-1.2.5.tar.xz
9acd189c68750b5028cf120e53c68009  libXt-1.3.1.tar.xz
1ef8065f0284e76c2238770365012ab2  libXmu-1.3.1.tar.xz
cdc7a83243dba674b1ea3c365a1deab1  libXpm-3.5.19.tar.xz
2a9793533224f92ddad256492265dd82  libXaw-1.0.16.tar.xz
baa39ada682dd524491a165bb0dfc708  libXfixes-6.0.2.tar.xz
132816d5efccb883bbc2bf45eb905770  libXcomposite-0.4.7.tar.xz
4c54dce455d96e3bdee90823b0869f89  libXrender-0.9.12.tar.xz
5ce55e952ec2d84d9817169d5fdb7865  libXcursor-1.2.3.tar.xz
72bb73f2a07f81784ad69a39d7df1da2  libXdamage-1.1.7.tar.xz
3cba344d6b351cf308114865afa0d91e  libfontenc-1.1.9.tar.xz
66e03e3405d923dfaf319d6f2b47e3da  libXfont2-2.0.7.tar.xz
d378be0fcbd1f689f9a132e0d642bc4b  libXft-2.3.9.tar.xz
2b1cde310bc361464df43276fb969adf  libXi-1.8.3.tar.xz
5f3f5754a40730d1518233a60ba5c48e  libXinerama-1.1.6.tar.xz
b550dfa388292a821aecdd52acecc94c  libXrandr-1.5.5.tar.xz
5014282a08b54ec0edfa73c5cf9ae2c1  libXres-1.2.3.tar.xz
b62dc44d8e63a67bb10230d54c44dcb7  libXtst-1.2.5.tar.xz
8a26503185afcb1bbd2c65e43f775a67  libXv-1.0.13.tar.xz
de4227c5722a8f5ca5748f3ef524aeee  libXvMC-1.0.15.tar.xz
543164f1239fbe92cc0a9128d8da88e9  libXxf86dga-1.1.7.tar.xz
bea9e3707fae6c3275769e771006fa0f  libXxf86vm-1.1.7.tar.xz
0c11ea502b531e59563a9aa7979146fc  libpciaccess-0.19.tar.xz
fa0faa5b6a8e726186c535d73712ccea  libxkbfile-1.2.0.tar.xz
9805be7e18f858bed9938542ed2905dc  libxshmfence-1.3.3.tar.xz
53b72ce969745f8d3e41175d6549ce0b  libXpresent-1.0.2.tar.xz
EOF

step "Downloading Xorg libraries..."
mkdir -p lib
cd lib
grep -v '^#' ../lib-7.md5 | awk '{print $2}' | wget -i- -c -B https://www.x.org/pub/individual/lib/ || err "download failed"
md5sum -c ../lib-7.md5 || err "checksum failed"

step "Installing Xorg libraries..."
export -f as_root

for package in $(grep -v '^#' ../lib-7.md5 | awk '{print $2}'); do
  packagedir="${package%.tar.?z*}"
  echo -e "${BLUE}[STEP]${NC} Building $packagedir"
  tar -xf "$package"
  pushd "$packagedir" > /dev/null
  docdir="--docdir=$XORG_PREFIX/share/doc/$packagedir"

  case $packagedir in
    libXfont2-[0-9]*)
      ./configure $XORG_CONFIG $docdir --disable-devel-docs
      ;;
    libXt-[0-9]*)
      ./configure $XORG_CONFIG $docdir --with-appdefaultdir=/etc/X11/app-defaults
      ;;
    libXpm-[0-9]*)
      ./configure $XORG_CONFIG $docdir --disable-open-zfile
      ;;
    libpciaccess*|libxkbfile*)
      meson setup --prefix="$XORG_PREFIX" --buildtype=release build
      ninja -C build
      as_root ninja -C build install
      popd > /dev/null
      rm -rf "$packagedir"
      as_root /sbin/ldconfig
      continue
      ;;
    *)
      ./configure $XORG_CONFIG $docdir
      ;;
  esac

  make -j$(nproc)
  as_root make install
  popd > /dev/null
  rm -rf "$packagedir"
  as_root /sbin/ldconfig
done

step "Creating symlinks for compatibility..."
as_root ln -sv "$XORG_PREFIX/lib/X11" /usr/lib/X11 2>/dev/null || true
as_root ln -sv "$XORG_PREFIX/include/X11" /usr/include/X11 2>/dev/null || true

step "Cleanup..."
cd "$SOURCES"
rm -rf "$LIBDIR"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Xorg Libraries - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Librerias:  ${GREEN}~30 bibliotecas (libX11, libXext, libXt, etc.)${NC}"
echo -e "  Ubicacion:  ${BLUE}$XORG_PREFIX/lib/${NC}"
echo ""
echo -e "  Proposito: Coleccion completa de librerias Xorg necesarias"
echo -e "  para cualquier aplicacion grafica X11."
echo ""
