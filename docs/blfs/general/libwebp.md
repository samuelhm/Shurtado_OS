<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libtiff.md "libtiff-4.7.1")

    libtiff-4.7.1

-   [Next](mypaint-brushes.md "mypaint-brushes-2.0.2")

    mypaint-brushes-2.0.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libwebp-1.6.0 {#libwebp-1.6.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libwebp {#introduction-to-libwebp}

The <span class="application">libwebp</span> package contains a library and support programs to encode and decode images in WebP format.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.6.0.tar.gz">https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.6.0.tar.gz</a>

-   Download MD5 sum: cceb6447180f961473b181c9ef38b630

-   Download size: 4.1 MB

-   Estimated disk space required: 41 MB

-   Estimated build time: 0.3 SBU
</div>

### libwebp Dependencies

#### Recommended

<a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, and <a class="xref" href="../multimedia/sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a> (for improved 3D Acceleration)

#### Optional

<a class="xref" href="../x/freeglut.md" title="Freeglut-3.8.0">Freeglut-3.8.0</a> and <a class="xref" href="giflib.md" title="giflib-6.1.3">giflib-6.1.3</a>
</div>

<div class="installation" lang="en">
## Installation of libwebp {#installation-of-libwebp}

Install <span class="application">libwebp</span> by running the following commands:

```bash
./configure --prefix=/usr           \
            --enable-libwebpmux     \
            --enable-libwebpdemux   \
            --enable-libwebpdecoder \
            --enable-libwebpextras  \
            --enable-swap-16bit-csp \
            --disable-static        &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-swap-16bit-csp`*: This switch enables byte swap for 16 bit colorspaces.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cwebp, dwebp, gif2webp, img2webp, vwebp, webpinfo, and webpmux</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libsharpyuv.so, libwebpdecoder.so, libwebpdemux.so, libwebpmux.so, and libwebp.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/webp</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="cwebp"></a><span class="command"><span class="term"><strong>cwebp</strong></span></span>           compresses an image using the WebP format
  <a id="dwebp"></a><span class="command"><span class="term"><strong>dwebp</strong></span></span>           decompresses WebP files into PNG, PAM, PPM or PGM images
  <a id="gif2webp"></a><span class="command"><span class="term"><strong>gif2webp</strong></span></span>     converts a GIF image to a WebP image
  <a id="img2webp"></a><span class="command"><span class="term"><strong>img2webp</strong></span></span>     creates an animated WebP file from a sequence of input images
  <a id="vwebp"></a><span class="command"><span class="term"><strong>vwebp</strong></span></span>           decompresses a WebP file and displays it in a window
  <a id="webpinfo"></a><span class="command"><span class="term"><strong>webpinfo</strong></span></span>     prints out the cunk level structure of WebP files along with performing basic integrity checks
  <a id="webpmux"></a><span class="command"><span class="term"><strong>webpmux</strong></span></span>       creates animated WebP files from non-animated WebP images, extracts frames from animated WebP images, and manages XMP/EXIF metadata and the ICC profile
  <a id="libwebp-lib"></a><span class="term"><code class="filename">libwebp.so</code></span>   contains the API functions for WebP encoding and decoding
  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libtiff.md "libtiff-4.7.1")

    libtiff-4.7.1

-   [Next](mypaint-brushes.md "mypaint-brushes-2.0.2")

    mypaint-brushes-2.0.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
