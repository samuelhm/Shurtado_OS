<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-build-tools.md "lxqt-build-tools-2.4.0")

    lxqt-build-tools-2.4.0

-   [Next](libqtxdg.md "libqtxdg-4.4.0")

    libqtxdg-4.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libdbusmenu-lxqt-0.4.0 {#libdbusmenu-lxqt-0.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libdbusmenu-lxqt {#introduction-to-libdbusmenu-lxqt}

The <span class="application">libdbusmenu-lxqt</span> package provides a Qt implementation of the DBusMenu protocol.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/libdbusmenu-lxqt/releases/download/0.4.0/libdbusmenu-lxqt-0.4.0.tar.xz">https://github.com/lxqt/libdbusmenu-lxqt/releases/download/0.4.0/libdbusmenu-lxqt-0.4.0.tar.xz</a>

-   Download MD5 sum: f2aef1535a2ed37da8e5983d001ec194

-   Download size: 40 KB

-   Estimated disk space required: 8.5 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### libdbusmenu-lxqt Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="ulink" href="https://qjson.sourceforge.net/">qjson</a>
</div>

<div class="installation" lang="en">
## Installation of libdbusmenu-lxqt {#installation-of-libdbusmenu-lxqt}

Install <span class="application">libdbusmenu-lxqt</span> by running the following commands:

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

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D WITH_DOC=ON`*: Use this switch if you've installed <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and want to build the optional documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libdbusmenu-lxqt.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/dbusmenu-lxqt and /usr/lib/cmake/dbusmenu-lxqt</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------- ----------------------------------------------------------------------------
  <a id="libdbusmenu-lxqt-lib"></a><span class="term"><code class="filename">libdbusmen-lxqt.so</code></span>   contains a Qt implementation of the DBusMenu protocol, customized for LXQt
  ------------------------------------------------------------------- ----------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-build-tools.md "lxqt-build-tools-2.4.0")

    lxqt-build-tools-2.4.0

-   [Next](libqtxdg.md "libqtxdg-4.4.0")

    libqtxdg-4.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
