<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libjpeg.md "libjpeg-turbo-3.1.4.1")

    libjpeg-turbo-3.1.4.1

-   [Next](libmng.md "libmng-2.0.3")

    libmng-2.0.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libjxl-0.11.2 {#libjxl-0.11.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libjxl {#introduction-to-libjxl}

The <span class="application">libjxl</span> package contains the reference implementation of the JPEG XL image format.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libjxl/libjxl/archive/v0.11.2/libjxl-0.11.2.tar.gz">https://github.com/libjxl/libjxl/archive/v0.11.2/libjxl-0.11.2.tar.gz</a>

-   Download MD5 sum: eda39db6e7a58b73be9124381862b9d1

-   Download size: 1.8 MB

-   Estimated disk space required: 68 MB

-   Estimated build time: 1.0 SBU (with parallelism=4)
</div>

### libjxl Dependencies

#### Required

<a class="xref" href="brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>, <a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="giflib.md" title="giflib-6.1.3">giflib-6.1.3</a>, <a class="xref" href="highway.md" title="highway-1.4.0">highway-1.4.0</a>, <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, and <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>

#### Optional

<a class="xref" href="python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> (for man pages), <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a> (for documentation), <a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a> (for the plugin), <a class="xref" href="java.md" title="Java-21.0.10">Java-21.0.10</a> (for the JAR), <a class="xref" href="libavif.md" title="libavif-1.4.2">libavif-1.4.2</a>, <a class="xref" href="libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="ulink" href="https://github.com/google/googletest">gtest</a>, <a class="ulink" href="https://www.openexr.com/">OpenEXR</a>, <a class="ulink" href="https://github.com/webmproject/sjpeg">sjpeg</a>, and <a class="ulink" href="https://skia.googlesource.com/skcms/">skcms</a>
</div>

<div class="installation" lang="en">
## Installation of libjxl {#installation-of-libjxl}

Install <span class="application">libjxl</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr             \
      -D CMAKE_BUILD_TYPE=Release              \
      -D BUILD_TESTING=OFF                     \
      -D BUILD_SHARED_LIBS=ON                  \
      -D JPEGXL_ENABLE_SKCMS=OFF               \
      -D JPEGXL_ENABLE_SJPEG=OFF               \
      -D JPEGXL_ENABLE_PLUGINS=OFF             \
      -D JPEGXL_INSTALL_JARDIR=/usr/share/java \
      -G Ninja ..                              &&
ninja
```

This package does come with a test suite, but it requires <a class="ulink" href="https://github.com/google/googletest">gtest</a>, which is not in BLFS.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D BUILD_TESTING=OFF`*: This parameter disables the tests because they require <a class="ulink" href="https://github.com/google/googletest">gtest</a>, which is not in BLFS. If you wish to run the tests and have <a class="ulink" href="https://github.com/google/googletest">gtest</a> installed, remove this parameter.

*`-D BUILD_SHARED_LIBS=ON`*: This parameter enables building shared versions of the libraries instead of static ones.

*`-D JPEGXL_ENABLE_SKCMS=OFF`*: This parameter disables building support for Skia's <span class="application">skcms</span> since it is not necessary for BLFS purposes and requires <a class="ulink" href="https://skia.googlesource.com/skcms/">skcms</a>.

*`-D JPEGXL_ENABLE_SJPEG=OFF`*: This parameter disables support for SimpleJPEG since it is not necessary for BLFS purposes and requires <a class="ulink" href="https://github.com/webmproject/sjpeg">sjpeg</a>.

*`-D JPEGXL_ENABLE_PLUGINS=OFF`*: This parameter disables building the JPEG XL loader plugins for GIMP and gdk-pixbuf. The GIMP plugin isn't compatible with the GIMP version in the book, and the gdk-pixbuf plugin is useless when gdk-pixbuf is built with its recommended dependency glycin.

*`-D JPEGXL_INSTALL_JARDIR=/usr/share/java`*: This parameter places the JAR file for JPEG XL support in the correct directory if <a class="xref" href="java.md" title="Java-21.0.10">Java-21.0.10</a> is installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">benchmark_xl, cjxl, djxl, and jxlinfo</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libjxl.so, libjxl_cms.so, libjxl_extras_codec.a, libjxl_jni.so, and libjxl_threads.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/jxl</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
  <a id="benchmark_xl"></a><span class="command"><span class="term"><strong>benchmark_xl</strong></span></span>                 runs performance benchmarks against libjxl
  <a id="cjxl"></a><span class="command"><span class="term"><strong>cjxl</strong></span></span>                                 compresses images into JPEG XL format
  <a id="djxl"></a><span class="command"><span class="term"><strong>djxl</strong></span></span>                                 decompresses images from JPEG XL format into other formats
  <a id="jxlinfo"></a><span class="command"><span class="term"><strong>jxlinfo</strong></span></span>                           displays information about JPEG XL images
  <a id="libjxl-lib"></a><span class="term"><code class="filename">libjxl.so</code></span>                         contains the reference implementation of the JPEG XL standard
  <a id="libjxl_cms"></a><span class="term"><code class="filename">libjxl_cms.so</code></span>                     contains support for Little CMS in libjxl
  <a id="libjxl_extras_codec"></a><span class="term"><code class="filename">libjxl_extras_codec.a</code></span>    contains additional codec support for JPEG XL images
  <a id="libjxl_jni"></a><span class="term"><code class="filename">libjxl_jni.so</code></span>                     contains a Java interface to support JPEG XL on systems where <a class="xref" href="java.md" title="Java-21.0.10">Java-21.0.10</a> was installed at build time
  <a id="libjxl_threads"></a><span class="term"><code class="filename">libjxl_threads.so</code></span>             contains threading functions for JPEG XL
  <a id="libpixbufloader-jxl"></a><span class="term"><code class="filename">libpixbufloader-jxl.so</code></span>   contains a loader for gdk-pixbuf to allow it to load JPEG XL images
  ---------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libjpeg.md "libjpeg-turbo-3.1.4.1")

    libjpeg-turbo-3.1.4.1

-   [Next](libmng.md "libmng-2.0.3")

    libmng-2.0.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
