<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](qterminal.md "qterminal-2.4.0")

    qterminal-2.4.0

-   [Next](../xsoft/xsoft.md "X Software")

    X Software

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# screengrab-3.2.0 {#screengrab-3.2.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to screengrab {#introduction-to-screengrab}

The <span class="application">screengrab</span> package is a cross-platform tool for making screenshots quickly.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/screengrab/releases/download/3.2.0/screengrab-3.2.0.tar.xz">https://github.com/lxqt/screengrab/releases/download/3.2.0/screengrab-3.2.0.tar.xz</a>

-   Download MD5 sum: 642790e122e55167414000a74cd274c6

-   Download size: 368 KB

-   Estimated disk space required: 10 MB

-   Estimated build time: 0.4 SBU
</div>

### screengrab Dependencies

#### Required

<a class="xref" href="lxqt-build-tools.md" title="lxqt-build-tools-2.4.0">lxqt-build-tools-2.4.0</a>, <a class="xref" href="lxqt-kwindowsystem.md" title="kwindowsystem-6.26.0 for lxqt">kwindowsystem-6.26.0 for lxqt</a>, and <a class="xref" href="libqtxdg.md" title="libqtxdg-4.4.0">libqtxdg-4.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of screengrab {#installation-of-screengrab}

Install <span class="application">screengrab</span> by running the following commands:

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
**Installed Program:** <span class="segbody">screengrab</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/screengrab and /usr/share/doc/screengrab</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- -----------------------------------------------------------
  <a id="screengrab-prog"></a><span class="command"><span class="term"><strong>screengrab</strong></span></span>   is a cross platform tool for creating screenshots quickly
  --------------------------------------------------------- -----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](qterminal.md "qterminal-2.4.0")

    qterminal-2.4.0

-   [Next](../xsoft/xsoft.md "X Software")

    X Software

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
