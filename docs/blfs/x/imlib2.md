<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtksourceview5.md "gtksourceview5-5.20.0")

    gtksourceview5-5.20.0

-   [Next](kcolorpicker.md "kColorPicker-0.3.1")

    kColorPicker-0.3.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# imlib2-1.12.6 {#imlib2-1.12.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to imlib2 {#introduction-to-imlib2}

<span class="application">imlib2</span> is a graphics library for fast file loading, saving, rendering and manipulation.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/enlightenment/imlib2-1.12.6.tar.xz">https://downloads.sourceforge.net/enlightenment/imlib2-1.12.6.tar.xz</a>

-   Download MD5 sum: 8c66b4dabc52225562324be5a994accf

-   Download size: 828 KB

-   Estimated disk space required: 20 MB (with docs)

-   Estimated build time: 0.2 SBU (with docs)
</div>

### imlib2 Dependencies

#### Required

<a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Recommended

<a class="xref" href="../general/giflib.md" title="giflib-6.1.3">giflib-6.1.3</a> and <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (for API documentation), <a class="xref" href="../general/highway.md" title="highway-1.4.0">highway-1.4.0</a>, <a class="xref" href="../general/libheif.md" title="libheif-1.23.0">libheif-1.23.0</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="../general/libjxl.md" title="libjxl-0.11.2">libjxl-0.11.2</a>, <a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="ulink" href="https://sourceforge.net/projects/mad">libid3tag</a>, <a class="ulink" href="https://www.freedesktop.org/wiki/Software/libspectre">libspectre</a>
</div>

<div class="installation" lang="en">
## Installation of imlib2 {#installation-of-imlib2}

Install <span class="application">imlib2</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you generated the API documentation, install it as the <code class="systemitem">root</code> user:

```bash
install -v -m755 -d            /usr/share/doc/imlib2-1.12.6/html &&
install -v -m644    doc/html/* /usr/share/doc/imlib2-1.12.6/html
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-doc-build</code>: This switch generates the API documentation. <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> must be installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">imlib2_bumpmap, imlib2_colorspace, imlib2_conv, imlib2_grab, imlib2_load, imlib2_poly, imlib2_show, imlib2_test, and imlib2_view</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libImlib2.so and various filters and image loader modules.</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/imlib2, /usr/share/doc/imlib2-1.12.6, and /usr/share/imlib2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ --------------------------------------------------------------------------
  <a id="imlib2_bumpmap"></a><span class="command"><span class="term"><strong>imlib2_bumpmap</strong></span></span>         is to test the <span class="application">imlib2</span> bumpmap function
  <a id="imlib2_colorspace"></a><span class="command"><span class="term"><strong>imlib2_colorspace</strong></span></span>   is to test the <span class="application">imlib2</span> colorspace function
  <a id="imlib2_conv"></a><span class="command"><span class="term"><strong>imlib2_conv</strong></span></span>               converts images between formats
  <a id="imlib2_grab"></a><span class="command"><span class="term"><strong>imlib2_grab</strong></span></span>               takes screenshots
  <a id="imlib2_load"></a><span class="command"><span class="term"><strong>imlib2_load</strong></span></span>               loads and caches images
  <a id="imlib2_poly"></a><span class="command"><span class="term"><strong>imlib2_poly</strong></span></span>               is to test the <span class="application">imlib2</span> poly function
  <a id="imlib2_show"></a><span class="command"><span class="term"><strong>imlib2_show</strong></span></span>               is an <span class="application">imlib2</span> program test
  <a id="imlib2_test"></a><span class="command"><span class="term"><strong>imlib2_test</strong></span></span>               is an <span class="application">imlib2</span> program test
  <a id="imlib2_view"></a><span class="command"><span class="term"><strong>imlib2_view</strong></span></span>               displays image files
  <a id="libImlib2"></a><span class="term"><code class="filename">libImlib2.so</code></span>                   provides the functions for programs to handle various image data formats
  ------------------------------------------------------------------ --------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gtksourceview5.md "gtksourceview5-5.20.0")

    gtksourceview5-5.20.0

-   [Next](kcolorpicker.md "kColorPicker-0.3.1")

    kColorPicker-0.3.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
