#!/bin/bash
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; BLUE='\033[0;34m'; NC='\033[0m'
err() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }

SOURCES="/sources"
VERSION="6.26.0"
PKG="frameworks-${VERSION}"

: "${KF6_PREFIX:=/usr}"
: "${QT6DIR:=/usr}"

[ -d "$SOURCES" ] || err "$SOURCES not found"

as_root() {
  if [ "$EUID" = 0 ]; then "$@"
  elif [ -x /usr/bin/sudo ]; then sudo "$@"
  else su -c "$*"
  fi
}

step "Downloading KDE Frameworks ${VERSION}..."
cd "$SOURCES"
url="https://download.kde.org/stable/frameworks/${VERSION}/"
wget -r -nH -nd -A '*.xz' -np "$url" || err "wget failed"

step "Creating package order list..."
cd "$SOURCES"
cat > frameworks-${VERSION}.md5 << "EOF"
a2cca7d002ff79895a5602f31b7adc34  attica-6.26.0.tar.xz
#05432f3fcbc3ee0de5765413f5c8b436  extra-cmake-modules-6.26.0.tar.xz
639d75c85532f6e944f023c2adf26619  kapidox-6.26.0.tar.xz
8bab196cc1e168ab2d7d8e30d4dac3ce  karchive-6.26.0.tar.xz
6dce3d959c23a40c60eaa8b9d03eb9cd  kcodecs-6.26.0.tar.xz
d184d34f565a550a57f894775d334031  kconfig-6.26.0.tar.xz
700293a16e1a485a624999e696e455e6  kcoreaddons-6.26.0.tar.xz
d4e5436a80e2ffed6894f636c4acffd0  kdbusaddons-6.26.0.tar.xz
e86ab381b192401dbdf6f44ffe9412c0  kdnssd-6.26.0.tar.xz
ffbfb63571e6527cdfda9ea461a6eccc  kguiaddons-6.26.0.tar.xz
2e00a2b5a22b1c0a845f6a073f879d68  ki18n-6.26.0.tar.xz
9c173c895f89c904154063c361d9bae4  kidletime-6.26.0.tar.xz
b4a6e3a193b2fe9e3f61401ab9612889  kimageformats-6.26.0.tar.xz
d06e0c3209656f9801ee0afd41a57c65  kitemmodels-6.26.0.tar.xz
3edcd8427056b50bc6953b91f8019a02  kitemviews-6.26.0.tar.xz
ea37a38c3a7e8dd2d50cc25d93e820d7  kplotting-6.26.0.tar.xz
7af44925abe882a54f971e2ac6c32196  kwidgetsaddons-6.26.0.tar.xz
0f4bbe9d04716d96cd53aada98699f5a  kwindowsystem-6.26.0.tar.xz
cfd9bcf4ff1bc3e3b077724437c491a9  networkmanager-qt-6.26.0.tar.xz
dc8d2c5864ace71f21fd4283014d9bf1  solid-6.26.0.tar.xz
7e057ca5817513d95ad888efa66efbe7  sonnet-6.26.0.tar.xz
48d5e5bd325ec161b79989e866ec8447  threadweaver-6.26.0.tar.xz
5b9b6e3e5e67b266cf2c44171ee24e6b  kauth-6.26.0.tar.xz
0e08e172407c1f439a5d28b57a58b43a  kcompletion-6.26.0.tar.xz
e157829b8d818f3ed531e961d82b58f3  kcrash-6.26.0.tar.xz
608b711a0816b02efe462b7c4990ab66  kdoctools-6.26.0.tar.xz
0409544a00877aa116322b01485a62b2  kpty-6.26.0.tar.xz
fbbef8c6d53b65798b9430bafe057e31  kunitconversion-6.26.0.tar.xz
8aa86e88550f1a194d8a1c71bd28197a  kcolorscheme-6.26.0.tar.xz
2611bff0e28c64875b7647d1a01445b7  kconfigwidgets-6.26.0.tar.xz
fb37e1f6be3ca4e6d92ab3d79accab67  kservice-6.26.0.tar.xz
4776b6f4c593963aafa88b5797e7f2f2  kglobalaccel-6.26.0.tar.xz
7c596eb03bda86453bcf9e092c3b4792  kpackage-6.26.0.tar.xz
76ebf709e9089354a575baececdb3d85  kdesu-6.26.0.tar.xz
349b947fdd44ee9e86dbdec811208bbd  kiconthemes-6.26.0.tar.xz
115557a56f1bcbeb76e8047a85ddbf7b  knotifications-6.26.0.tar.xz
abbea8478249d1e10092e166293a9d33  kjobwidgets-6.26.0.tar.xz
97560d139bc95551401e9369b95167f1  ktextwidgets-6.26.0.tar.xz
5eed71a1e8381f748a8ff652e930d419  kxmlgui-6.26.0.tar.xz
5718320c086edafdcfd1008b0d1a341b  kbookmarks-6.26.0.tar.xz
d5f11d5aa392ac79d76e387ae73a5f88  kwallet-6.26.0.tar.xz
1687b7bc4bdb9bd76282a6b91de6ef6d  kded-6.26.0.tar.xz
9f3a43b9ebfabae83f0b4031cba44298  kio-6.26.0.tar.xz
e77c1e45d7233fc66f0f62aca42961c5  kdeclarative-6.26.0.tar.xz
b672eee8d5acaae52502523c94c712a8  kirigami-6.26.0.tar.xz
452f7682196473501dbf05c7bb4a0ffb  kcmutils-6.26.0.tar.xz
765cd6596beefb9ab87bd43ba756a4b5  syndication-6.26.0.tar.xz
87d44ce55f213b6a0ff74c6a5aa56179  knewstuff-6.26.0.tar.xz
d2523a94c22c535734713fe7cf2e54c9  frameworkintegration-6.26.0.tar.xz
d402fa549abd0fe19c74674691490531  kparts-6.26.0.tar.xz
98581c72900fc7e1a5493878d11567ca  syntax-highlighting-6.26.0.tar.xz
6c1d954c32c9f5a56b9cdf9de9f2673b  ktexteditor-6.26.0.tar.xz
ee52712f76323ba6081951ef5389e636  modemmanager-qt-6.26.0.tar.xz
0a56830e3e064d3279cce47274b70a39  kcontacts-6.26.0.tar.xz
f8d4b92cb131cdb3a936575b12c9e6a1  kpeople-6.26.0.tar.xz
41385c259c2a421569e91ceae40eb4a8  bluez-qt-6.26.0.tar.xz
0acc8e66cec4fb5e21abcd1a4eac2  kfilemetadata-6.26.0.tar.xz
cd768240ac4f5ab827ad8e3e2e4cdbde  baloo-6.26.0.tar.xz
#0a8a87904eab97f3f3c8dffb82756db1  breeze-icons-6.26.0.tar.xz
a720de410905040752370f3be1317ac9  krunner-6.26.0.tar.xz
edadfb6aa1e74af9ae71a335f4fe27ed  prison-6.26.0.tar.xz
32ed9af7586b5a31b34ebde4debbec9a  qqc2-desktop-style-6.26.0.tar.xz
a9ff5a91cb3dca93d7067047c2d0d9a2  kholidays-6.26.0.tar.xz
55407e04f6090617d5b6693421263793  purpose-6.26.0.tar.xz
191296613776c1b37ea1ef11b1f019b1  kcalendarcore-6.26.0.tar.xz
ee81a6bd9aa43276e292dbcd08d42b81  kquickcharts-6.26.0.tar.xz
2311ecc1132d37c3d0d58377e60a6109  knotifyconfig-6.26.0.tar.xz
1ec4f00e10910054237677b092191d2b  kdav-6.26.0.tar.xz
2cd7ec2de902bcb2032d8a178013d9e2  kstatusnotifieritem-6.26.0.tar.xz
d9a8029e6311a4b4b3bf28079011d7f6  ksvg-6.26.0.tar.xz
470c4a903d9c811f9901d68211a850e2  ktexttemplate-6.26.0.tar.xz
00bd47545dd21868e0dab886232f9dca  kuserfeedback-6.26.0.tar.xz
EOF

