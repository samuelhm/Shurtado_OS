<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](liblxqt.md "liblxqt-2.4.0")

    liblxqt-2.4.0

-   [Next](qtxdg-tools.md "qtxdg-tools-4.4.0")

    qtxdg-tools-4.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libsysstat-1.1.0 {#libsysstat-1.1.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libsysstat {#introduction-to-libsysstat}

The <span class="application">libsysstat</span> package contains a library used to query system information and statistics.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/libsysstat/releases/download/1.1.0/libsysstat-1.1.0.tar.xz">https://github.com/lxqt/libsysstat/releases/download/1.1.0/libsysstat-1.1.0.tar.xz</a>

-   Download MD5 sum: b21e0facd325c1d8e177121e2ac71e78

-   Download size: 20 KB

-   Estimated disk space required: 1.9 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libsysstat Dependencies

#### Required

<a class="xref" href="lxqt-build-tools.md" title="lxqt-build-tools-2.4.0">lxqt-build-tools-2.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of libsysstat {#installation-of-libsysstat}

Install <span class="application">libsysstat</span> by running the following commands:

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
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libsysstat-qt6.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/sysstat-qt6 and /usr/share/cmake/sysstat-qt6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------
  <a id="libsysstat-qt6"></a><span class="term"><code class="filename">libsysstat-qt6.so</code></span>   contains functions to query system information and statistics
  ------------------------------------------------------------ ---------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](liblxqt.md "liblxqt-2.4.0")

    liblxqt-2.4.0

-   [Next](qtxdg-tools.md "qtxdg-tools-4.4.0")

    qtxdg-tools-4.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
