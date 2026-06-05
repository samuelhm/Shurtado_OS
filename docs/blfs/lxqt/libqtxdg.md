<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](libdbusmenu-lxqt.md "libdbusmenu-lxqt-0.4.0")

    libdbusmenu-lxqt-0.4.0

-   [Next](lxqt-menu-data.md "lxqt-menu-data-2.4.0")

    lxqt-menu-data-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libqtxdg-4.4.0 {#libqtxdg-4.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libqtxdg {#introduction-to-libqtxdg}

The <span class="application">libqtxdg</span> package contains a Qt implementation of the freedesktop.org XDG specifications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/libqtxdg/releases/download/4.4.0/libqtxdg-4.4.0.tar.xz">https://github.com/lxqt/libqtxdg/releases/download/4.4.0/libqtxdg-4.4.0.tar.xz</a>

-   Download MD5 sum: ea81dc21611085a6601defb3fe6cce89

-   Download size: 76 KB

-   Estimated disk space required: 9.3 MB

-   Estimated build time: 0.4 SBU
</div>

### libqtxdg Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="lxqt-build-tools.md" title="lxqt-build-tools-2.4.0">lxqt-build-tools-2.4.0</a>, and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>

#### Optional (runtime)

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> (for <span class="command"><strong>gtk-update-icon-cache</strong></span>) and <a class="xref" href="../x/xterm.md" title="xterm-410">xterm-410</a>
</div>

<div class="installation" lang="en">
## Installation of libqtxdg {#installation-of-libqtxdg}

Install <span class="application">libqtxdg</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..       &&

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
**Installed Library:** <span class="segbody">libQt6Xdg.so, libQt6XdgIconLoader.so, and libQt6XdgIconPlugin.so (in \$QT6DIR/lib)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/{qt6xdg,qt6xdgiconloader} and /usr/share/cmake/{qt6xdg,qt6xdgiconloader}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- ------------------------------------------------------------
  <a id="libQt6Xdg-lib"></a><span class="term"><code class="filename">libQt6Xdg.so</code></span>                   contains an implementation of the XDG specification for Qt
  <a id="libQt6XdgIconLoader"></a><span class="term"><code class="filename">libQt6XdgIconLoader.so</code></span>   contains the XDG Icon Loader for Qt
  <a id="libQt6XdgIconPlugin"></a><span class="term"><code class="filename">libQt6XdgIconPlugin</code></span>      contains a plugin for loading icons using Qt
  ---------------------------------------------------------------------- ------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libdbusmenu-lxqt.md "libdbusmenu-lxqt-0.4.0")

    libdbusmenu-lxqt-0.4.0

-   [Next](lxqt-menu-data.md "lxqt-menu-data-2.4.0")

    lxqt-menu-data-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
