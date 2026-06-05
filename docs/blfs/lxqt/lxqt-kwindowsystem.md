<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](pre-install.md "LXQt Desktop Pre-Install Instructions")

    LXQt Desktop Pre-Install Instructions

-   [Next](lxqt-kconfig.md "kconfig-6.26.0 for lxqt")

    kconfig-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kwindowsystem-6.26.0 for lxqt {#kwindowsystem-6.26.0-for-lxqt}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to kwindowsystem {#introduction-to-kwindowsystem}

The <span class="application">kwindowsystem</span> provides information about, and allows interaction with, the windowing system. It provides a high level API that is windowing system independent and has platform specific implementations.

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
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/frameworks/6.26/kwindowsystem-6.26.0.tar.xz">https://download.kde.org/stable/frameworks/6.26/kwindowsystem-6.26.0.tar.xz</a>

-   Download MD5 sum: 0f4bbe9d04716d96cd53aada98699f5a

-   Download size: 2.2 MB

-   Estimated disk space required: 74 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### kwindowsystem Dependencies

#### Required

<a class="xref" href="../kde/extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a>, <a class="xref" href="../kde/plasma-wayland-protocols.md" title="plasma-wayland-protocols-1.21.0">plasma-wayland-protocols-1.21.0</a>, <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>, and <a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>
</div>

<div class="installation" lang="en">
## Installation of kwindowsystem {#installation-of-kwindowsystem}

Install <span class="application">kwindowsystem</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_TESTING=OFF         \
      -W no-dev ..                 &&
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libKF6WindowSystem.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/KF6, /usr/lib/cmake/KF6WindowSystem, /usr/lib/plugins/kf6, /usr/lib/qml/org/kde, and /usr/share/qlogging-categories6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ ----------------------------------------------------------
  <a id="lxqt-kwindowsystem-lib"></a><span class="term"><code class="filename">libKF6WindowSystem.so</code></span>   contains the <span class="application">KF6 Windowing</span> API functions
  ------------------------------------------------------------------------ ----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pre-install.md "LXQt Desktop Pre-Install Instructions")

    LXQt Desktop Pre-Install Instructions

-   [Next](lxqt-kconfig.md "kconfig-6.26.0 for lxqt")

    kconfig-6.26.0 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
