<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-globalkeys.md "lxqt-globalkeys-2.4.0")

    lxqt-globalkeys-2.4.0

-   [Next](lxqt-panel.md "lxqt-panel-2.4.1")

    lxqt-panel-2.4.1

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-qtplugin-2.4.0 {#lxqt-qtplugin-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-qtplugin {#introduction-to-lxqt-qtplugin}

The <span class="application">lxqt-qtplugin</span> package provides an <span class="application">LXQt</span> <span class="application">Qt</span> platform integration plugin.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-qtplugin/releases/download/2.4.0/lxqt-qtplugin-2.4.0.tar.xz">https://github.com/lxqt/lxqt-qtplugin/releases/download/2.4.0/lxqt-qtplugin-2.4.0.tar.xz</a>

-   Download MD5 sum: 679a8472698a88556622c3a4d3c1a524

-   Download size: 28 KB

-   Estimated disk space required: 2.7 MB

-   Estimated build time: 0.1 SBU
</div>

### lxqt-qtplugin Dependencies

#### Required

<a class="xref" href="libfm-qt.md" title="libfm-qt-2.4.0">libfm-qt-2.4.0</a>, <a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>, and <a class="xref" href="libdbusmenu-lxqt.md" title="libdbusmenu-lxqt-0.4.0">libdbusmenu-lxqt-0.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-qtplugin {#installation-of-lxqt-qtplugin}

Install <span class="application">lxqt-qtplugin</span> by running the following commands:

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
**Installed Library:** <span class="segbody">libqtlxqt.so (in \$QT6DIR/plugins/platformthemes)</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">\$QT6DIR/plugins/platformthemes</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------
  <a id="libqtlxqt-lib"></a><span class="term"><code class="filename">libqtlxqt.so</code></span>   contains the LXQt QT plugin loader
  ------------------------------------------------------ ------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-globalkeys.md "lxqt-globalkeys-2.4.0")

    lxqt-globalkeys-2.4.0

-   [Next](lxqt-panel.md "lxqt-panel-2.4.1")

    lxqt-panel-2.4.1

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
