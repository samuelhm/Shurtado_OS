<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](xdg-desktop-portal-lxqt.md "xdg-desktop-portal-lxqt-1.4.0")

    xdg-desktop-portal-lxqt-1.4.0

-   [Next](post-install.md "LXQt Desktop Final Instructions")

    LXQt Desktop Final Instructions

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# obconf-qt-0.16.5 {#obconf-qt-0.16.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to obconf-qt {#introduction-to-obconf-qt}

The <span class="application">obconf-qt</span> package is a Qt-based configuration tool for <span class="application">Openbox</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/obconf-qt/releases/download/0.16.5/obconf-qt-0.16.5.tar.xz">https://github.com/lxqt/obconf-qt/releases/download/0.16.5/obconf-qt-0.16.5.tar.xz</a>

-   Download MD5 sum: d5575e961c56676ed7cff32d87564f26

-   Download size: 124 KB

-   Estimated disk space required: 5.1 MB

-   Estimated build time: 0.2 SBU
</div>

### obconf-qt Dependencies

#### Required

<a class="xref" href="../x/hicolor-icon-theme.md" title="hicolor-icon-theme-0.18">hicolor-icon-theme-0.18</a>, <a class="xref" href="lxqt-build-tools.md" title="lxqt-build-tools-2.4.0">lxqt-build-tools-2.4.0</a>, <a class="xref" href="../x/openbox.md" title="openbox-3.6.1">openbox-3.6.1</a>, and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of obconf-qt {#installation-of-obconf-qt}

Install <span class="application">obconf-qt</span> by running the following commands:

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
**Installed Program:** <span class="segbody">obconf-qt</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- --------------------------------------------------------------
  <a id="obconf-qt-prog"></a><span class="command"><span class="term"><strong>obconf-qt</strong></span></span>   is a Qt-based configuration tool for <span class="application">Openbox</span>
  ------------------------------------------------------- --------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xdg-desktop-portal-lxqt.md "xdg-desktop-portal-lxqt-1.4.0")

    xdg-desktop-portal-lxqt-1.4.0

-   [Next](post-install.md "LXQt Desktop Final Instructions")

    LXQt Desktop Final Instructions

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
