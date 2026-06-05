<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libexif.md "libexif-0.6.26")

    libexif-0.6.26

-   [Next](libheif.md "libheif-1.23.0")

    libheif-1.23.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libgxps-0.3.2 {#libgxps-0.3.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libgxps {#introduction-to-libgxps}

The <span class="application">libgxps</span> package provides an interface to manipulate XPS documents.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libgxps/0.3/libgxps-0.3.2.tar.xz">https://download.gnome.org/sources/libgxps/0.3/libgxps-0.3.2.tar.xz</a>

-   Download MD5 sum: 0527ac7c8c405445e96a5baa6019a0c3

-   Download size: 80 KB

-   Estimated disk space required: 5.4 MB

-   Estimated build time: 0.1 SBU
</div>

### Libgxps Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, <a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>

#### Optional

<a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a> and <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of Libgxps {#installation-of-libgxps}

Install <span class="application">Libgxps</span> by running the following commands:

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

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">xpstojpeg, xpstopdf, xpstopng, xpstops, and xpstosvg</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgxps.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libgxps</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- -------------------------------------------------------
  <a id="xpstojpeg"></a><span class="command"><span class="term"><strong>xpstojpeg</strong></span></span>   converts XPS documents to a JPEG image
  <a id="xpstopdf"></a><span class="command"><span class="term"><strong>xpstopdf</strong></span></span>     converts XPS documents to PDF format
  <a id="xpstopng"></a><span class="command"><span class="term"><strong>xpstopng</strong></span></span>     converts XPS documents to a PNG image
  <a id="xpstops"></a><span class="command"><span class="term"><strong>xpstops</strong></span></span>       converts XPS documents to PostScript
  <a id="xpstosvg"></a><span class="command"><span class="term"><strong>xpstosvg</strong></span></span>     converts XPS documents to SVG images
  <a id="libgxps-lib"></a><span class="term"><code class="filename">libgxps.so</code></span>   contains API functions for manipulating XPS documents
  -------------------------------------------------- -------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libexif.md "libexif-0.6.26")

    libexif-0.6.26

-   [Next](libheif.md "libheif-1.23.0")

    libheif-1.23.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
