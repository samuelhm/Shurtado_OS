<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](lcms2.md "Little CMS-2.19.1")

    Little CMS-2.19.1

-   [Next](libexif.md "libexif-0.6.26")

    libexif-0.6.26

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libavif-1.4.2 {#libavif-1.4.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libavif {#introduction-to-libavif}

The <span class="application">libavif</span> package contains a library used for encoding and decoding AVIF files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/AOMediaCodec/libavif/archive/v1.4.2/libavif-1.4.2.tar.gz">https://github.com/AOMediaCodec/libavif/archive/v1.4.2/libavif-1.4.2.tar.gz</a>

-   Download MD5 sum: 10007cf6a4d1cb7304146161e5ebf4da

-   Download size: 14 MB

-   Estimated disk space required: 144 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libavif Dependencies

#### Required

<a class="xref" href="../multimedia/dav1d.md" title="dav1d-1.5.3">dav1d-1.5.3</a> and <a class="xref" href="../multimedia/svt-av1.md" title="SVT-AV1-4.1.0">SVT-AV1-4.1.0</a> (only supports YUV420)

#### Recommended

<a class="xref" href="../multimedia/libaom.md" title="libaom-3.14.1">libaom-3.14.1</a> (for chroma subsampling outside YUV420)

#### Optional

<a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>, <a class="ulink" href="https://github.com/google/googletest">gtest</a>, <a class="ulink" href="https://chromium.googlesource.com/libyuv/libyuv/">libyuv</a>, and <a class="ulink" href="https://github.com/xiph/rav1e">rav1e</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of libavif {#installation-of-libavif}

Install <span class="application">libavif</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D AVIF_CODEC_AOM=SYSTEM     \
      -D AVIF_CODEC_DAV1D=SYSTEM   \
      -D AVIF_CODEC_SVT=SYSTEM     \
      -D AVIF_BUILD_GDK_PIXBUF=OFF \
      -D AVIF_LIBYUV=OFF           \
      -G Ninja .. &&
ninja
```

To test the package (note that it will cause the build system to download a copy of <a class="ulink" href="https://github.com/google/googletest">gtest</a> and build the test suite with the copy), issue:

```bash
cmake .. -D AVIF_GTEST=LOCAL -D AVIF_BUILD_TESTS=ON &&
ninja && ninja test
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D AVIF_CODEC_{AOM,DAV1D,SVT}=SYSTEM`*: These switches enable using the AV1 codec via dav1d, libaom, and SVT-AV1. This package is useless without an AV1 encoder and decoder.

*`-D AVIF_BUILD_GDK_PIXBUF=OFF`*: This switch disables building the AVIF loader for applications which use gdk-pixbuf. The loader is useless when gdk-pixbuf is built with its recommended dependency glycin.

<code class="option">-D AVIF_LIBYUV=OFF</code>: Use this switch if you have not installed <a class="ulink" href="https://chromium.googlesource.com/libyuv/libyuv/">libyuv</a>.

<code class="option">-D AVIF_CODEC_RAV1E=SYSTEM</code>: Use this switch if you have installed <a class="ulink" href="https://github.com/xiph/rav1e">rav1e</a> and wish to use it as a codec.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libavif.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/avif and /usr/lib/cmake/libavif</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ -------------------------------------------------------------------------------------
  <a id="libavif-lib"></a><span class="term"><code class="filename">libavif.so</code></span>                         contains functions that provide a portable C implementation of the AV1 Image Format
  <a id="libpixbufloader-avif"></a><span class="term"><code class="filename">libpixbufloader-avif.so</code></span>   allows applications which use gdk-pixbuf to read AVIF images
  ------------------------------------------------------------------------ -------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lcms2.md "Little CMS-2.19.1")

    Little CMS-2.19.1

-   [Next](libexif.md "libexif-0.6.26")

    libexif-0.6.26

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
