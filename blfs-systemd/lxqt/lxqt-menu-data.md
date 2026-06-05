<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](libqtxdg.md "libqtxdg-4.4.0")

    libqtxdg-4.4.0

-   [Next](liblxqt.md "liblxqt-2.4.0")

    liblxqt-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-menu-data-2.4.0 {#lxqt-menu-data-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-menu-data {#introduction-to-lxqt-menu-data}

The <span class="application">lxqt-menu-data</span> package contains compliant menu files for LXQt.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-menu-data/releases/download/2.4.0/lxqt-menu-data-2.4.0.tar.xz">https://github.com/lxqt/lxqt-menu-data/releases/download/2.4.0/lxqt-menu-data-2.4.0.tar.xz</a>

-   Download MD5 sum: bfb146f255c3c670f2b2c56c2515ce3c

-   Download size: 56 KB

-   Estimated disk space required: 1.8 MB

-   Estimated build time: less than 0.1 SBU
</div>

### lxqt-menu-data Dependencies

#### Required

<a class="xref" href="lxqt-build-tools.md" title="lxqt-build-tools-2.4.0">lxqt-build-tools-2.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-menu-data {#installation-of-lxqt-menu-data}

Install <span class="application">lxqt-menu-data</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..  &&
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
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/xdg/menus, /usr/share/desktop-directories, and /usr/share/cmake/lxqt-menu-data</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libqtxdg.md "libqtxdg-4.4.0")

    libqtxdg-4.4.0

-   [Next](liblxqt.md "liblxqt-2.4.0")

    liblxqt-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
