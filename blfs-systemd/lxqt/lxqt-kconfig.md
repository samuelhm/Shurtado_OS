<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-kwindowsystem.md "kwindowsystem-6.26.0 for lxqt")

    kwindowsystem-6.26.0 for lxqt

-   [Next](lxqt-solid.md "solid-6.26.0 for lxqt")

    solid-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kconfig-6.26.0 for lxqt {#kconfig-6.26.0-for-lxqt}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to kconfig {#introduction-to-kconfig}

The <span class="application">kconfig</span> package provides access to configuration files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

This package is extracted from the KF6 set of packages. If <a class="xref" href="../kde/frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a> is built, do <span class="bold"><strong>NOT</strong></span> also build this package as presented here.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/frameworks/6.26/kconfig-6.26.0.tar.xz">https://download.kde.org/stable/frameworks/6.26/kconfig-6.26.0.tar.xz</a>

-   Download MD5 sum: d184d34f565a550a57f894775d334031

-   Download size: 376 KB

-   Estimated disk space required: 29 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### kconfig Dependencies

#### Required

<a class="xref" href="../kde/extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a> and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of kconfig {#installation-of-kconfig}

Install <span class="application">kconfig</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_BUILD_TYPE=Release         \
      -D CMAKE_INSTALL_LIBEXECDIR=libexec \
      -D KDE_INSTALL_USE_QT_SYS_PATHS=ON  \
      -D BUILD_TESTING=OFF                \
      -W no-dev ..                        &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">kreadconfig6 and kwriteconfig6</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libKF6ConfigCore.so, libKF6ConfigGui.so, and libKF6ConfigQml.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/KF6/{KConfigCore,KConfig,KConfigQml,KConfigGui}, /usr/lib/cmake/KF6Config, /usr/libexec/kf6, and \$QT6DIR/qml/org/kde/config</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------------------- -------------------------------------------------------------
  <a id="lxqt-kconfig-kreadconfig6"></a><span class="command"><span class="term"><strong>kreadconfig6</strong></span></span>           reads from a configuration file using the KConfig interface
  <a id="lxqt-kconfig-kwriteconfig6"></a><span class="command"><span class="term"><strong>kwriteconfig6</strong></span></span>         writes to a configuration file using the KConfig interface
  <a id="lxqt-kconfig-libKF6ConfigCore"></a><span class="term"><code class="filename">libKF6ConfigCore.so</code></span>   contains the core configuration library for KF6
  <a id="lxqt-kconfig-libKF6ConfigGui"></a><span class="term"><code class="filename">libKF6ConfigGui.so</code></span>     contains functions for a GUI to interface with KConfig
  <a id="lxqt-kconfig-libKF6ConfigQml"></a><span class="term"><code class="filename">libKF6ConfigQml.so</code></span>     contains a QML interface to KConfig
  ----------------------------------------------------------------------------- -------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-kwindowsystem.md "kwindowsystem-6.26.0 for lxqt")

    kwindowsystem-6.26.0 for lxqt

-   [Next](lxqt-solid.md "solid-6.26.0 for lxqt")

    solid-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
