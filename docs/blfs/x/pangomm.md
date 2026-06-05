<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](pango.md "Pango-1.57.1")

    Pango-1.57.1

-   [Next](pangomm2.md "Pangomm-2.56.1")

    Pangomm-2.56.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Pangomm-2.46.4 {#pangomm-2.46.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Pangomm {#introduction-to-pangomm}

The <span class="application">Pangomm</span> package provides a C++ interface to <span class="application">Pango</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/pangomm/2.46/pangomm-2.46.4.tar.xz">https://download.gnome.org/sources/pangomm/2.46/pangomm-2.46.4.tar.xz</a>

-   Download MD5 sum: 5947d35899db62813531d7ea8faee60c

-   Download size: 680 KB

-   Estimated disk space required: 8.9 MB

-   Estimated build time: 0.2 SBU
</div>

### Pangomm Dependencies

#### Required

<a class="xref" href="cairomm-1.0.md" title="libcairomm-1.0 (cairomm-1.14.5)">libcairomm-1.14.5</a>, <a class="xref" href="../general/glibmm.md" title="GLibmm-2.66.8">GLibmm-2.66.8</a> and <a class="xref" href="pango.md" title="Pango-1.57.1">Pango-1.57.1</a>
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
**Installed Library:** <span class="segbody">libpangomm-1.4.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/pangomm-1.4, /usr/lib/pangomm-1.4, and /usr/share/{devhelp/books/pangomm-1.4,doc/pangomm-2.46.4}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------
  <a id="libpangomm-1"></a><span class="term"><code class="filename">libpangomm-1.4.so</code></span>   contains the <span class="application">Pango</span> API classes
  ---------------------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pango.md "Pango-1.57.1")

    Pango-1.57.1

-   [Next](pangomm2.md "Pangomm-2.56.1")

    Pangomm-2.56.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
