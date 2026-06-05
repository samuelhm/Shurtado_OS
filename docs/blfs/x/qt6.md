<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](pangomm2.md "Pangomm-2.56.1")

    Pangomm-2.56.1

-   [Next](qtwebengine.md "QtWebEngine-6.11.1")

    QtWebEngine-6.11.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Qt-6.11.1 {#qt-6.11.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Qt6 {#introduction-to-qt6}

<span class="application">Qt6</span> is a cross-platform application framework that is widely used for developing application software with a graphical user interface (GUI) (in which cases <span class="application">Qt6</span> is classified as a widget toolkit), and also used for developing non-GUI programs such as command-line tools and consoles for servers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.qt.io/archive/qt/6.11/6.11.1/single/qt-everywhere-src-6.11.1.tar.xz">https://download.qt.io/archive/qt/6.11/6.11.1/single/qt-everywhere-src-6.11.1.tar.xz</a>

-   Download MD5 sum: 25d4d1dd74c92b978f164e8f20805985

-   Download size: 971 MB

-   Estimated disk space required: 47 GB (502 MB installed)

-   Estimated build time: 13 SBU (using parallelism=8)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/qt-everywhere-src-6.11.1-openssl4_fix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/qt-everywhere-src-6.11.1-openssl4_fix-1.patch</a>
</div>

### Qt6 Dependencies

#### Required

<a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Recommended

<a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a>, <a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="../general/double-conversion.md" title="Double-conversion-3.4.0">double-conversion-3.4.0</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, <a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a> (for the QtMultimedia backend), <a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="../multimedia/gst10-plugins-good.md" title="gst-plugins-good-1.28.3">gst-plugins-good-1.28.3</a>, and <a class="xref" href="../multimedia/gst10-plugins-bad.md" title="gst-plugins-bad-1.28.3">gst-plugins-bad-1.28.3</a> (for the QtMultimedia backend), <a class="xref" href="../general/harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a>, <a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="../general/jasper.md" title="jasper-4.2.9">jasper-4.2.9</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="x7driver.md#libinput" title="libinput-1.31.2">libinput-1.31.2</a>, <a class="xref" href="../general/libmng.md" title="libmng-2.0.3">libmng-2.0.3</a>, <a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="../general/libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a>, <a class="xref" href="mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>, <a class="xref" href="../general/mtdev.md" title="mtdev-1.1.7">mtdev-1.1.7</a>, <a class="xref" href="../general/wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a> (<span class="application">Mesa</span> must be built with <span class="application">Wayland</span> EGL backend), and <a class="xref" href="xcb-utilities.md" title="XCB Utilities">XCB Utilities</a>

#### Optional

<a class="xref" href="../general/bluez.md" title="BlueZ-5.86">BlueZ-5.86</a> (for sdpscanner, and at runtime for QtConnectivity module), <a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/ibus.md" title="ibus-1.5.34">ibus-1.5.34</a>, <a class="xref" href="../general/llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> (with Clang), <a class="xref" href="../general/libproxy.md" title="libproxy-0.5.12">libproxy-0.5.12</a>, <a class="xref" href="../server/mariadb.md" title="MariaDB-12.3.2">MariaDB-12.3.2</a> or <a class="ulink" href="https://www.mysql.com/">MySQL</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../general/pciutils.md" title="pciutils-3.15.0">pciutils-3.15.0</a>, <a class="xref" href="../server/postgresql.md" title="PostgreSQL-18.4">PostgreSQL-18.4</a>, <a class="xref" href="../general/protobuf.md" title="Protobuf-35.0">Protobuf-35.0</a>, <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, <a class="xref" href="../multimedia/sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a>, <a class="xref" href="../general/unixodbc.md" title="unixODBC-2.3.14">unixODBC-2.3.14</a>, <a class="ulink" href="https://www.assimp.org/">assimp</a>, <a class="ulink" href="https://github.com/festvox/flite">Flite</a>, <a class="ulink" href="https://www.firebirdsql.org/">Firebird</a>, <a class="ulink" href="https://www.freetds.org/">FreeTDS</a>, <a class="ulink" href="https://openal.org/">OpenAL</a>, <a class="ulink" href="https://freebsoft.org/speechd/">speech-dispatcher</a>, and <a class="ulink" href="http://www.tslib.org/">tslib</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Either the gstreamer stack or ffmpeg must be installed to use programs which use QtMultimedia. Not having a backend available can cause any program that uses QtMultimedia to crash. For example, Konsole can exit with a SIGABRT if no backend is provided for QtMultimedia to use.
</div>
</div>

<div class="qt6-prefix" lang="en">
## Setting the installation prefix {#setting-the-installation-prefix}

### Installing in /opt/qt6

The BLFS editors recommend installing <span class="application">Qt6</span> in a directory other than <code class="filename">/usr</code>, i.e. <code class="filename">/opt/qt6</code>. To do this, set the following environment variable:

```bash
export QT6PREFIX=/opt/qt6
```

<div class="admon tip">
![\[Tip\]](../images/tip.png)

### Tip

Sometimes the installation paths are hardcoded into installed files. This is the reason why <code class="filename">/opt/qt6</code> is used as installation prefix instead of <code class="filename">/opt/qt-6.11.1</code>. To create a versioned <span class="application">Qt6</span> directory, you may rename the directory and create a symlink:

```bash
mkdir -pv /opt/qt-6.11.1
ln -sfnv qt-6.11.1 /opt/qt6
```

Later on, you may want to install other versions of <span class="application">Qt6</span>. To do that, just remove the symlink, create the new versioned directory, and recreate the <code class="filename">/opt/qt6</code> symlink again before building the new version. Which version of <span class="application">Qt6</span> you use depends only on where the symlink points.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If any of <a class="xref" href="../lxqt/libqtxdg.md" title="libqtxdg-4.4.0">libqtxdg-4.4.0</a>, <a class="xref" href="../general/qca.md" title="Qca-2.3.10">qca-2.3.10</a>, <a class="xref" href="../general/qcoro.md" title="qcoro-0.13.0">qcoro-0.13.0</a>, <a class="xref" href="../kde/qtkeychain.md" title="qtkeychain-0.16.0">qtkeychain-0.16.0</a>, or <a class="xref" href="sddm.md" title="sddm-0.21.0">sddm-0.21.0</a> have been installed, then those packages will need to be reinstalled after installing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of Qt6 {#installation-of-qt6}

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

If <span class="application">Qt6</span> is being reinstalled into the same directory as an existing instance, run the commands done by <code class="systemitem">root</code>, such as <span class="command"><strong>make install</strong></span>, from a console or non-Qt6 based window manager. It overwrites <span class="application">Qt6</span> libraries that should not be in use during the install process.
</div>

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

If you did not install some of the recommended dependencies, examine <span class="command"><strong>./configure --help</strong></span> output to check how to disable them or use internal versions bundled in the source tarball.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The build time and space required for the full <span class="application">Qt6</span> is quite long. The instructions below do not build the tutorials and examples. Removing the *`-nomake`* line will create additional resources..
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The BLFS editors do not recommend installing <span class="application">Qt6</span> into the /usr hierarchy because it becomes difficult to find components and to update to a new version.
</div>

First, apply a patch to make the package compatible with openssl4:

```bash
patch -Np1 -i ../../qt-everywhere-src-6.11.1-openssl4_fix-1.patch -d qtbase/
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The above command is correct, as <span class="command"><strong>patch</strong></span> will navigate to the <code class="filename">qtbase</code> directory first, before applying the patch. This means that the path to the patch must be relative to that directory, instead of the current directory the command is being ran from.
</div>

Next, if you are on an i686 system, disable a conflicting declaration and fix a build error due to SIMD intrinsics in QtMultimedia:

```bash
if [ "$(uname -m)" == "i686" ]; then
    sed -e "/^#elif defined(Q_CC_GNU_ONLY)/s/.*/& \&\& 0/" \
        -i qtbase/src/corelib/global/qtypes.h                          &&
    export CXXFLAGS+="-DDISABLE_SIMD -DPFFFT_SIMD_DISABLE"
fi
```

Next, remove two components that are not used in BLFS and take a long time to build. Also, remove qtwebengine because we build that component separately with system-installed components. In addition, remove the qtopcua module which is not used in BLFS and which breaks with OpenSSL-4:

```bash
rm -rf qtwebengine qt3d qtquick3dphysics qtopcua
```

Install <span class="application">Qt6</span> by running the following commands:

```bash
./configure -prefix $QT6PREFIX   \
            -release             \
            -sysconfdir /etc/xdg \
            -dbus-linked         \
            -openssl-linked      \
            -system-sqlite       \
            -nomake examples     \
            -no-rpath            \
            -no-sbom             \
            -journald            &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

Remove references to the build directory from installed library dependency (prl) files by running the following command as the <code class="systemitem">root</code> user:

```bash
find $QT6PREFIX/ -name \*.prl \
   -exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d' {} \;
```

Install images and create the menu entries for installed applications. Again as the <code class="systemitem">root</code> user:

```bash
pushd qttools/src &&

install -v -Dm644 assistant/assistant/images/assistant-128.png       \
                  /usr/share/pixmaps/assistant-qt6.png               &&

install -v -Dm644 designer/src/designer/images/designer.png          \
                  /usr/share/pixmaps/designer-qt6.png                &&

install -v -Dm644 linguist/linguist/images/icons/linguist-128-32.png \
                  /usr/share/pixmaps/linguist-qt6.png                &&

install -v -Dm644 qdbus/qdbusviewer/images/qdbusviewer-128.png       \
                  /usr/share/pixmaps/qdbusviewer-qt6.png             &&
popd &&


cat > /usr/share/applications/assistant-qt6.desktop << EOF
[Desktop Entry]
Name=Qt6 Assistant
Comment=Shows Qt6 documentation and examples
Exec=$QT6PREFIX/bin/assistant
Icon=assistant-qt6.png
Terminal=false
Encoding=UTF-8
Type=Application
Categories=Qt;Development;Documentation;
EOF

cat > /usr/share/applications/designer-qt6.desktop << EOF
[Desktop Entry]
Name=Qt6 Designer
GenericName=Interface Designer
Comment=Design GUIs for Qt6 applications
Exec=$QT6PREFIX/bin/designer
Icon=designer-qt6.png
MimeType=application/x-designer;
Terminal=false
Encoding=UTF-8
Type=Application
Categories=Qt;Development;
EOF

cat > /usr/share/applications/linguist-qt6.desktop << EOF
[Desktop Entry]
Name=Qt6 Linguist
Comment=Add translations to Qt6 applications
Exec=$QT6PREFIX/bin/linguist
Icon=linguist-qt6.png
MimeType=text/vnd.trolltech.linguist;application/x-linguist;
Terminal=false
Encoding=UTF-8
Type=Application
Categories=Qt;Development;
EOF

cat > /usr/share/applications/qdbusviewer-qt6.desktop << EOF
[Desktop Entry]
Name=Qt6 QDbusViewer
GenericName=D-Bus Debugger
Comment=Debug D-Bus applications
Exec=$QT6PREFIX/bin/qdbusviewer
Icon=qdbusviewer-qt6.png
Terminal=false
Encoding=UTF-8
Type=Application
Categories=Qt;Development;Debugger;
EOF
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-nomake examples`*: This switch disables building of the example programs included in the source tarball. Remove it if you want to build them.

*`-skip qt3d`*: This switch disables building qt3d support. There is a problem building these files without an external library and no packages in BLFS use qt3d.

*`-system-sqlite`*: This switch enables use of the system version of <span class="application">SQLite</span>.

*`-dbus-linked`* *`-openssl-linked`*: These switches enable explicit linking of the <span class="application">D-Bus</span> and <span class="application">OpenSSL</span> libraries into <span class="application">Qt6</span> libraries instead of <span class="command"><strong>dlopen()</strong></span>-ing them.

*`-journald`*: This switch allows sending Qt messages to the <span class="command"><strong>journald</strong></span> logging system.

*`-skip qtwebengine`*: This switch disables building the QtWebEngine. The BLFS editors have chosen to build <a class="xref" href="qtwebengine.md" title="QtWebEngine-6.11.1">qtwebengine-6.11.1</a> separately.

*`-skip qtquick3dphysics`*: This switch disables building the Qt Quick 3D Physics submodule. On 32-bit systems, this will cause the build process to fail with an inlining error in Qt6's bundled copy of the PhysX SDK.

<code class="option">-libproxy</code>: This switch enables the usage of libproxy for determining proxy server information.
</div>

<div class="configuration" lang="en">
## Configuring Qt6 {#configuring-qt6}

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

If <a class="xref" href="../postlfs/sudo.md" title="Sudo-1.9.17p2">Sudo-1.9.17p2</a> is installed, QT6DIR should be available to the super user as well. Execute the following commands as the <code class="systemitem">root</code> user:

```bash
cat > /etc/sudoers.d/qt << "EOF"
Defaults env_keep += QT6DIR
EOF
```

You now need to update the following configuration files so that <span class="application">Qt6</span> is correctly found by other packages and system processes.

As the <code class="systemitem">root</code> user, update the <code class="filename">/etc/ld.so.conf</code> file and the dynamic linker's run-time cache file:

```bash
cat >> /etc/ld.so.conf << EOF
# Begin Qt addition

/opt/qt6/lib

# End Qt addition
EOF

ldconfig
```

As the <code class="systemitem">root</code> user, create the <code class="filename">/etc/profile.d/qt6.sh</code> file:

```bash
cat > /etc/profile.d/qt6.sh << "EOF"
# Begin /etc/profile.d/qt6.sh

QT6DIR=/opt/qt6

pathappend $QT6DIR/bin           PATH
pathappend $QT6DIR/lib/pkgconfig PKG_CONFIG_PATH

export QT6DIR

# End /etc/profile.d/qt6.sh
EOF
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">androiddeployqt (hard link to androiddeployqt6), androiddeployqt6, androidtestrunner, assistant, balsam, balsamui, canbusutil, designer, instancer, lconvert, lightmapviewer, linguist, lottietoqml, lrelease, lupdate, materialeditor, meshdebug, pixeltool, qdbus, qdbuscpp2xml, qdbusviewer, qdbusxml2cpp, qdistancefieldgenerator, qdoc, qmake (hard link to qmake6), qmake6, qml, qmldom, qmleasing, qmlformat, qmllint, qmlls, qmlplugindump, qmlpreview, qmlprofiler, qmlscene, qmltc, qmltestrunner, qmltime, qopcuaxmldatatypes2cpp, qqem, qsb, qtdiag (hard link to qtdiag6), qtdiag6, qtpaths (hard link to qtpaths6), qtpaths6, qtplugininfo, qt-cmake, qt-cmake-create, qt-configure-module, shadergen, shapegen, and svg2xml</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libQt6Bluetooth.so, libQt6BundledEmbree.a, libQt6BundledOpenXR.a, libQt6BundledResonanceAudio.a, libQt6Charts.so, libQt6ChartsQml.so, libQt6Coap.so, libQt6Concurrent.so, libQt6Core.so, libQt6Core5Compat.so, libQt6DBus.so, libQt6DataVisualization.so, libQt6DataVisualizationQml.so, libQt6DeclarativeOpcua.so, libQt6Designer.so, libQt6DesignerComponents.so, libQt6DeviceDiscoverySupport.a, libQt6EglFSDeviceIntegration.so, libQt6EglFsKmsGbmSupport.so, libQt6EglFsKmsSupport.so, libQt6ExampleIcons.a, libQt6ExamplesAssetDownloader.a, libQt6FbSupport.a, libQt6Graphs.so, libQt6GraphsWidgets.so, libQt6Grpc.so, libQt6GrpcQuick.so, libQt6GstreamerMediaPluginImpl.a, libQt6Gui.so, libQt6Help.so, libQt6HttpServer.so, libQt6InputSupport.a, libQt6JsonRpc.so, libQt6KmsSupport.a, libQt6LabsAnimation.so, libQt6LabsFolderListModel.so, libQt6LabsPlatform.so, libQt6LabsQmlModels.so, libQt6LabsSettings.so, libQt6LabsSharedImage.so, libQt6LabsSynchronizer.so, libQt6LabsWavefrontMesh.so, libQt6LanguageServer.a, libQt6Location.so, libQt6Lottie.so, libQt6LottieVectorImageGenerator.so, libQt6LottieVectorImageHelpers.so, libQt6Mqtt.so, libQt6Multimedia.so, libQt6MultimediaQuick.so, libQt6MultimediaTestLib.a, libQt6MultimediaWidgets.so, libQt6Network.so, libQt6NetworkAuth.so, libQt6Nfc.so, libQt6OpcUa.so, libQt6OpenGL.so, libQt6OpenGLWidgets.so, libQt6PacketProtocol.a, libQt6Positioning.so, libQt6PositioningQuick.so, libQt6PrintSupport.so, libQt6Protobuf.so, libQt6ProtobufQtCoreTypes.so, libQt6ProtobufQtGuiTypes.so, libQt6ProtobufQuick.so, libQt6ProtobufWellKnownTypes.so, libQt6QGstreamerMediaPluginImpl.a, libQt6Qml.so, libQt6QmlAssetDownloader.a, libQt6QmlCompiler.so, libQt6QmlCore.so, libQt6QmlDebug.a, libQt6QmlDom.a, libQt6QmlFormat.a, libQt6QmlLocalStorage.so, libQt6QmlLS.a, libQt6QmlMeta.so, libQt6QmlModels.so, libQt6QmlNetwork.so, libQt6QmlToolingSettings.a, libQt6QmlTypeRegistrar.a, libQt6QmlWorkerScript.so, libQt6QmlXmlListModel.so, libQt6Quick.so, libQt6Quick3D.so, libQt6Quick3DAssetImport.so, libQt6Quick3DAssetUtils.so, libQt6Quick3DEffects.so, libQt6Quick3DGlslParser.so, libQt6Quick3DHelpers.so, libQt6Quick3DHelpersImpl.so, libQt6Quick3DIblBaker.so, libQt6Quick3DParticleEffects.so, libQt6Quick3DParticles.so, libQt6Quick3DRuntimeRender.so, libQt6Quick3DSpatialAudio.so, libQt6Quick3DUtils.so, libQt6Quick3DXr.so, libQt6QuickControls2.so, libQt6QuickControls2Basic.so, libQt6QuickControls2BasicStyleImpl.so, libQt6QuickControls2FluentWinUI3StyleImpl.so, libQt6QuickControls2Fusion.so, libQt6QuickControls2FusionStyleImpl.so, libQt6QuickControls2Imagine.so, libQt6QuickControls2ImagineStyleImpl.so, libQt6QuickControls2Impl.so, libQt6QuickControls2Material.so, libQt6QuickControls2MaterialStyleImpl.so, libQt6QuickControls2Universal.so, libQt6QuickControls2UniversalStyleImpl.so, libQt6QuickControlsTestUtils.a, libQt6QuickDialogs2.so, libQt6QuickDialogs2QuickImpl.so, libQt6QuickDialogs2Utils.so, libQt6QuickEffects.so, libQt6QuickLayouts.so, libQt6QuickParticles.so, libQt6QuickShapes.so, libQt6QuickShapesDesignHelpers.so, libQt6QuickTemplates2.so, libQt6QuickTimelineBlendTrees.so, libQt6QuickTest.so, libQt6QuickTestUtils.a, libQt6QuickTimeline.so, libQt6QuickTimelineBlendTrees.so, libQt6QuickVectorImageGenerator.so, libQt6QuickVectorImageHelpers.so, libQt6QuickVectorImage.so, libQt6QuickWidgets.so, libQt6RemoteObjects.so, libQt6RemoteObjectsQml.so, libQt6Scxml.so, libQt6ScxmlQml.so, libQt6Sensors.so, libQt6SensorsQuick.so, libQt6SerialBus.so, libQt6SerialPort.so, libQt6ShaderTools.so, libQt6SpatialAudio.so, libQt6Sql.so, libQt6StateMachine.so, libQt6StateMachineQml.so, libQt6Svg.so, libQt6SvgWidgets.so, libQt6Test.so, libQt6TextToSpeech.so, libQt6UiTools.so, libQt6VirtualKeyboard.so, libQt6VirtualKeyboardQml.so, libQt6VirtualKeyboardSettings.so, libQt6WaylandClient.so, libQt6WaylandCompositor.so, libQt6WaylandCompositorIviapplication.so, libQt6WaylandCompositorPresentationTime.so, libQt6WaylandCompositorWLShell.so, libQt6WaylandCompositorXdgShell.so, libQt6WaylandEglClientHwIntegration.so, libQt6WaylandEglCompositorHwIntegration.so, libQt6WebChannel.so, libQt6WebChannelQuick.so, libQt6WebSockets.so, libQt6WebView.so, libQt6WebViewQuick.so, libQt6Widgets.so, libQt6WlShellIntegration.so, libQt6XcbQpa.so, and libQt6Xml.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/opt/qt6 and /opt/qt-6.11.1</span>
</div>
</div>
</div>

<div class="variablelist">
<a id="qt6-descriptions"></a>

### Short Descriptions

  ---------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="assistant-qt6"></a><span class="command"><span class="term"><strong>assistant</strong></span></span>                               is a tool for presenting on-line documentation
  <a id="balsam-qt6"></a><span class="command"><span class="term"><strong>balsam</strong></span></span>                                     is a tool to convert 3D scenes from various creation tools to QML format, for use by the new QtQuick 3D library
  <a id="canbusutil-qt6"></a><span class="command"><span class="term"><strong>canbustil</strong></span></span>                              is a tool to deal with arbitrary CAN bus frames. A Controller Area Network (CAN) is a vehicle bus standard designed to allow microcontrollers and devices to communicate with each other in applications without a host computer
  <a id="designer-qt6"></a><span class="command"><span class="term"><strong>designer</strong></span></span>                                 is a full-fledged GUI builder. It includes powerful features such as preview mode, automatic widget layout, support for custom widgets, and an advanced property editor
  <a id="lconvert-qt6"></a><span class="command"><span class="term"><strong>lconvert</strong></span></span>                                 is part of Qt6's Linguist tool chain. It can be used as a standalone tool to convert and filter translation data files
  <a id="lightmapviewer-qt6"></a><span class="command"><span class="term"><strong>lightmapviewer-qt6</strong></span></span>                 displays lightmaps generated in Qt's format, and lists information about them
  <a id="linguist-qt6"></a><span class="command"><span class="term"><strong>linguist</strong></span></span>                                 provides support for translating applications into local languages
  <a id="lottietoqml-qt6"></a><span class="command"><span class="term"><strong>lottietoqml</strong></span></span>                           converts lottie files (which are in SVG format) to QML files
  <a id="lrelease-qt6"></a><span class="command"><span class="term"><strong>lrelease</strong></span></span>                                 is a simple command line tool. It reads XML-based translation files in TS format and produces message files used by the application
  <a id="lupdate-qt6"></a><span class="command"><span class="term"><strong>lupdate</strong></span></span>                                   finds the translatable strings in the specified source, header and Qt Designer interface files, and stores the extracted messages in translation files to be processed by lrelease
  <a id="meshdebug-qt6"></a><span class="command"><span class="term"><strong>meshdebug</strong></span></span>                               displays information about qtquick-3d mesh files
  <a id="pixeltool-qt6"></a><span class="command"><span class="term"><strong>pixeltool</strong></span></span>                               is a desktop magnifier - as you move your mouse around the screen, it will show the magnified contents in its window
  <a id="qdbus-qt6"></a><span class="command"><span class="term"><strong>qdbus</strong></span></span>                                       lists available services, object paths, methods, signals, and properties of objects on a bus
  <a id="qdbuscpp2xml-qt6"></a><span class="command"><span class="term"><strong>qdbuscpp2xml</strong></span></span>                         takes a C++ source file and generates a D-Bus XML definition of the interface
  <a id="qdbusviewer-qt6"></a><span class="command"><span class="term"><strong>qdbusviewer</strong></span></span>                           is a graphical D-Bus browser
  <a id="qdbusxml2cpp-qt6"></a><span class="command"><span class="term"><strong>qdbusxml2cpp</strong></span></span>                         is a tool that can be used to parse interface descriptions and produce static code representing those interfaces,
  <a id="qdistancefieldgenerator-qt6"></a><span class="command"><span class="term"><strong>qdistancefieldgenerator</strong></span></span>   allows a font cache to be pregenerated for Text.QtRendering to speed up an application's startup if the user interface has a lot of text, or multiple fonts, or a large amount of distinct characters, e.g. in CJK writing systems
  <a id="qdoc-qt6"></a><span class="command"><span class="term"><strong>qdoc</strong></span></span>                                         is a tool used by <span class="application">Qt</span> Developers to generate documentation for software projects
  <a id="qmake-qt6"></a><span class="command"><span class="term"><strong>qmake</strong></span></span>                                       uses information stored in project files to determine what should go in the makefiles it generates
  <a id="qml-qt6"></a><span class="command"><span class="term"><strong>qml</strong></span></span>                                           executes a QML file
  <a id="qmleasing-qt6"></a><span class="command"><span class="term"><strong>qmleasing</strong></span></span>                               is a tool used to define the easing curves using an interactive curve editor
  <a id="qmlformat-qt6"></a><span class="command"><span class="term"><strong>qmlformat</strong></span></span>                               formats QML files according to the QML coding conventions
  <a id="qmllint-qt6"></a><span class="command"><span class="term"><strong>qmllint</strong></span></span>                                   is a syntax checker for QML files
  <a id="qmlplugindump-qt6"></a><span class="command"><span class="term"><strong>qmlplugindump</strong></span></span>                       is a tool to create a qmltypes file
  <a id="qmlpreview-qt6"></a><span class="command"><span class="term"><strong>qmlpreview</strong></span></span>                             is a tool used to analyze QML applications
  <a id="qmlprofiler-qt6"></a><span class="command"><span class="term"><strong>qmlprofiler</strong></span></span>                           is a tool which watches QML and JavaScript files on disk and updates the application live with any changes
  <a id="qmlscene-qt6"></a><span class="command"><span class="term"><strong>qmlscene</strong></span></span>                                 is a utility that loads and displays QML documents even before the application is complete
  <a id="qmltestrunner-qt6"></a><span class="command"><span class="term"><strong>qmltestrunner</strong></span></span>                       is a tool used to make tests
  <a id="qtdiag-qt6"></a><span class="command"><span class="term"><strong>qtdiag</strong></span></span>                                     is a tool for reporting diagnostic information about Qt and its environment
  <a id="qtpaths-qt6"></a><span class="command"><span class="term"><strong>qtpaths</strong></span></span>                                   is a tool to query Qt path information
  <a id="qtplugininfo-qt6"></a><span class="command"><span class="term"><strong>qtplugininfo</strong></span></span>                         dumps meta-data about Qt plugins in JSON format
  ---------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pangomm2.md "Pangomm-2.56.1")

    Pangomm-2.56.1

-   [Next](qtwebengine.md "QtWebEngine-6.11.1")

    QtWebEngine-6.11.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
