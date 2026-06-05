#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
VERSION="6.6.5"
PKG="plasma-${VERSION}"

: "${KF6_PREFIX:=/usr}"

[ -d "$SOURCES" ] || err "$SOURCES not found"

as_root() {
  if [ "$EUID" = 0 ]; then "$@"
  elif [ -x /usr/bin/sudo ]; then sudo "$@"
  else su -c "$*"
  fi
}

step "Downloading KDE Plasma ${VERSION}..."
cd "$SOURCES"
url="https://download.kde.org/stable/plasma/${VERSION}/"
wget -r -nH -nd -A '*.xz' -np "$url" || err "wget failed"

step "Creating package order list..."
cd "$SOURCES"
cat > plasma-${VERSION}.md5 << "EOF"
25a9cbe5025e2ad58bfb6a4c5fc9427a  kdecoration-6.6.5.tar.xz
84c079431cc0997e392198dfd6e1ca5d  libkscreen-6.6.5.tar.xz
ef8d950f5a47844bddc01573542543ea  libksysguard-6.6.5.tar.xz
a734cf35e033be4623d757cf5992862a  breeze-6.6.5.tar.xz
a16f886760a43eecbdc58a1a4dff987c  breeze-gtk-6.6.5.tar.xz
4b79f4b2765f7c1429a3335154b23989  layer-shell-qt-6.6.5.tar.xz
779d53a76bf71addcc9160cd778886fc  plasma-activities-6.6.5.tar.xz
f636fd952c5cf4d3f1fb8712d33e4739  libplasma-6.6.5.tar.xz
fd9edc2ef847dce1d1730b534e0b1c8e  kscreenlocker-6.6.5.tar.xz
adf854bae9e79432bd8c1e2d68489a3d  kglobalacceld-6.6.5.tar.xz
bdb0b9f18478d16b31246882fdcbc458  kwayland-6.6.5.tar.xz
4aa315479ff61033268e479f8049b53e  aurorae-6.6.5.tar.xz
deff92e89fe374886d87c39a3a00aa59  knighttime-6.6.5.tar.xz
38507b0decef9bb2918472632fc4f189  plasma-keyboard-6.6.5.tar.xz
5c7ed1b1eabed2599ba188085a2fd7dc  kwin-6.6.5.tar.xz
ba941eeb290b71661edcd8938ad97f65  kwin-x11-6.6.5.tar.xz
38193da75dbc561e3a6e8b2d58f665b7  plasma5support-6.6.5.tar.xz
0834ef652f0161d6d16dc5365a0471da  plasma-activities-stats-6.6.5.tar.xz
0f52a09bc36fd4ed1663dba070c62c51  kpipewire-6.6.5.tar.xz
5b0b456056d6f7db63523de7b9841ef7  plasma-workspace-6.6.5.tar.xz
1607ca3340f7c48a0339d2d9457b02cb  plasma-disks-6.6.5.tar.xz
78a2f5d27ca151f8c563390a7f5d7559  bluedevil-6.6.5.tar.xz
3262889e5dc75d1d667ac2c888d977a9  kde-gtk-config-6.6.5.tar.xz
3745e4e372efc0ec815517b6a7dd7eb8  kmenuedit-6.6.5.tar.xz
56c43a69c2ff095eca4fc7481c89df7e  kscreen-6.6.5.tar.xz
c50da5c0ed8581df0c3dc4ce0a3c5b4a  kwallet-pam-6.6.5.tar.xz
a07784c041bfed130e3c3c3d9f1ba826  kwrited-6.6.5.tar.xz
094fb6b6728c861f8e91dfd9dc5bfb9b  milou-6.6.5.tar.xz
91a445df344fff122977f62bd3e641d0  plasma-nm-6.6.5.tar.xz
7df4d92581b4c030fb812ba7b185332e  plasma-pa-6.6.5.tar.xz
c47fe68afb44e7338a72761a70dd829e  plasma-workspace-wallpapers-6.6.5.tar.xz
dbe1e22db3512b54a644d3ca03e3c5bc  polkit-kde-agent-1-6.6.5.tar.xz
2b04b0b70e0d95768de847c60023fc2b  powerdevil-6.6.5.tar.xz
2f8a00c1bbaa8611ddbc16ad1446b0e8  plasma-desktop-6.6.5.tar.xz
5f40c1b6efba30ade6d0094478beefa5  kgamma-6.6.5.tar.xz
01959d67ddccdb37eba1b73548787e84  ksshaskpass-6.6.5.tar.xz
#b622f7d0d55d747982bf16c932384d6a  plasma-sdk-6.6.5.tar.xz
9a0910f272e67858f8ac942e314bb921  sddm-kcm-6.6.5.tar.xz
#34ae88fcf0acb962c25ceeb10910c807  discover-6.6.5.tar.xz
#6ab1452f59a365c7b32247ae7c26061e  breeze-grub-6.6.5.tar.xz
#c99b82d007e8dfe8e1eb30c59d5a0a24  breeze-plymouth-6.6.5.tar.xz
7eb85aedea5e6bafd1dffde6b5b85aff  kactivitymanagerd-6.6.5.tar.xz
1fd053c36d6ab9c21085f26fb359e447  plasma-integration-6.6.5.tar.xz
#d9578c2cdbe21c63783dd1028b386660  plymouth-kcm-6.6.5.tar.xz
413911c21cc4085e58095fba76e5856f  xdg-desktop-portal-kde-6.6.5.tar.xz
1ce72a462b97556cabfe03ddb258040b  drkonqi-6.6.5.tar.xz
6e4b6f865c56eaf6af7e0dbe9576ff7f  plasma-vault-6.6.5.tar.xz
#bf05373a1b961d1fed8cc4cea0f7ef49  plasma-browser-integration-6.6.5.tar.xz
f1cb86e32f4a075dafce94f4a06b1a85  kde-cli-tools-6.6.5.tar.xz
6f085c89277d2f6e038787ff30259274  systemsettings-6.6.5.tar.xz
#debc51e8b6a57ad81bcab9f3b60a77d2  plasma-mobile-6.6.5.tar.xz
#88f80202f73683ab0988f8b36f587706  plasma-nano-6.6.5.tar.xz
830a6e533e38b52aca0221b89edb04d6  plasma-firewall-6.6.5.tar.xz
12238450a69e11e2313a8c54722ad935  plasma-systemmonitor-6.6.5.tar.xz
d4e332092e073561afff420bbca875ab  qqc2-breeze-style-6.6.5.tar.xz
295260a6cc9b65ed5f6921a6eebcbd43  ksystemstats-6.6.5.tar.xz
45a03472ef7d1731758537188cf14b2b  oxygen-sounds-6.6.5.tar.xz
10ac516b1c52877f554fd72a2fe97776  kdeplasma-addons-6.6.5.tar.xz
#83b4d6cb63f25c60b2ac3a20696b34fd  flatpak-kcm-6.6.5.tar.xz
39d8d412ab5e55aa57c9e3d1d1a394c8  plasma-welcome-6.6.5.tar.xz
7712dcb535f8c71d0e62272882378200  ocean-sound-theme-6.6.5.tar.xz
f246fe30703510a4d877d9939ff40c7e  print-manager-6.6.5.tar.xz
69c8841d89191259f2e6247ffe455742  wacomtablet-6.6.5.tar.xz
#84a4986076f57f3f2f9b56a1328201fd  kwayland-integration-6.6.5.tar.xz
#54edfb5130bf416592258de0456b638f  krdp-6.6.5.tar.xz
66609e0e0291b15bbd98eabf7184204f  oxygen-6.6.5.tar.xz
#90d3231a6464ee640a6c47c19d462b4c  plasma-dialer-6.6.5.tar.xz
#9f124aa2b87c142b099e1bb2d18dc6a9  spacebar-6.6.5.tar.xz
2a59023f61264bdf976519fedb2f8c69  spectacle-6.6.5.tar.xz
#3b089920276a67f9887530e7a81a368f  plasma-login-manager-6.6.5.tar.xz
474a4551dfb6a7897cef98480fc451f7  plasma-setup-6.6.5.tar.xz
3374df47cc9ecb0d940ce68ca212cb89  kinfocenter-6.6.5.tar.xz
b481182e12e3438774c72d8f073b96ff  plasma-thunderbolt-6.6.5.tar.xz
EOF

