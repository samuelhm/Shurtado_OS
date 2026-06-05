<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-layer-shell-qt.md "layer-shell-qt-6.6.5 for lxqt")

    layer-shell-qt-6.6.5 for lxqt

-   [Next](lxqt-build-tools.md "lxqt-build-tools-2.4.0")

    lxqt-build-tools-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# muparser-2.3.5 {#muparser-2.3.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to muparser {#introduction-to-muparser}

The <span class="application">muparser</span> package is a fast math parser library for C and C++.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/beltoforion/muparser/archive/v2.3.5/muparser-2.3.5.tar.gz">https://github.com/beltoforion/muparser/archive/v2.3.5/muparser-2.3.5.tar.gz</a>

-   Download MD5 sum: 04d4224cb01712207b85af05a255b6fc

-   Download size: 116 KB

-   Estimated disk space required: 4.6 MB

-   Estimated build time: 0.1 SBU
</div>

### muparser Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of muparser {#installation-of-muparser}

Install <span class="application">muparser</span> by running the following commands:

```bash
mkdir -v build &&
cd       build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&
make
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libmuparser.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/cmake/muparser</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------
  <a id="muparser-lib"></a><span class="term"><code class="filename">muparser.so</code></span>   provides a fast math parser library for C and C++
  ---------------------------------------------------- ---------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lxqt-layer-shell-qt.md "layer-shell-qt-6.6.5 for lxqt")

    layer-shell-qt-6.6.5 for lxqt

-   [Next](lxqt-build-tools.md "lxqt-build-tools-2.4.0")

    lxqt-build-tools-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
