<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](cairomm-1.0.md "libcairomm-1.0 (cairomm-1.14.5)")

    libcairomm-1.0 (cairomm-1.14.5)

-   [Next](colord-gtk.md "colord-gtk-0.3.1")

    colord-gtk-0.3.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libcairomm-1.16 (cairomm-1.18.0) {#libcairomm-1.16-cairomm-1.18.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libcairomm-1.16 {#introduction-to-libcairomm-1.16}

The <span class="application">libcairomm-1.16</span> package provides a C++ interface to <span class="application">Cairo</span>. This version of the API is needed to support gtkmm-4.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.cairographics.org/releases/cairomm-1.18.0.tar.xz">https://www.cairographics.org/releases/cairomm-1.18.0.tar.xz</a>

-   Download MD5 sum: 4c7afc4ab5177655724ea4b31794db30

-   Download size: 620 KB

-   Estimated disk space required: 25 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### libcairomm-1.16 Dependencies

#### Required

<a class="xref" href="cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a> and <a class="xref" href="../general/libsigc3.md" title="libsigc++-3.6.0">libsigc++-3.6.0</a>

#### Recommended

<a class="xref" href="../general/boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a> (for tests)

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of libcairomm-1.16 {#installation-of-libcairomm-1.16}

Install <span class="application">Cairomm-1.16</span> by running the following commands:

```bash
mkdir bld &&
cd    bld &&

meson setup ..             \
      --prefix=/usr        \
      --buildtype=release  \
      -D build-tests=true  \
      -D boost-shared=true &&
ninja
```

To run the test suite, run: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D build-tests=true`*: This switch is for building the unit tests. Remove if you have not installed <a class="xref" href="../general/boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a>.

*`-D boost-shared=true`*: This switch has the package use the shared version of boost libraries. It is required if you have not installed the boost static libraries, and you have passed *`-D build-tests=true`*.

<code class="option">-D build-documentation=true</code>: This switch builds the html documentation if doxygen is installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libcairomm-1.16.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{lib,include}/cairomm-1.16 and /usr/share/{devhelp/books,doc}/cairomm-1.16 (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- ------------------------------------------------
  <a id="libcairomm-1.16"></a><span class="term"><code class="filename">libcairomm-1.16.so</code></span>   contains the <span class="application">Cairo</span> API classes
  -------------------------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cairomm-1.0.md "libcairomm-1.0 (cairomm-1.14.5)")

    libcairomm-1.0 (cairomm-1.14.5)

-   [Next](colord-gtk.md "colord-gtk-0.3.1")

    colord-gtk-0.3.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
