<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-panel.md "lxqt-panel-2.4.1")

    lxqt-panel-2.4.1

-   [Next](lxqt-powermanagement.md "lxqt-powermanagement-2.4.0")

    lxqt-powermanagement-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# pcmanfm-qt-2.4.0 {#pcmanfm-qt-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to pcmanfm-qt {#introduction-to-pcmanfm-qt}

The <span class="application">pcmanfm-qt</span> is a file manager and desktop icon manager (a <span class="application">Qt</span> port of <span class="application">pcmanfm</span> and <span class="application">libfm</span>).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/pcmanfm-qt/releases/download/2.4.0/pcmanfm-qt-2.4.0.tar.xz">https://github.com/lxqt/pcmanfm-qt/releases/download/2.4.0/pcmanfm-qt-2.4.0.tar.xz</a>

-   Download MD5 sum: 68051ade13df176dcc267a7350059baa

-   Download size: 432 KB

-   Estimated disk space required: 17 MB

-   Estimated build time: 0.5 SBU
</div>

### pcmanfm-qt Dependencies

#### Required

<a class="xref" href="lxqt-layer-shell-qt.md" title="layer-shell-qt-6.6.5 for lxqt">layer-shell-qt-6.6.5 for lxqt</a>, <a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>, <a class="xref" href="libfm-qt.md" title="libfm-qt-2.4.0">libfm-qt-2.4.0</a>, and <a class="xref" href="lxqt-menu-data.md" title="lxqt-menu-data-2.4.0">lxqt-menu-data-2.4.0</a>

#### Recommended

<a class="xref" href="../gnome/gvfs.md" title="Gvfs-1.60.0">Gvfs-1.60.0</a> (runtime) and <a class="xref" href="../x/oxygen-icons.md" title="oxygen-icons-6.1.0">oxygen-icons-6.1.0</a> or another icon theme (depending on your choice, some icons will be missing in several places)
</div>

<div class="installation" lang="en">
## Installation of pcmanfm-qt {#installation-of-pcmanfm-qt}

If libLayerShellQtInterface.so is installed in /opt, help this package find it. As the <code class="systemitem">root</code> user:

```bash
if [   -e /opt/kf6/lib/libLayerShellQtInterface.so -a \
     ! -e /usr/lib/libLayerShellQtInterface.so ]; then

    ln -sv /opt/kf6/lib/libLayerShellQtInterface.so \
           /usr/lib/libLayerShellQtInterface.so
fi
```

Install <span class="application">pcmanfm-qt</span> by running the following commands:

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

To make <span class="application">pcmanfm-qt</span> easier to find in menus, adjust the .desktop file. Again, as the <code class="systemitem">root</code> user:

```bash
sed -e '/Categories=/s/=/=System;FileTools;/' \
    -e '/Name=/s/=.*/=File Manager PCManFM-Qt'/ \
    -i /usr/share/applications/pcmanfm-qt.desktop
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">pcmanfm-qt</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/pcmanfm-qt</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- --------------------------------------------
  <a id="pcmanfm-qt-prog"></a><span class="command"><span class="term"><strong>pcmanfm-qt</strong></span></span>   is a file manager and desktop icon manager
  --------------------------------------------------------- --------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-panel.md "lxqt-panel-2.4.1")

    lxqt-panel-2.4.1

-   [Next](lxqt-powermanagement.md "lxqt-powermanagement-2.4.0")

    lxqt-powermanagement-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