step "Building KDE Plasma ${VERSION} (all packages, ninja backend)..."
while read -r line; do
    if $(echo $line | grep -E -q '^ *$|^#' ); then continue; fi
    file=$(echo $line | cut -d" " -f2)
    pkg=$(echo $file|sed 's|^.*/||')
    packagedir=$(echo $pkg|sed 's|\.tar.*||')

    tar -xf $file
    pushd $packagedir
       mkdir build
       cd    build
       cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
             -D CMAKE_INSTALL_LIBEXECDIR=libexec \
             -D CMAKE_BUILD_TYPE=Release         \
             -D BUILD_QT5=OFF                    \
             -D BUILD_TESTING=OFF                \
             -W no-dev -G Ninja .. || err "cmake failed for $packagedir"
       ninja || err "ninja failed for $packagedir"
       as_root ninja install
    popd
    as_root rm -rf $packagedir
    as_root /sbin/ldconfig
done < plasma-${VERSION}.md5

step "Setting up session links..."
install -dvm 755 /usr/share/xsessions
cd /usr/share/xsessions
[ -e plasma.desktop ] || ln -sfv $KF6_PREFIX/share/xsessions/plasmax11.desktop .

install -dvm 755 /usr/share/wayland-sessions
cd /usr/share/wayland-sessions
[ -e plasmawayland.desktop ] || ln -sfv $KF6_PREFIX/share/wayland-sessions/plasma.desktop .

install -dvm 755 /usr/share/xdg-desktop-portal
cd /usr/share/xdg-desktop-portal
[ -e kde-portals.conf ] || ln -sfv $KF6_PREFIX/share/xdg-desktop-portal/kde-portals.conf .

install -dvm 755 /usr/share/xdg-desktop-portal/portals
cd /usr/share/xdg-desktop-portal/portals
[ -e kde.portal ] || ln -sfv $KF6_PREFIX/share/xdg-desktop-portal/portals/kde.portal .

step "Cleanup..."
cd "$SOURCES"
rm -f *.tar.xz
rm -f plasma-${VERSION}.md5

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  KDE Plasma ${VERSION} (ninja) - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Ubicacion:  ${BLUE}$KF6_PREFIX${NC}"
echo -e "  Backend:    ${BLUE}cmake + Ninja${NC}"
echo -e "  Flags:      Release, shared, BUILD_QT5=OFF"
echo -e "  Paquetes:   ~40 modulos Plasma"
echo ""
echo -e "  Proposito: Entorno de escritorio KDE Plasma 6 completo."
echo -e "  Incluye kwin, plasma-desktop, systemsettings, etc."
echo ""
