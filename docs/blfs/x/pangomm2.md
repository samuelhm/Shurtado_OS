<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](pangomm.md "Pangomm-2.46.4")

    Pangomm-2.46.4

-   [Next](qt6.md "Qt-6.11.1")

    Qt-6.11.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Pangomm-2.56.1 {#pangomm-2.56.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Pangomm {#introduction-to-pangomm}

The <span class="application">Pangomm</span> package provides a C++ interface to <span class="application">Pango</span>. This version is part of a new API for supporting gtkmm-4.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/pangomm/2.56/pangomm-2.56.1.tar.xz">https://download.gnome.org/sources/pangomm/2.56/pangomm-2.56.1.tar.xz</a>

-   Download MD5 sum: f3003015d87cb56c9cf731fa7a920a24

-   Download size: 728 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.2 SBU
</div>

### Pangomm Dependencies

#### Required

<a class="xref" href="cairomm-1.16.md" title="libcairomm-1.16 (cairomm-1.18.0)">libcairomm-1.18.0</a>, <a class="xref" href="../general/glibmm2.md" title="GLibmm-2.88.0">GLibmm-2.88.0</a> and <a class="xref" href="pango.md" title="Pango-1.57.1">Pango-1.57.1</a>
</div>

<div class="installation" lang="en">
## Installation of Pangomm {#installation-of-pangomm}

Install <span class="application">Pangomm</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
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
**Installed Library:** <span class="segbody">libpangomm-2.48.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/pangomm-2.48, /usr/lib/pangomm-2.48, and /usr/share/{devhelp/books/pangomm-2.48,doc/pangomm-2.46.4}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- ------------------------------------------------
  <a id="libpangomm-2"></a><span class="term"><code class="filename">libpangomm-2.48.so</code></span>   contains the <span class="application">Pango</span> API classes
  ----------------------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pangomm.md "Pangomm-2.46.4")

    Pangomm-2.46.4

-   [Next](qt6.md "Qt-6.11.1")

    Qt-6.11.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
