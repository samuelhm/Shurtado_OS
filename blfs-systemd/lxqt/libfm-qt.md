<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](menu-cache.md "menu-cache-1.1.1")

    menu-cache-1.1.1

-   [Next](lxqt-globalkeys.md "lxqt-globalkeys-2.4.0")

    lxqt-globalkeys-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libfm-qt-2.4.0 {#libfm-qt-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libfm-qt {#introduction-to-libfm-qt}

<span class="application">libfm-qt</span> is the Qt port of libfm, a library providing components to build desktop file managers. In LXQt, libfm-qt also handles desktop icons and backgrounds.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/libfm-qt/releases/download/2.4.0/libfm-qt-2.4.0.tar.xz">https://github.com/lxqt/libfm-qt/releases/download/2.4.0/libfm-qt-2.4.0.tar.xz</a>

-   Download MD5 sum: d836e9732df22a1fc8a5b3d3919f4549

-   Download size: 432 KB

-   Estimated disk space required: 29 MB

-   Estimated build time: 0.4 SBU (Using parallelism=4)
</div>

### libfm-qt Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="../general/libexif.md" title="libexif-0.6.26">libexif-0.6.26</a>, <a class="xref" href="menu-cache.md" title="menu-cache-1.1.1">menu-cache-1.1.1</a>, and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of libfm-qt {#installation-of-libfm-qt}

Install <span class="application">libfm-qt</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&
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
**Installed Library:** <span class="segbody">libfm-qt6.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libfm-qt6, /usr/share/cmake/fm-qt6, and /usr/share/libfm-qt6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- -------------------------------------------------------------------------------------------------------
  <a id="libfm-qt-lib"></a><span class="term"><code class="filename">libfm-qt6.so</code></span>   contains functions to implement a graphical file manager as well as set desktop icons and backgrounds
  ----------------------------------------------------- -------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](menu-cache.md "menu-cache-1.1.1")

    menu-cache-1.1.1

-   [Next](lxqt-globalkeys.md "lxqt-globalkeys-2.4.0")

    lxqt-globalkeys-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
