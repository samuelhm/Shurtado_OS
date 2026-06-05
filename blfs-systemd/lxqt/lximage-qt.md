<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](lxqt-apps.md "LXQt Applications")

    LXQt Applications

-   [Next](lxqt-archiver.md "lxqt-archiver-1.4.0")

    lxqt-archiver-1.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lximage-qt-2.4.0 {#lximage-qt-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lximage-qt {#introduction-to-lximage-qt}

The <span class="application">lximage-qt</span> package contains a lightweight image viewer and screenshot program.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lximage-qt/releases/download/2.4.0/lximage-qt-2.4.0.tar.xz">https://github.com/lxqt/lximage-qt/releases/download/2.4.0/lximage-qt-2.4.0.tar.xz</a>

-   Download MD5 sum: 3bec142eec14e1c3c40927dd9ecc36f2

-   Download size: 852 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.5 SBU
</div>

### lximage-qt Dependencies

#### Required

<a class="xref" href="libfm-qt.md" title="libfm-qt-2.4.0">libfm-qt-2.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of lximage-qt {#installation-of-lximage-qt}

Install <span class="application">lximage-qt</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_PREFIX=/usr \
      ..                           &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you have <a class="xref" href="../xsoft/xdg-utils.md" title="xdg-utils-1.2.1">xdg-utils-1.2.1</a> installed, as the <code class="systemitem">root</code> user, run <span class="command"><strong>xdg-icon-resource forceupdate --theme hicolor</strong></span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">lximage-qt</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/lximage-qt</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="lximage-qt-prog"></a><span class="command"><span class="term"><strong>lximage-qt</strong></span></span>   is a lightweight image viewer and screenshot program. There is a menu entry in Utilities for the screenshot program. From the command line, you can obtain a full screen or window shot by running <span class="command"><strong>lximage-qt --screenshot</strong></span>
  --------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-apps.md "LXQt Applications")

    LXQt Applications

-   [Next](lxqt-archiver.md "lxqt-archiver-1.4.0")

    lxqt-archiver-1.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
