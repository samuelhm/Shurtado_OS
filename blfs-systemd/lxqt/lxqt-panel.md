<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-qtplugin.md "lxqt-qtplugin-2.4.0")

    lxqt-qtplugin-2.4.0

-   [Next](pcmanfm-qt.md "pcmanfm-qt-2.4.0")

    pcmanfm-qt-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-panel-2.4.1 {#lxqt-panel-2.4.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-panel {#introduction-to-lxqt-panel}

The <span class="application">lxqt-panel</span> package contains a lightweight X11 desktop panel.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-panel/releases/download/2.4.1/lxqt-panel-2.4.1.tar.xz">https://github.com/lxqt/lxqt-panel/releases/download/2.4.1/lxqt-panel-2.4.1.tar.xz</a>

-   Download MD5 sum: bd2273c99d752fe36a013993cd68d060

-   Download size: 816 KB

-   Estimated disk space required: 74 MB

-   Estimated build time: 0.9 SBU (Using parallelism=4)
</div>

### lxqt-panel Dependencies

#### Required

<a class="xref" href="lxqt-layer-shell-qt.md" title="layer-shell-qt-6.6.5 for lxqt">layer-shell-qt-6.6.5 for lxqt</a>, <a class="xref" href="libdbusmenu-lxqt.md" title="libdbusmenu-lxqt-0.4.0">libdbusmenu-lxqt-0.4.0</a>, <a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>, <a class="xref" href="lxqt-globalkeys.md" title="lxqt-globalkeys-2.4.0">lxqt-globalkeys-2.4.0</a>, <a class="xref" href="lxqt-menu-data.md" title="lxqt-menu-data-2.4.0">lxqt-menu-data-2.4.0</a>, <a class="xref" href="lxqt-solid.md" title="solid-6.26.0 for lxqt">solid-6.26.0 for lxqt</a>, and <a class="xref" href="menu-cache.md" title="menu-cache-1.1.1">menu-cache-1.1.1</a>

#### Recommended

<a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, <a class="xref" href="../general/libstatgrab.md" title="libstatgrab-0.92.1">libstatgrab-0.92.1</a> (network monitor and CPU load plugins), <a class="xref" href="libsysstat.md" title="libsysstat-1.1.0">libsysstat-1.1.0</a> (CPU and network monitor plugins), <a class="xref" href="../general/libxkbcommon.md" title="libxkbcommon-1.13.2">libxkbcommon-1.13.2</a> (keyboard indicator plugin), and <a class="xref" href="../general/lm-sensors.md" title="lm-sensors-3-6-2">lm-sensors-3-6-2</a> (sensors plugin)
</div>

<div class="installation" lang="en">
## Installation of lxqt-panel {#installation-of-lxqt-panel}

Install <span class="application">lxqt-panel</span> by running the following commands:

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
**Installed Program:** <span class="segbody">lxqt-panel</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">several plugins under /usr/lib/lxqt-panel</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/lxqt-panel and /usr/share/lxqt/panel</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- ---------------------------------------------------------------------------------------
  <a id="lxqt-panel-prog"></a><span class="command"><span class="term"><strong>lxqt-panel</strong></span></span>   is a lightweight <span class="application">Qt6</span> based panel for the <span class="application">LXQt</span> Desktop
  --------------------------------------------------------- ---------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-qtplugin.md "lxqt-qtplugin-2.4.0")

    lxqt-qtplugin-2.4.0

-   [Next](pcmanfm-qt.md "pcmanfm-qt-2.4.0")

    pcmanfm-qt-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
