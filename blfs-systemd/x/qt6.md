::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](pangomm2.md "Pangomm-2.56.1"){accesskey="p"}

    Pangomm-2.56.1

-   [Next](qtwebengine.md "QtWebEngine-6.11.1"){accesskey="n"}

    QtWebEngine-6.11.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#qt6}Qt-6.11.1 {#qt-6.11.1 .sect1}

::::::::::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to Qt6 {#introduction-to-qt6 .sect2}

[Qt6]{.application} is a cross-platform application framework that is widely used for developing application software with a graphical user interface (GUI) (in which cases [Qt6]{.application} is classified as a widget toolkit), and also used for developing non-GUI programs such as command-line tools and consoles for servers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.qt.io/archive/qt/6.11/6.11.1/single/qt-everywhere-src-6.11.1.tar.xz](https://download.qt.io/archive/qt/6.11/6.11.1/single/qt-everywhere-src-6.11.1.tar.xz){.ulink}

-   Download MD5 sum: 25d4d1dd74c92b978f164e8f20805985

-   Download size: 971 MB

-   Estimated disk space required: 47 GB (502 MB installed)

-   Estimated build time: 13 SBU (using parallelism=8)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/qt-everywhere-src-6.11.1-openssl4_fix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/qt-everywhere-src-6.11.1-openssl4_fix-1.patch){.ulink}
:::

### Qt6 Dependencies

#### Required

[Xorg Libraries](x7lib.md "Xorg Libraries"){.xref}

#### Recommended

[alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref}, [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref}, [Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [double-conversion-3.4.0](../general/double-conversion.md "Double-conversion-3.4.0"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref}, [FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref} (for the QtMultimedia backend), [gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [gst-plugins-good-1.28.3](../multimedia/gst10-plugins-good.md "gst-plugins-good-1.28.3"){.xref}, and [gst-plugins-bad-1.28.3](../multimedia/gst10-plugins-bad.md "gst-plugins-bad-1.28.3"){.xref} (for the QtMultimedia backend), [harfBuzz-14.2.1](../general/harfbuzz.md "harfBuzz-14.2.1"){.xref}, [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [jasper-4.2.9](../general/jasper.md "jasper-4.2.9"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libinput-1.31.2](x7driver.md#libinput "libinput-1.31.2"){.xref}, [libmng-2.0.3](../general/libmng.md "libmng-2.0.3"){.xref}, [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}, [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref}, [Mesa-26.0.7](mesa.md "Mesa-26.0.7"){.xref}, [mtdev-1.1.7](../general/mtdev.md "mtdev-1.1.7"){.xref}, [Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref} ([Mesa]{.application} must be built with [Wayland]{.application} EGL backend), and [XCB Utilities](xcb-utilities.md "XCB Utilities"){.xref}

#### Optional

[BlueZ-5.86](../general/bluez.md "BlueZ-5.86"){.xref} (for sdpscanner, and at runtime for QtConnectivity module), [GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref}, [ibus-1.5.34](../general/ibus.md "ibus-1.5.34"){.xref}, [LLVM-22.1.0](../general/llvm.md "LLVM-22.1.0"){.xref} (with Clang), [libproxy-0.5.12](../general/libproxy.md "libproxy-0.5.12"){.xref}, [MariaDB-12.3.2](../server/mariadb.md "MariaDB-12.3.2"){.xref} or [MySQL](https://www.mysql.com/){.ulink}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [pciutils-3.15.0](../general/pciutils.md "pciutils-3.15.0"){.xref}, [PostgreSQL-18.4](../server/postgresql.md "PostgreSQL-18.4"){.xref}, [Protobuf-35.0](../general/protobuf.md "Protobuf-35.0"){.xref}, [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}, [sdl2-compat-2.32.68](../multimedia/sdl2.md "sdl2-compat-2.32.68"){.xref}, [unixODBC-2.3.14](../general/unixodbc.md "unixODBC-2.3.14"){.xref}, [assimp](https://www.assimp.org/){.ulink}, [Flite](https://github.com/festvox/flite){.ulink}, [Firebird](https://www.firebirdsql.org/){.ulink}, [FreeTDS](https://www.freetds.org/){.ulink}, [OpenAL](https://openal.org/){.ulink}, [speech-dispatcher](https://freebsoft.org/speechd/){.ulink}, and [tslib](http://www.tslib.org/){.ulink}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Either the gstreamer stack or ffmpeg must be installed to use programs which use QtMultimedia. Not having a backend available can cause any program that uses QtMultimedia to crash. For example, Konsole can exit with a SIGABRT if no backend is provided for QtMultimedia to use.
:::
:::::::

::::: {.qt6-prefix lang="en"}
## Setting the installation prefix {#setting-the-installation-prefix .sect2}

### Installing in /opt/qt6

The BLFS editors recommend installing [Qt6]{.application} in a directory other than `/usr`{.filename}, i.e. `/opt/qt6`{.filename}. To do this, set the following environment variable:

``` userinput
export QT6PREFIX=/opt/qt6
```

::: {.admon .tip}
![\[Tip\]](../images/tip.png)

### Tip

Sometimes the installation paths are hardcoded into installed files. This is the reason why `/opt/qt6`{.filename} is used as installation prefix instead of `/opt/qt-6.11.1`{.filename}. To create a versioned [Qt6]{.application} directory, you may rename the directory and create a symlink:

``` root
mkdir -pv /opt/qt-6.11.1
ln -sfnv qt-6.11.1 /opt/qt6
```

Later on, you may want to install other versions of [Qt6]{.application}. To do that, just remove the symlink, create the new versioned directory, and recreate the `/opt/qt6`{.filename} symlink again before building the new version. Which version of [Qt6]{.application} you use depends only on where the symlink points.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If any of [libqtxdg-4.4.0](../lxqt/libqtxdg.md "libqtxdg-4.4.0"){.xref}, [qca-2.3.10](../general/qca.md "Qca-2.3.10"){.xref}, [qcoro-0.13.0](../general/qcoro.md "qcoro-0.13.0"){.xref}, [qtkeychain-0.16.0](../kde/qtkeychain.md "qtkeychain-0.16.0"){.xref}, or [sddm-0.21.0](sddm.md "sddm-0.21.0"){.xref} have been installed, then those packages will need to be reinstalled after installing this package.
:::
:::::

:::::::: {.installation lang="en"}
## Installation of Qt6 {#installation-of-qt6 .sect2}

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

If [Qt6]{.application} is being reinstalled into the same directory as an existing instance, run the commands done by `root`{.systemitem}, such as [**make install**]{.command}, from a console or non-Qt6 based window manager. It overwrites [Qt6]{.application} libraries that should not be in use during the install process.
:::

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

If you did not install some of the recommended dependencies, examine [**./configure --help**]{.command} output to check how to disable them or use internal versions bundled in the source tarball.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The build time and space required for the full [Qt6]{.application} is quite long. The instructions below do not build the tutorials and examples. Removing the *`-nomake`* line will create additional resources..
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The BLFS editors do not recommend installing [Qt6]{.application} into the /usr hierarchy because it becomes difficult to find components and to update to a new version.
:::

First, apply a patch to make the package compatible with openssl4:

``` userinput
patch -Np1 -i ../../qt-everywhere-src-6.11.1-openssl4_fix-1.patch -d qtbase/
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The above command is correct, as [**patch**]{.command} will navigate to the `qtbase`{.filename} directory first, before applying the patch. This means that the path to the patch must be relative to that directory, instead of the current directory the command is being ran from.
:::

Next, if you are on an i686 system, disable a conflicting declaration and fix a build error due to SIMD intrinsics in QtMultimedia:

``` userinput
if [ "$(uname -m)" == "i686" ]; then
    sed -e "/^#elif defined(Q_CC_GNU_ONLY)/s/.*/& \&\& 0/" \
        -i qtbase/src/corelib/global/qtypes.h                          &&
    export CXXFLAGS+="-DDISABLE_SIMD -DPFFFT_SIMD_DISABLE"
fi
```

Next, remove two components that are not used in BLFS and take a long time to build. Also, remove qtwebengine because we build that component separately with system-installed components. In addition, remove the qtopcua module which is not used in BLFS and which breaks with OpenSSL-4:

``` userinput
rm -rf qtwebengine qt3d qtquick3dphysics qtopcua
```

Install [Qt6]{.application} by running the following commands:

``` userinput
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

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

Remove references to the build directory from installed library dependency (prl) files by running the following command as the `root`{.systemitem} user:

``` root
find $QT6PREFIX/ -name \*.prl \
   -exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d' {} \;
```

Install images and create the menu entries for installed applications. Again as the `root`{.systemitem} user:

``` root
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
::::::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-nomake examples`*: This switch disables building of the example programs included in the source tarball. Remove it if you want to build them.

*`-skip qt3d`*: This switch disables building qt3d support. There is a problem building these files without an external library and no packages in BLFS use qt3d.

*`-system-sqlite`*: This switch enables use of the system version of [SQLite]{.application}.

*`-dbus-linked`* *`-openssl-linked`*: These switches enable explicit linking of the [D-Bus]{.application} and [OpenSSL]{.application} libraries into [Qt6]{.application} libraries instead of [**dlopen()**]{.command}-ing them.

*`-journald`*: This switch allows sending Qt messages to the [**journald**]{.command} logging system.

*`-skip qtwebengine`*: This switch disables building the QtWebEngine. The BLFS editors have chosen to build [qtwebengine-6.11.1](qtwebengine.md "QtWebEngine-6.11.1"){.xref} separately.

*`-skip qtquick3dphysics`*: This switch disables building the Qt Quick 3D Physics submodule. On 32-bit systems, this will cause the build process to fail with an inlining error in Qt6's bundled copy of the PhysX SDK.

`-libproxy`{.option}: This switch enables the usage of libproxy for determining proxy server information.
:::

:::: {.configuration lang="en"}
## Configuring Qt6 {#configuring-qt6 .sect2}

::: {.sect3 lang="en"}
### []{#qt6-config}Configuration Information {#configuration-information .sect3}

If [Sudo-1.9.17p2](../postlfs/sudo.md "Sudo-1.9.17p2"){.xref} is installed, QT6DIR should be available to the super user as well. Execute the following commands as the `root`{.systemitem} user:

``` root
cat > /etc/sudoers.d/qt << "EOF"
Defaults env_keep += QT6DIR
EOF
```

You now need to update the following configuration files so that [Qt6]{.application} is correctly found by other packages and system processes.

As the `root`{.systemitem} user, update the `/etc/ld.so.conf`{.filename} file and the dynamic linker's run-time cache file:

``` root
cat >> /etc/ld.so.conf << EOF
# Begin Qt addition

/opt/qt6/lib

# End Qt addition
EOF

ldconfig
```

As the `root`{.systemitem} user, create the `/etc/profile.d/qt6.sh`{.filename} file:

``` root
cat > /etc/profile.d/qt6.sh << "EOF"
# Begin /etc/profile.d/qt6.sh

QT6DIR=/opt/qt6

pathappend $QT6DIR/bin           PATH
pathappend $QT6DIR/lib/pkgconfig PKG_CONFIG_PATH

export QT6DIR

# End /etc/profile.d/qt6.sh
EOF
```
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [androiddeployqt (hard link to androiddeployqt6), androiddeployqt6, androidtestrunner, assistant, balsam, balsamui, canbusutil, designer, instancer, lconvert, lightmapviewer, linguist, lottietoqml, lrelease, lupdate, materialeditor, meshdebug, pixeltool, qdbus, qdbuscpp2xml, qdbusviewer, qdbusxml2cpp, qdistancefieldgenerator, qdoc, qmake (hard link to qmake6), qmake6, qml, qmldom, qmleasing, qmlformat, qmllint, qmlls, qmlplugindump, qmlpreview, qmlprofiler, qmlscene, qmltc, qmltestrunner, qmltime, qopcuaxmldatatypes2cpp, qqem, qsb, qtdiag (hard link to qtdiag6), qtdiag6, qtpaths (hard link to qtpaths6), qtpaths6, qtplugininfo, qt-cmake, qt-cmake-create, qt-configure-module, shadergen, shapegen, and svg2xml]{.segbody}
:::

::: seg
**Installed Libraries:** [libQt6Bluetooth.so, libQt6BundledEmbree.a, libQt6BundledOpenXR.a, libQt6BundledResonanceAudio.a, libQt6Charts.so, libQt6ChartsQml.so, libQt6Coap.so, libQt6Concurrent.so, libQt6Core.so, libQt6Core5Compat.so, libQt6DBus.so, libQt6DataVisualization.so, libQt6DataVisualizationQml.so, libQt6DeclarativeOpcua.so, libQt6Designer.so, libQt6DesignerComponents.so, libQt6DeviceDiscoverySupport.a, libQt6EglFSDeviceIntegration.so, libQt6EglFsKmsGbmSupport.so, libQt6EglFsKmsSupport.so, libQt6ExampleIcons.a, libQt6ExamplesAssetDownloader.a, libQt6FbSupport.a, libQt6Graphs.so, libQt6GraphsWidgets.so, libQt6Grpc.so, libQt6GrpcQuick.so, libQt6GstreamerMediaPluginImpl.a, libQt6Gui.so, libQt6Help.so, libQt6HttpServer.so, libQt6InputSupport.a, libQt6JsonRpc.so, libQt6KmsSupport.a, libQt6LabsAnimation.so, libQt6LabsFolderListModel.so, libQt6LabsPlatform.so, libQt6LabsQmlModels.so, libQt6LabsSettings.so, libQt6LabsSharedImage.so, libQt6LabsSynchronizer.so, libQt6LabsWavefrontMesh.so, libQt6LanguageServer.a, libQt6Location.so, libQt6Lottie.so, libQt6LottieVectorImageGenerator.so, libQt6LottieVectorImageHelpers.so, libQt6Mqtt.so, libQt6Multimedia.so, libQt6MultimediaQuick.so, libQt6MultimediaTestLib.a, libQt6MultimediaWidgets.so, libQt6Network.so, libQt6NetworkAuth.so, libQt6Nfc.so, libQt6OpcUa.so, libQt6OpenGL.so, libQt6OpenGLWidgets.so, libQt6PacketProtocol.a, libQt6Positioning.so, libQt6PositioningQuick.so, libQt6PrintSupport.so, libQt6Protobuf.so, libQt6ProtobufQtCoreTypes.so, libQt6ProtobufQtGuiTypes.so, libQt6ProtobufQuick.so, libQt6ProtobufWellKnownTypes.so, libQt6QGstreamerMediaPluginImpl.a, libQt6Qml.so, libQt6QmlAssetDownloader.a, libQt6QmlCompiler.so, libQt6QmlCore.so, libQt6QmlDebug.a, libQt6QmlDom.a, libQt6QmlFormat.a, libQt6QmlLocalStorage.so, libQt6QmlLS.a, libQt6QmlMeta.so, libQt6QmlModels.so, libQt6QmlNetwork.so, libQt6QmlToolingSettings.a, libQt6QmlTypeRegistrar.a, libQt6QmlWorkerScript.so, libQt6QmlXmlListModel.so, libQt6Quick.so, libQt6Quick3D.so, libQt6Quick3DAssetImport.so, libQt6Quick3DAssetUtils.so, libQt6Quick3DEffects.so, libQt6Quick3DGlslParser.so, libQt6Quick3DHelpers.so, libQt6Quick3DHelpersImpl.so, libQt6Quick3DIblBaker.so, libQt6Quick3DParticleEffects.so, libQt6Quick3DParticles.so, libQt6Quick3DRuntimeRender.so, libQt6Quick3DSpatialAudio.so, libQt6Quick3DUtils.so, libQt6Quick3DXr.so, libQt6QuickControls2.so, libQt6QuickControls2Basic.so, libQt6QuickControls2BasicStyleImpl.so, libQt6QuickControls2FluentWinUI3StyleImpl.so, libQt6QuickControls2Fusion.so, libQt6QuickControls2FusionStyleImpl.so, libQt6QuickControls2Imagine.so, libQt6QuickControls2ImagineStyleImpl.so, libQt6QuickControls2Impl.so, libQt6QuickControls2Material.so, libQt6QuickControls2MaterialStyleImpl.so, libQt6QuickControls2Universal.so, libQt6QuickControls2UniversalStyleImpl.so, libQt6QuickControlsTestUtils.a, libQt6QuickDialogs2.so, libQt6QuickDialogs2QuickImpl.so, libQt6QuickDialogs2Utils.so, libQt6QuickEffects.so, libQt6QuickLayouts.so, libQt6QuickParticles.so, libQt6QuickShapes.so, libQt6QuickShapesDesignHelpers.so, libQt6QuickTemplates2.so, libQt6QuickTimelineBlendTrees.so, libQt6QuickTest.so, libQt6QuickTestUtils.a, libQt6QuickTimeline.so, libQt6QuickTimelineBlendTrees.so, libQt6QuickVectorImageGenerator.so, libQt6QuickVectorImageHelpers.so, libQt6QuickVectorImage.so, libQt6QuickWidgets.so, libQt6RemoteObjects.so, libQt6RemoteObjectsQml.so, libQt6Scxml.so, libQt6ScxmlQml.so, libQt6Sensors.so, libQt6SensorsQuick.so, libQt6SerialBus.so, libQt6SerialPort.so, libQt6ShaderTools.so, libQt6SpatialAudio.so, libQt6Sql.so, libQt6StateMachine.so, libQt6StateMachineQml.so, libQt6Svg.so, libQt6SvgWidgets.so, libQt6Test.so, libQt6TextToSpeech.so, libQt6UiTools.so, libQt6VirtualKeyboard.so, libQt6VirtualKeyboardQml.so, libQt6VirtualKeyboardSettings.so, libQt6WaylandClient.so, libQt6WaylandCompositor.so, libQt6WaylandCompositorIviapplication.so, libQt6WaylandCompositorPresentationTime.so, libQt6WaylandCompositorWLShell.so, libQt6WaylandCompositorXdgShell.so, libQt6WaylandEglClientHwIntegration.so, libQt6WaylandEglCompositorHwIntegration.so, libQt6WebChannel.so, libQt6WebChannelQuick.so, libQt6WebSockets.so, libQt6WebView.so, libQt6WebViewQuick.so, libQt6Widgets.so, libQt6WlShellIntegration.so, libQt6XcbQpa.so, and libQt6Xml.so]{.segbody}
:::

::: seg
**Installed Directories:** [/opt/qt6 and /opt/qt-6.11.1]{.segbody}
:::
::::::
:::::::

::: variablelist
[]{#qt6-descriptions}

### Short Descriptions

  ---------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#assistant-qt6}[[**assistant**]{.command}]{.term}                               is a tool for presenting on-line documentation
  []{#balsam-qt6}[[**balsam**]{.command}]{.term}                                     is a tool to convert 3D scenes from various creation tools to QML format, for use by the new QtQuick 3D library
  []{#canbusutil-qt6}[[**canbustil**]{.command}]{.term}                              is a tool to deal with arbitrary CAN bus frames. A Controller Area Network (CAN) is a vehicle bus standard designed to allow microcontrollers and devices to communicate with each other in applications without a host computer
  []{#designer-qt6}[[**designer**]{.command}]{.term}                                 is a full-fledged GUI builder. It includes powerful features such as preview mode, automatic widget layout, support for custom widgets, and an advanced property editor
  []{#lconvert-qt6}[[**lconvert**]{.command}]{.term}                                 is part of Qt6's Linguist tool chain. It can be used as a standalone tool to convert and filter translation data files
  []{#lightmapviewer-qt6}[[**lightmapviewer-qt6**]{.command}]{.term}                 displays lightmaps generated in Qt's format, and lists information about them
  []{#linguist-qt6}[[**linguist**]{.command}]{.term}                                 provides support for translating applications into local languages
  []{#lottietoqml-qt6}[[**lottietoqml**]{.command}]{.term}                           converts lottie files (which are in SVG format) to QML files
  []{#lrelease-qt6}[[**lrelease**]{.command}]{.term}                                 is a simple command line tool. It reads XML-based translation files in TS format and produces message files used by the application
  []{#lupdate-qt6}[[**lupdate**]{.command}]{.term}                                   finds the translatable strings in the specified source, header and Qt Designer interface files, and stores the extracted messages in translation files to be processed by lrelease
  []{#meshdebug-qt6}[[**meshdebug**]{.command}]{.term}                               displays information about qtquick-3d mesh files
  []{#pixeltool-qt6}[[**pixeltool**]{.command}]{.term}                               is a desktop magnifier - as you move your mouse around the screen, it will show the magnified contents in its window
  []{#qdbus-qt6}[[**qdbus**]{.command}]{.term}                                       lists available services, object paths, methods, signals, and properties of objects on a bus
  []{#qdbuscpp2xml-qt6}[[**qdbuscpp2xml**]{.command}]{.term}                         takes a C++ source file and generates a D-Bus XML definition of the interface
  []{#qdbusviewer-qt6}[[**qdbusviewer**]{.command}]{.term}                           is a graphical D-Bus browser
  []{#qdbusxml2cpp-qt6}[[**qdbusxml2cpp**]{.command}]{.term}                         is a tool that can be used to parse interface descriptions and produce static code representing those interfaces,
  []{#qdistancefieldgenerator-qt6}[[**qdistancefieldgenerator**]{.command}]{.term}   allows a font cache to be pregenerated for Text.QtRendering to speed up an application's startup if the user interface has a lot of text, or multiple fonts, or a large amount of distinct characters, e.g. in CJK writing systems
  []{#qdoc-qt6}[[**qdoc**]{.command}]{.term}                                         is a tool used by [Qt]{.application} Developers to generate documentation for software projects
  []{#qmake-qt6}[[**qmake**]{.command}]{.term}                                       uses information stored in project files to determine what should go in the makefiles it generates
  []{#qml-qt6}[[**qml**]{.command}]{.term}                                           executes a QML file
  []{#qmleasing-qt6}[[**qmleasing**]{.command}]{.term}                               is a tool used to define the easing curves using an interactive curve editor
  []{#qmlformat-qt6}[[**qmlformat**]{.command}]{.term}                               formats QML files according to the QML coding conventions
  []{#qmllint-qt6}[[**qmllint**]{.command}]{.term}                                   is a syntax checker for QML files
  []{#qmlplugindump-qt6}[[**qmlplugindump**]{.command}]{.term}                       is a tool to create a qmltypes file
  []{#qmlpreview-qt6}[[**qmlpreview**]{.command}]{.term}                             is a tool used to analyze QML applications
  []{#qmlprofiler-qt6}[[**qmlprofiler**]{.command}]{.term}                           is a tool which watches QML and JavaScript files on disk and updates the application live with any changes
  []{#qmlscene-qt6}[[**qmlscene**]{.command}]{.term}                                 is a utility that loads and displays QML documents even before the application is complete
  []{#qmltestrunner-qt6}[[**qmltestrunner**]{.command}]{.term}                       is a tool used to make tests
  []{#qtdiag-qt6}[[**qtdiag**]{.command}]{.term}                                     is a tool for reporting diagnostic information about Qt and its environment
  []{#qtpaths-qt6}[[**qtpaths**]{.command}]{.term}                                   is a tool to query Qt path information
  []{#qtplugininfo-qt6}[[**qtplugininfo**]{.command}]{.term}                         dumps meta-data about Qt plugins in JSON format
  ---------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::::::

::: navfooter
-   [Prev](pangomm2.md "Pangomm-2.56.1"){accesskey="p"}

    Pangomm-2.56.1

-   [Next](qtwebengine.md "QtWebEngine-6.11.1"){accesskey="n"}

    QtWebEngine-6.11.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
