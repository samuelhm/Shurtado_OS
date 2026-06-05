<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-kwayland.md "kwayland-6.6.5 for lxqt")

    kwayland-6.6.5 for lxqt

-   [Next](lxqt-layer-shell-qt.md "layer-shell-qt-6.6.5 for lxqt")

    layer-shell-qt-6.6.5 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libkscreen-6.6.5 for lxqt {#libkscreen-6.6.5-for-lxqt}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libkscreen {#introduction-to-libkscreen}

The <span class="application">libkscreen</span> package contains the KDE Screen Management library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

This package is extracted from the plasma set of packages. If <a class="xref" href="../kde/plasma-all.md" title="Building Plasma">Plasma-6.6.5</a> is built, do <span class="bold"><strong>NOT</strong></span> also build this package as presented here.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/plasma/6.6.5/libkscreen-6.6.5.tar.xz">https://download.kde.org/stable/plasma/6.6.5/libkscreen-6.6.5.tar.xz</a>

-   Download MD5 sum: 84c079431cc0997e392198dfd6e1ca5d

-   Download size: 120 KB

-   Estimated disk space required: 18 MB

-   Estimated build time: 0.3 SBU (using parallelism=4)
</div>

### libkscreen Dependencies

#### Required

<a class="xref" href="lxqt-kwayland.md" title="kwayland-6.6.5 for lxqt">kwayland-6.6.5 for lxqt</a>, <a class="xref" href="../kde/plasma-wayland-protocols.md" title="plasma-wayland-protocols-1.21.0">plasma-wayland-protocols-1.21.0</a>, and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of libkscreen {#installation-of-libkscreen}

Install <span class="application">libkscreen</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">kscreen-doctor</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libKF6Screen.so and libKF6ScreenDpms.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/cmake/KF6Screen, /usr/include/KF6/KScreen, and \$QT6DIR/lib/plugins/kf6/kscreen</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------- ---------------------------------------------------------
  <a id="lxqt-libkscreen-kscreen-doctor"></a><span class="command"><span class="term"><strong>kscreen-doctor</strong></span></span>   allows modifying the screen setup from the command line
  <a id="lxqt-libkscreen-lib"></a><span class="term"><code class="filename">libKF6Screen.so</code></span>                contains the KDE Screen Management library
  <a id="lxqt-libkscreen-dpms-lib"></a><span class="term"><code class="filename">libKF6ScreenDpms.so</code></span>       contains API functions for handling DPMS
  ---------------------------------------------------------------------------- ---------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-kwayland.md "kwayland-6.6.5 for lxqt")

    kwayland-6.6.5 for lxqt

-   [Next](lxqt-layer-shell-qt.md "layer-shell-qt-6.6.5 for lxqt")

    layer-shell-qt-6.6.5 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
