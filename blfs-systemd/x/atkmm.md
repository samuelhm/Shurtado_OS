<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](lib.md "Graphical Environment Libraries")

    Graphical Environment Libraries

-   [Next](at-spi2-core.md "at-spi2-core-2.60.4")

    at-spi2-core-2.60.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Atkmm-2.28.5 {#atkmm-2.28.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Atkmm {#introduction-to-atkmm}

<span class="application">Atkmm</span> is the official C++ interface for the ATK accessibility toolkit library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/atkmm/2.28/atkmm-2.28.5.tar.xz">https://download.gnome.org/sources/atkmm/2.28/atkmm-2.28.5.tar.xz</a>

-   Download MD5 sum: c9bdc196eed368c274177b0c1caf140c

-   Download size: 596 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.2 SBU
</div>

### Atkmm Dependencies

#### Required

<a class="xref" href="at-spi2-core.md" title="at-spi2-core-2.60.4">at-spi2-core-2.60.4</a> and <a class="xref" href="../general/glibmm.md" title="GLibmm-2.66.8">GLibmm-2.66.8</a>
</div>

<div class="installation" lang="en">
## Installation of Atkmm {#installation-of-atkmm}

Install <span class="application">Atkmm</span> by running the following commands:

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
**Installed Library:** <span class="segbody">libatkmm-1.6.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,lib}/atkmm-1.6 and /usr/share/{devhelp/books/atkmm-1.6,doc/atkmm-2.28.5}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------
  <a id="libatkmm-1"></a><span class="term"><code class="filename">libatkmm-1.6.so</code></span>   contains the <span class="application">ATK</span> API classes
  ------------------------------------------------------ ----------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lib.md "Graphical Environment Libraries")

    Graphical Environment Libraries

-   [Next](at-spi2-core.md "at-spi2-core-2.60.4")

    at-spi2-core-2.60.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
