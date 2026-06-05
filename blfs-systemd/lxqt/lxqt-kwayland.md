<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-kidletime.md "kidletime-6.26.0 for lxqt")

    kidletime-6.26.0 for lxqt

-   [Next](lxqt-libkscreen.md "libkscreen-6.6.5 for lxqt")

    libkscreen-6.6.5 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kwayland-6.6.5 for lxqt {#kwayland-6.6.5-for-lxqt}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to kwayland {#introduction-to-kwayland}

<span class="application">kwayland</span> is a Qt-style API to interact with the <span class="application">wayland-client</span> and <span class="application">wayland-server</span> API.

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
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/plasma/6.6.5/kwayland-6.6.5.tar.xz">https://download.kde.org/stable/plasma/6.6.5/kwayland-6.6.5.tar.xz</a>

-   Download MD5 sum: bdb0b9f18478d16b31246882fdcbc458

-   Download size: 132 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### kwayland Dependencies

#### Required

<a class="xref" href="../kde/extra-cmake-modules.md" title="Extra-CMake-Modules-6.26.0">Extra-CMake-Modules-6.26.0</a>, <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a> (built with <a class="xref" href="../general/wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a> support), <a class="xref" href="../kde/plasma-wayland-protocols.md" title="plasma-wayland-protocols-1.21.0">plasma-wayland-protocols-1.21.0</a>, and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of kwayland {#installation-of-kwayland}

Install <span class="application">kwayland</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libKWaylandClient.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/KWayland and /usr/lib/cmake/KWayland</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------------------- ----------------------------------------------------------------------
  <a id="lxqt-kwayland-client"></a><span class="term"><code class="filename">libKWaylandClient.so</code></span>   contains the <span class="application">wayland-client</span> Qt-style wrapper library
  --------------------------------------------------------------------- ----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-kidletime.md "kidletime-6.26.0 for lxqt")

    kidletime-6.26.0 for lxqt

-   [Next](lxqt-libkscreen.md "libkscreen-6.6.5 for lxqt")

    libkscreen-6.6.5 for lxqt

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
