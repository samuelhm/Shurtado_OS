<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](qtermwidget.md "qtermwidget-2.4.0")

    qtermwidget-2.4.0

-   [Next](screengrab.md "screengrab-3.2.0")

    screengrab-3.2.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# qterminal-2.4.0 {#qterminal-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to qterminal {#introduction-to-qterminal}

The <span class="application">qterminal</span> package contains a Qt widget based terminal emulator for <span class="application">Qt</span> with support for multiple tabs.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/qterminal/releases/download/2.4.0/qterminal-2.4.0.tar.xz">https://github.com/lxqt/qterminal/releases/download/2.4.0/qterminal-2.4.0.tar.xz</a>

-   Download MD5 sum: d381d0aad8d9eb44368c5ddcd22dade5

-   Download size: 412 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### qterminal Dependencies

#### Required

<a class="xref" href="qtermwidget.md" title="qtermwidget-2.4.0">qtermwidget-2.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of qterminal {#installation-of-qterminal}

Install <span class="application">qterminal</span> by running the following commands:

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
**Installed Program:** <span class="segbody">qterminal</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/qterminal</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- -------------------------------------------------------------
  <a id="qterminal-prog"></a><span class="command"><span class="term"><strong>qterminal</strong></span></span>   is a <span class="application">Qt</span> based lightweight terminal emulator
  ------------------------------------------------------- -------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](qtermwidget.md "qtermwidget-2.4.0")

    qtermwidget-2.4.0

-   [Next](screengrab.md "screengrab-3.2.0")

    screengrab-3.2.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
