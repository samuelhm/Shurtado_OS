<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](libfm-qt.md "libfm-qt-2.4.0")

    libfm-qt-2.4.0

-   [Next](lxqt-qtplugin.md "lxqt-qtplugin-2.4.0")

    lxqt-qtplugin-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-globalkeys-2.4.0 {#lxqt-globalkeys-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-globalkeys {#introduction-to-lxqt-globalkeys}

The <span class="application">lxqt-globalkeys</span> package contains a daemon used to register global keyboard shortcuts as well as an editor for keyboard shortcuts.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-globalkeys/releases/download/2.4.0/lxqt-globalkeys-2.4.0.tar.xz">https://github.com/lxqt/lxqt-globalkeys/releases/download/2.4.0/lxqt-globalkeys-2.4.0.tar.xz</a>

-   Download MD5 sum: bc6d90bfaed073da2fa9c8aa976e7f79

-   Download size: 80 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### lxqt-globalkeys Dependencies

#### Required

<a class="xref" href="liblxqt.md" title="liblxqt-2.4.0">liblxqt-2.4.0</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-globalkeys {#installation-of-lxqt-globalkeys}

Install <span class="application">lxqt-globalkeys</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">lxqt-config-globalkeyshortcuts and lxqt-globalkeysd</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">liblxqt-globalkeys.so and liblxqt-globalkeys-ui.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/lxqt-globalkeys{,-ui} and /usr/share/cmake/lxqt-globalkeys{,-ui}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------------------------- --------------------------------------------------------------
  <a id="lxqt-config-globalkeyshortcuts"></a><span class="command"><span class="term"><strong>lxqt-config-globalkeyshortcuts</strong></span></span>   is an editor for keyboard shortcuts
  <a id="lxqt-globalkeysd"></a><span class="command"><span class="term"><strong>lxqt-globalkeysd</strong></span></span>                               is the global keyboard shortcut daemon
  <a id="lxqt-globalkeys-lib"></a><span class="term"><code class="filename">lxqt-globalkeys.so</code></span>                             contains functions to register keyboard shortcuts
  <a id="liblxqt-globalkeys-ui-lib"></a><span class="term"><code class="filename">liblxqt-globalkeys-ui.so</code></span>                 contains functions that allow a UI to set keyboard shortcuts
  -------------------------------------------------------------------------------------------- --------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libfm-qt.md "libfm-qt-2.4.0")

    libfm-qt-2.4.0

-   [Next](lxqt-qtplugin.md "lxqt-qtplugin-2.4.0")

    lxqt-qtplugin-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
