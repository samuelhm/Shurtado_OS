<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](qps.md "qps-2.13.0")

    qps-2.13.0

-   [Next](qterminal.md "qterminal-2.4.0")

    qterminal-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# qtermwidget-2.4.0 {#qtermwidget-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to qtermwidget {#introduction-to-qtermwidget}

As the name suggests, the <span class="application">qtermwidget</span> package is a terminal widget for <span class="application">Qt</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/qtermwidget/releases/download/2.4.0/qtermwidget-2.4.0.tar.xz">https://github.com/lxqt/qtermwidget/releases/download/2.4.0/qtermwidget-2.4.0.tar.xz</a>

-   Download MD5 sum: 033823bc2599813ad02b1cfcabcefec9

-   Download size: 200 KB

-   Estimated disk space required: 7.5 MB

-   Estimated build time: 0.5 SBU
</div>

### qtermwidget Dependencies

#### Required

<a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of qtermwidget {#installation-of-qtermwidget}

Install <span class="application">qtermwidget</span> by running the following commands:

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
**Installed Libraries:** <span class="segbody">libqtermwidget6.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/qtermwidget6, /usr/lib/cmake/qtermwidget6, and /usr/share/qtermwidget6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------
  <a id="libqtermwidget6-lib"></a><span class="term"><code class="filename">libqtermwidget6.so</code></span>   provides a terminal widget for Qt6
  ------------------------------------------------------------------ ------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](qps.md "qps-2.13.0")

    qps-2.13.0

-   [Next](qterminal.md "qterminal-2.4.0")

    qterminal-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
