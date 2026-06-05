<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 30. KDE Frameworks 6

-   [Prev](kf6-intro.md "KDE Frameworks 6 Pre-installation Configuration")

    KDE Frameworks 6 Pre-installation Configuration

-   [Next](kf-apps.md "KDE Frameworks 6 Based Applications")

    KDE Frameworks 6 Based Applications

-   [Up](kf6.md "Chapter 30. KDE Frameworks 6")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Building KDE Frameworks 6.26.0 (KF6) {#building-kde-frameworks-6.26.0-kf6}

<div class="sect1" lang="en">
KDE Frameworks is a collection of libraries based on top of Qt6 and QML derived from the previous KDE libraries. They can be used independent of the KDE Display Environment (Plasma 6).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

The instructions below build all of the KDE Frameworks packages in one step by using a bash script.

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/frameworks/6.26">https://download.kde.org/stable/frameworks/6.26</a>

-   Download MD5 sum: See Below

-   Download size: 112 MB

-   Estimated disk space required: 3.0 GB (205 MB installed)

-   Estimated build time: 12 SBU (using parallelism=8)
</div>

### KF6 Dependencies

#### Required

<a class="xref" href="extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a>, <a class="xref" href="../x/breeze-icons.md" title="breeze-icons-6.26.0">breeze-icons-6.26.0</a>, <a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>, <a class="xref" href="libdmtx.md" title="libdmtx-0.7.8">libdmtx-0.7.8</a>, <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, <a class="xref" href="../general/libical.md" title="libical-4.0.2">libical-4.0.2</a>, <a class="xref" href="../gnome/libsecret.md" title="libsecret-0.21.7">libsecret-0.21.7</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, <a class="xref" href="../server/lmdb.md" title="lmdb-0.9.35">lmdb-0.9.35</a>, <a class="xref" href="../general/qca.md" title="Qca-2.3.10">qca-2.3.10</a>, <a class="xref" href="../general/libqrencode.md" title="libqrencode-4.1.1">libqrencode-4.1.1</a>, <a class="xref" href="plasma-wayland-protocols.md" title="plasma-wayland-protocols-1.21.0">plasma-wayland-protocols-1.21.0</a>, <a class="xref" href="../general/python-modules.md#PyYAML" title="PyYAML-6.0.3">PyYAML-6.0.3</a>, <a class="xref" href="../general/shared-mime-info.md" title="shared-mime-info-2.4">shared-mime-info-2.4</a>, <a class="xref" href="../general/perl-modules.md#perl-uri" title="URI-5.34">URI-5.34</a>, and <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a> (required to download the packages)

#### Recommended

<a class="xref" href="../general/aspell.md" title="Aspell-0.60.8.2">Aspell-0.60.8.2</a> (Dictionary backend for Sonnet), <a class="xref" href="../basicnet/avahi.md" title="Avahi-0.8">Avahi-0.8</a> (DNS-SD backend for KDNSSD), <a class="xref" href="../general/ModemManager.md" title="ModemManager-1.24.2">ModemManager-1.24.2</a> (needed to build ModemManager-Qt), <a class="xref" href="../basicnet/networkmanager.md" title="NetworkManager-1.56.1">NetworkManager-1.56.1</a> (needed to build NetworkManager-Qt), <a class="xref" href="polkit-qt.md" title="Polkit-Qt-0.201.1">polkit-qt-0.201.1</a> (Authentication backend for KAuth), <a class="xref" href="../x/vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a> (Add support for Vulkan graphics drivers), and <a class="xref" href="../general/zxing-cpp.md" title="zxing-cpp-3.0.2">zxing-cpp-3.0.2</a> (Add support needed to build spectacle)

Furthermore, the instructions below assume that the environment has been set up as described in <a class="xref" href="kf6-intro.md" title="KDE Frameworks 6 Pre-installation Configuration">Introduction to KF6</a>.

#### Optional

<a class="xref" href="../general/bluez.md" title="BlueZ-5.86">BlueZ-5.86</a> (needed to build Bluez-Qt)

#### Runtime dependency for FrameworkIntegration

<a class="xref" href="../x/TTF-and-OTF-fonts.md#noto-fonts" title="Noto fonts">Noto fonts</a>

#### Additional recommended dependencies for kapidox

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (Run time), <a class="xref" href="../general/python-modules.md#doxypypy" title="Doxypypy-0.8.8.7">doxypypy-0.8.8.7</a>, <a class="xref" href="../general/python-modules.md#doxyqml" title="Doxyqml-0.5.3">doxyqml-0.5.3</a>, and <a class="xref" href="../general/python-modules.md#requests" title="Requests-2.34.2">requests-2.34.2</a>

#### Additional image formats support in KImageFormats

<a class="xref" href="../general/imath.md" title="Imath-3.2.2">Imath-3.2.2</a>, <a class="xref" href="../general/libavif.md" title="libavif-1.4.2">libavif-1.4.2</a>, <a class="xref" href="../general/libheif.md" title="libheif-1.23.0">libheif-1.23.0</a>, <a class="xref" href="../general/libjxl.md" title="libjxl-0.11.2">libjxl-0.11.2</a>, <a class="xref" href="../general/libraw.md" title="libraw-0.22.1">libraw-0.22.1</a>, <a class="ulink" href="https://github.com/AcademySoftwareFoundation/openexr">OpenEXR</a>

#### Optional dependencies for Solid

<a class="xref" href="../general/udisks2.md" title="UDisks-2.11.1">UDisks-2.11.1</a>, <a class="xref" href="../general/upower.md" title="UPower-1.91.2">UPower-1.91.2</a> and <a class="ulink" href="https://www.freedesktop.org/software/media-player-info/">media-player-info</a> (runtime)

#### Optional dependency for KWallet

<a class="xref" href="../postlfs/gpgmepp.md" title="gpgmepp-2.1.0">gpgmepp-2.1.0</a>

#### Optional dependencies for kcoreaddons

<a class="ulink" href="https://pypi.org/project/shiboken6/">Shiboken6</a> and <a class="ulink" href="https://pypi.org/project/PySide6/">PySide6</a>

#### Optional dictionary backends for Sonnet

<a class="ulink" href="http://hspell.ivrix.org.il/">Hspell</a> and <a class="ulink" href="https://hunspell.sourceforge.net/">Hunspell</a>

<div class="sect2" lang="en">
## Downloading KDE Frameworks {#downloading-kde-frameworks}

The easiest way to get the KDE Frameworks packages is to use a single <span class="command"><strong>wget</strong></span> to fetch them all at once:

```bash
url=https://download.kde.org/stable/frameworks/6.26/
wget -r -nH -nd -A '*.xz' -np $url

The options used here are:
  -r            recurse through child directories
  -nH           disable generation of host-prefixed directories
  -nd           do not create a hierarchy of directories
  -A '*.xz'     just get the *.xz files
  -np           don't get parent directories
```
</div>

<div class="sect2" lang="en">
## Setting Package Order {#setting-package-order}

The order of building files is important due to internal dependencies. Create the list of files in the proper order as follows:

```bash
cat > frameworks-6.26.0.md5 << "EOF"
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
0acc8e66cec4fb5e22121abcd1a4eac2  kfilemetadata-6.26.0.tar.xz
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
```

In the above list, notice that some files have been commented out with a hash (#) character.

<div class="itemizedlist">
-   The extra-cmake-modules entry has been commented out because it was built earlier in the <a class="xref" href="introduction.md" title="Chapter 29. Introduction to KDE">Introduction to KDE</a>.

-   This icon package is covered separately at <a class="xref" href="../x/breeze-icons.md" title="breeze-icons-6.26.0">breeze-icons-6.26.0</a>. It is separate to allow users that need these icons but do not need the full set of KF6 packages (e.g. <a class="xref" href="../lxqt/post-install.md" title="LXQt Desktop Final Instructions">LXQt-Post-Install</a>) to more easily install them. However they are a required dependency for several kf6 packages.
</div>
</div>

<div class="installation" lang="en">
## Installation of KDE Frameworks {#installation-of-kde-frameworks}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

When installing multiple packages in a script, the installation needs to be done as the root user. There are three general options that can be used to do this:

<div class="orderedlist">
1.  Run the entire script as the root user (not recommended).

2.  Use the <span class="command"><strong>sudo</strong></span> command from the <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> package.

3.  Use <span class="command"><strong>su -c "command arguments"</strong></span> (quotes required) which will ask for the root password for every iteration of the loop.
</div>

One way to handle this situation is to create a short <span class="command"><strong>bash</strong></span> function that automatically selects the appropriate method. Once the command is set in the environment, it does not need to be set again.

```bash
as_root()
{
  if   [ $EUID = 0 ];        then $*
  elif [ -x /usr/bin/sudo ]; then sudo $*
  else                            su -c \\"$*\\"
  fi
}

export -f as_root
```
</div>

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

If installing in <code class="filename">/opt</code> and there is an existing /opt/kf6 either as a regular directory or a symbolic link, it should be reinitialized (as <code class="systemitem">root</code>):

```bash
mv -v /opt/kf6 /opt/kf6.old                         &&
install -v -dm755           $KF6_PREFIX/{etc,share} &&
ln -sfv /etc/dbus-1         $KF6_PREFIX/etc         &&
ln -sfv /usr/share/dbus-1   $KF6_PREFIX/share       &&
ln -sfv /usr/share/polkit-1 $KF6_PREFIX/share       &&
install -v -dm755           $KF6_PREFIX/lib         &&
ln -sfv /usr/lib/systemd    $KF6_PREFIX/lib
```
</div>

First, start a subshell that will exit on error:

```bash
bash -e
```

Install all of the packages by running the following commands:

```bash
while read -r line; do

    # Get the file name, ignoring comments and blank lines
    if $(echo $line | grep -E -q '^ *$|^#' ); then continue; fi
    file=$(echo $line | cut -d" " -f2)

    pkg=$(echo $file|sed 's|^.*/||')          # Remove directory
    packagedir=$(echo $pkg|sed 's|\.tar.*||') # Package directory

    name=$(echo $pkg|sed 's|-6.*$||') # Isolate package name

    tar -xf $file
    pushd $packagedir

      # kapidox is a python module
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
            -W no-dev ..
      make
      as_root make install
    popd

  as_root rm -rf $packagedir
  as_root /sbin/ldconfig

done < frameworks-6.26.0.md5

exit
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Any modules that have been omitted can be installed later by using the same <span class="command"><strong>mkdir build; cd build; cmake; make; make install</strong></span> procedure as above.
</div>

Sometimes the installation paths are hardcoded into installed files. If the installed directory is not /usr, rename the directory and create a symlink:

```bash
mv -v /opt/kf6 /opt/kf6-6.26.0
ln -sfvn kf6-6.26.0 /opt/kf6
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_PREFIX_PATH=$QT6DIR`*: This switch is used to allow cmake to find the proper Qt libraries.

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply higher level of the compiler optimizations.

*`-D BUILD_TESTING=OFF`*: This switch is used to prevent building test programs and libraries that are of no use to an end user.

*`-D BUILD_PYTHON_BINDINGS=OFF`*: This switch is used to prevent building Python modules that require external optional dependencies.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">balooctl6, baloosearch6, balooshow6, checkXML6, kbuildsycoca6, kcmshell6, kded6, kde-geo-uri-handler, kiconfinder6, knewstuff-dialog6, kpackagetool6, kquitapp6, kreadconfig6, ksecretd, ksyntaxhighlighter6, ktelnetservice6, ktexteditor-script-tester6, ktrash6, kwalletd6, kwallet-query, kwriteconfig6, meinproc6, parsetrigrams6, and solid-hardware6</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libkdeinit6_klauncher.so, libKF6Archive.so, libKF6Attica.so, libKF6AuthCore.so, libKF6Baloo.so, libKF6BluezQt.so, libKF6Bookmarks.so, libKF6BookmarksWidgets.so, libKF6CalendarCore.so, libKF6CalendarEvents.so, libKF6Codecs.so, libKF6ColorScheme.so, libKF6Completion.so, libKF6ConfigCore.so, libKF6ConfigGui.so, libKF6ConfigQml.so, libKF6ConfigWidgets.so, libKF6Contacts.so, libKF6CoreAddons.so, libKF6Crash.so, libKF6DAV.so, libKF6DBusAddons.so, libKF6DNSSD.so, libKF6DocTools.so, libKF6FileMetaData.so, libKF6GlobalAccel.so, libKF6GuiAddons.so, libKF6Holidays.so, libKF6I18n.so, libKF6I18nLocaleData.so, libKF6I18nQml.so, libKF6IconThemes.so, libKF6IconWidgets.so, libKF6IdleTime.so, libKF6ItemModels.so, libKF6ItemViews.so, libKF6JobWidgets.so, libKF6KCMUtils.so, libKF6KCMUtilsCore.so, libKF6KCMUtilsQuick.so, libKF6KIOCore.so, libKF6KIOFileWidgets.so, libKF6KIOGui.so, libKF6KIOWidgets.so, libKF6ModemManagerQt.so, libKF6NetworkManagerQt.so, libKF6NewStuffCore.so, libKF6NewStuffWidgets.so, libKF6Notifications.so, libKF6NotifyConfig.so, libKF6Package.so, libKF6Parts.so, libKF6PeopleBackend.so, libKF6People.so, libKF6PeopleWidgets.so, libKF6Plotting.so, libKF6PrisonScanner.so, libKF6Prison.so, libKF6Pty.so, libKF6Purpose.so, libKF6PurposeWidgets.so, libKF6Runner.so, libKF6Service.so, libKF6Solid.so, libKF6SonnetCore.so, libKF6SonnetUi.so, libKF6StatusNotifierItem.so, libKF6Style.so, libKF6Su.so, libKF6Svg.so, libKF6Syndication.so, libKF6SyntaxHighlighting.so, libKF6TextEditor.so, libKF6TextTemplate.so, libKF6TextWidgets.so, libKF6ThreadWeaver.so, libKF6UnitConversion.so, libKF6UserFeedbackCore.so, libKF6UserFeedbackWidgets.so, libKF6Wallet.so, libKF6WidgetsAddons.so, libKF6WindowSystem.so, libKF6XmlGui.so, libKirigamiDelegates.so, libKirigamiDialogs.so, libKirigamiLayoutsPrivate.so, libKirigamiLayouts.so, libKirigamiPlatform.so, libKirigamiPolyfill.so, libKirigamiPrimitives.so, libKirigamiPrivate.so, libKirigami.so, libKirigamiLayouts.so, libkuriikwsfiltereng_private.so, libQuickCharts.so, and libQuickChartsControls.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/opt/kf6 (symlink to /opt/kf6-6.26.0) if installing in /opt</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------
  <a id="checkXML6"></a><span class="command"><span class="term"><strong>checkXML6</strong></span></span>                                     is a tool to check for syntax errors in KDE DocBook XML files
  <a id="kbuildsycoca6"></a><span class="command"><span class="term"><strong>kbuildsycoca6</strong></span></span>                             rebuilds the KService desktop file system configuration cache
  <a id="kcmshell6"></a><span class="command"><span class="term"><strong>kcmshell6</strong></span></span>                                     starts a single System Settings module, which can be useful when debugging problems with the System Settings application
  <a id="kded6"></a><span class="command"><span class="term"><strong>kded6</strong></span></span>                                             consolidates several small services into a single process
  <a id="kde-geo-uri-handler"></a><span class="command"><span class="term"><strong>kde-geo-uri-handler</strong></span></span>                 processes URIs that contain geolocation information
  <a id="kiconfinder6"></a><span class="command"><span class="term"><strong>kiconfinder6</strong></span></span>                               locates an icon based on it's name
  <a id="knewstuff-dialog6"></a><span class="command"><span class="term"><strong>knewstuff-dialog6</strong></span></span>                     displays a KNSRC file (which uses the KNewStuff framework) to the user
  <a id="kpackagetool6"></a><span class="command"><span class="term"><strong>kpackagetool6</strong></span></span>                             is a command line tool for managing KDE packages
  <a id="kquitapp6"></a><span class="command"><span class="term"><strong>kquitapp6</strong></span></span>                                     is a command line tool to safely force a D-Bus enabled application to exit
  <a id="kreadconfig6"></a><span class="command"><span class="term"><strong>kreadconfig6</strong></span></span>                               is a command line tool to retrieve values from KDE configuration files
  <a id="ksecretd"></a><span class="command"><span class="term"><strong>ksecretd</strong></span></span>                                       starts the KDE Wallet service, which is used to manage a user's saved passwords and certificates
  <a id="ksyntaxhighlighter6"></a><span class="command"><span class="term"><strong>ksyntaxhighlighter6</strong></span></span>                 is a command line syntax highlighter that uses the syntax definitions from KSyntaxHighlighting
  <a id="ktelnetservice6"></a><span class="command"><span class="term"><strong>ktelnetservice6</strong></span></span>                         is used by Konsole to handle Telnet and SSH schemes
  <a id="ktexteditor-script-tester6"></a><span class="command"><span class="term"><strong>ktexteditor-script-tester6</strong></span></span>   is a command line tool to validate and test Kate command scripts
  <a id="ktrash6"></a><span class="command"><span class="term"><strong>ktrash6</strong></span></span>                                         is a helper program to handle the KDE trash can
  <a id="kwalletd6"></a><span class="command"><span class="term"><strong>kwalletd6</strong></span></span>                                     is a compatibility service for KWallet, wrapping around libsecret and ksecretd
  <a id="kwallet-query"></a><span class="command"><span class="term"><strong>kwallet-query</strong></span></span>                             is a command line tool to query KWallet and ksecretd and list the entries in the user's wallet, as well as read or set a password
  <a id="kwriteconfig6"></a><span class="command"><span class="term"><strong>kwriteconfig6</strong></span></span>                             is a command line tool to write values in KDE configuration files
  <a id="meinproc6"></a><span class="command"><span class="term"><strong>meinproc6</strong></span></span>                                     converts DocBook files to HTML
  <a id="parsetrigrams6"></a><span class="command"><span class="term"><strong>parsetrigrams6</strong></span></span>                           is a command line tool to parse trigrams
  <a id="solid-hardware6"></a><span class="command"><span class="term"><strong>solid-hardware6</strong></span></span>                         is a command line tool to investigate available devices on a system
  ------------------------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kf6-intro.md "KDE Frameworks 6 Pre-installation Configuration")

    KDE Frameworks 6 Pre-installation Configuration

-   [Next](kf-apps.md "KDE Frameworks 6 Based Applications")

    KDE Frameworks 6 Based Applications

-   [Up](kf6.md "Chapter 30. KDE Frameworks 6")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