step "Building KDE Frameworks ${VERSION} (all packages, ninja backend)..."
while read -r line; do
    if $(echo $line | grep -E -q '^ *$|^#' ); then continue; fi
    file=$(echo $line | cut -d" " -f2)
    pkg=$(echo $file|sed 's|^.*/||')
    packagedir=$(echo $pkg|sed 's|\.tar.*||')
    name=$(echo $pkg|sed 's|-6.*$||')

    tar -xf $file
    pushd $packagedir

      case $name in
        kapidox)
          pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
          as_root pip3 install --no-index --find-links dist --no-user kapidox
          popd
          rm -rf $packagedir
          continue
          ;;
      esac

      mkdir build
      cd    build

      cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
            -D CMAKE_INSTALL_LIBEXECDIR=libexec \
            -D CMAKE_PREFIX_PATH=$QT6DIR        \
            -D CMAKE_SKIP_INSTALL_RPATH=ON      \
            -D CMAKE_BUILD_TYPE=Release         \
            -D BUILD_TESTING=OFF                \
            -D BUILD_PYTHON_BINDINGS=OFF        \
            -W no-dev -G Ninja .. || err "cmake failed for $name"
      ninja || err "ninja failed for $name"
      as_root ninja install
    popd

    as_root rm -rf $packagedir
    as_root /sbin/ldconfig

done < frameworks-${VERSION}.md5

step "Cleanup..."
cd "$SOURCES"
rm -f *.tar.xz
rm -f frameworks-${VERSION}.md5

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  KDE Frameworks ${VERSION} (ninja) - Instalacion completada${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "  Ubicacion:  ${BLUE}$KF6_PREFIX${NC}"
echo -e "  Backend:    ${BLUE}cmake + Ninja${NC}"
echo -e "  Flags:      CMAKE_PREFIX_PATH=$QT6DIR, Release, shared"
echo -e "  Paquetes:   57 modulos KF6"
echo ""
echo -e "  Proposito: Librerias base de KDE (KF6). Requeridas por"
echo -e "  Plasma y todas las aplicaciones KDE."
echo ""
