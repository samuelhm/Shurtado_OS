<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-menu-data.md "lxqt-menu-data-2.4.0")

    lxqt-menu-data-2.4.0

-   [Next](libsysstat.md "libsysstat-1.1.0")

    libsysstat-1.1.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# liblxqt-2.4.0 {#liblxqt-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to liblxqt {#introduction-to-liblxqt}

The <span class="application">liblxqt</span> is the core utility library for all <span class="application">LXQt</span> components.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/liblxqt/releases/download/2.4.0/liblxqt-2.4.0.tar.xz">https://github.com/lxqt/liblxqt/releases/download/2.4.0/liblxqt-2.4.0.tar.xz</a>

-   Download MD5 sum: daa81b9deda0ac4c37ab3ec914bae82b

-   Download size: 92 KB

-   Estimated disk space required: 7.9 MB

-   Estimated build time: 0.4 SBU
</div>

### liblxqt Dependencies

#### Required

<a class="xref" href="libqtxdg.md" title="libqtxdg-4.4.0">libqtxdg-4.4.0</a>, <a class="xref" href="lxqt-kwindowsystem.md" title="kwindowsystem-6.26.0 for lxqt">kwindowsystem-6.26.0 for lxqt</a>, and <a class="xref" href="../kde/polkit-qt.md" title="Polkit-Qt-0.201.1">polkit-qt-0.201.1</a>
</div>

<div class="installation" lang="en">
## Installation of liblxqt {#installation-of-liblxqt}

Install <span class="application">liblxqt</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">lxqt-backlight_backend</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">liblxqt.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/lxqt, /usr/share/cmake/lxqt, and /usr/share/lxqt/liblxqt</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------- --------------------------------------------------
  <a id="lxqt-backlight_backend"></a><span class="command"><span class="term"><strong>lxqt-backlight_backend</strong></span></span>   sets the backlight level for a display
  <a id="liblxqt-lib"></a><span class="term"><code class="filename">liblxqt.so</code></span>                             contains a variety of utility functions for LXQt
  ---------------------------------------------------------------------------- --------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-menu-data.md "lxqt-menu-data-2.4.0")

    lxqt-menu-data-2.4.0

-   [Next](libsysstat.md "libsysstat-1.1.0")

    libsysstat-1.1.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
