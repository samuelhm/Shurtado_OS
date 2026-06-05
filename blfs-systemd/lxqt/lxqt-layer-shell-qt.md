<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-libkscreen.md "libkscreen-6.6.5 for lxqt")

    libkscreen-6.6.5 for lxqt

-   [Next](muparser.md "muparser-2.3.5")

    muparser-2.3.5

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# layer-shell-qt-6.6.5 for lxqt {#layer-shell-qt-6.6.5-for-lxqt}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to layer-shell-qt {#introduction-to-layer-shell-qt}

This component is meant for applications to be able to easily use clients based on a "wlr-layer-shell" protocol. Clients can use this interface to assign the surface_layer role to wl_surfaces. Such surfaces are assigned to a "layer" of the output and rendered with a defined z-depth respective to each other.

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
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/plasma/6.6.5/layer-shell-qt-6.6.5.tar.xz">https://download.kde.org/stable/plasma/6.6.5/layer-shell-qt-6.6.5.tar.xz</a>

-   Download MD5 sum: 4b79f4b2765f7c1429a3335154b23989

-   Download size: 36 KB

-   Estimated disk space required: 5.2 MB

-   Estimated build time: 0.2 SBU
</div>

### layer-shell-qt Dependencies

#### Required

<a class="xref" href="../kde/extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a> and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of layer-shell {#installation-of-layer-shell}

Install <span class="application">layer-shell-qt</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
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
**Installed Library:** <span class="segbody">libLayerShellQtInterface.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/qml/org/kde/layershell and /usr/include/LayerShellQt</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-libkscreen.md "libkscreen-6.6.5 for lxqt")

    libkscreen-6.6.5 for lxqt

-   [Next](muparser.md "muparser-2.3.5")

    muparser-2.3.5

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
