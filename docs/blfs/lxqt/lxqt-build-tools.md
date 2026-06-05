<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](muparser.md "muparser-2.3.5")

    muparser-2.3.5

-   [Next](libdbusmenu-lxqt.md "libdbusmenu-lxqt-0.4.0")

    libdbusmenu-lxqt-0.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lxqt-build-tools-2.4.0 {#lxqt-build-tools-2.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lxqt-build-tools {#introduction-to-lxqt-build-tools}

The <span class="application">lxqt-build-tools</span> package provides several tools needed to build LXQt itself as well as other components maintained by the LXQt project.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lxqt/lxqt-build-tools/releases/download/2.4.0/lxqt-build-tools-2.4.0.tar.xz">https://github.com/lxqt/lxqt-build-tools/releases/download/2.4.0/lxqt-build-tools-2.4.0.tar.xz</a>

-   Download MD5 sum: a480ab7ffadf032340d7b0a705585101

-   Download size: 28 KB

-   Estimated disk space required: 932 KB

-   Estimated build time: less than 0.1 SBU
</div>

### lxqt-build-tools Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>
</div>

<div class="installation" lang="en">
## Installation of lxqt-build-tools {#installation-of-lxqt-build-tools}

Install <span class="application">lxqt-build-tools</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      .. &&

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
**Installed Program:** <span class="segbody">lxqt2-transupdate</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/cmake/lxqt2-build-tools</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------------
  <a id="lxqt2-transupdate"></a><span class="command"><span class="term"><strong>lxqt2-transupdate</strong></span></span>   updates translations for LXQt components
  ------------------------------------------------------------------ ------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](muparser.md "muparser-2.3.5")

    muparser-2.3.5

-   [Next](libdbusmenu-lxqt.md "libdbusmenu-lxqt-0.4.0")

    libdbusmenu-lxqt-0.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
