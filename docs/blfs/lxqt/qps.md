<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](pavucontrol-qt.md "pavucontrol-qt-2.4.0")

    pavucontrol-qt-2.4.0

-   [Next](qtermwidget.md "qtermwidget-2.4.0")

    qtermwidget-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# qps-2.13.0 {#qps-2.13.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to qps {#introduction-to-qps}

The <span class="application">qps</span> package contains a Qt process manager.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/qps/releases/download/2.13.0/qps-2.13.0.tar.xz">https://github.com/lxqt/qps/releases/download/2.13.0/qps-2.13.0.tar.xz</a>

-   Download MD5 sum: 554ada593b7d19f6d3a81cc493682a14

-   Download size: 472 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.5 SBU
</div>

### qps Dependencies

#### Required

<a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of qps {#installation-of-qps}

Install <span class="application">qps</span> by running the following commands:

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
**Installed Program:** <span class="segbody">qps</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/qps</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------- -------------------------------
  <a id="qps-prog"></a><span class="command"><span class="term"><strong>qps</strong></span></span>   is a Qt-based process manager
  ------------------------------------------- -------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pavucontrol-qt.md "pavucontrol-qt-2.4.0")

    pavucontrol-qt-2.4.0

-   [Next](qtermwidget.md "qtermwidget-2.4.0")

    qtermwidget-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
