<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libheif.md "libheif-1.23.0")

    libheif-1.23.0

-   [Next](libjxl.md "libjxl-0.11.2")

    libjxl-0.11.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libjpeg-turbo-3.1.4.1 {#libjpeg-turbo-3.1.4.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libjpeg-turbo {#introduction-to-libjpeg-turbo}

<span class="application">libjpeg-turbo</span> is a fork of the original IJG <span class="application">libjpeg</span> which uses SIMD to accelerate baseline JPEG compression and decompression. <span class="application">libjpeg</span> is a library that implements JPEG image encoding, decoding and transcoding.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libjpeg-turbo/libjpeg-turbo/releases/download/3.1.4.1/libjpeg-turbo-3.1.4.1.tar.gz">https://github.com/libjpeg-turbo/libjpeg-turbo/releases/download/3.1.4.1/libjpeg-turbo-3.1.4.1.tar.gz</a>

-   Download MD5 sum: 997f868afac9f358a098617d16f36167

-   Download size: 2.5 MB

-   Estimated disk space required: 58 MB (with tests)

-   Estimated build time: 0.6 SBU (with tests; both using parallelism=4)
</div>

### libjpeg-turbo Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Recommended

<a class="xref" href="nasm.md" title="NASM-3.01">NASM-3.01</a> or <a class="xref" href="yasm.md" title="yasm-1.3.0">yasm-1.3.0</a> (for building the package with optimized assembly routine)
</div>

<div class="installation" lang="en">
## Installation of libjpeg-turbo {#installation-of-libjpeg-turbo}

Install <span class="application">libjpeg-turbo</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_BUILD_TYPE=RELEASE         \
      -D ENABLE_STATIC=FALSE              \
      -D CMAKE_INSTALL_DEFAULT_LIBDIR=lib \
      -D CMAKE_SKIP_INSTALL_RPATH=ON      \
      -D CMAKE_INSTALL_DOCDIR=/usr/share/doc/libjpeg-turbo-3.1.4.1 \
      .. &&
make
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

<code class="option">-D WITH_JPEG8=ON</code>: This switch enables compatibility with <span class="application">libjpeg</span> version 8.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cjpeg, djpeg, jpegtran, rdjpgcom, tjbench, and wrjpgcom</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libjpeg.so and libturbojpeg.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/libjpeg-turbo-3.1.4.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="cjpeg"></a><span class="command"><span class="term"><strong>cjpeg</strong></span></span>           compresses image files to produce a JPEG/JFIF file on the standard output. Currently supported input file formats are: PPM (PBMPLUS color format), PGM (PBMPLUS gray-scale format), BMP, and Targa
  <a id="djpeg"></a><span class="command"><span class="term"><strong>djpeg</strong></span></span>           decompresses image files from JPEG/JFIF format to either PPM (PBMPLUS color format), PGM (PBMPLUS gray-scale format), BMP, or Targa format
  <a id="jpegtran"></a><span class="command"><span class="term"><strong>jpegtran</strong></span></span>     is used for lossless transformation of JPEG files
  <a id="rdjpgcom"></a><span class="command"><span class="term"><strong>rdjpgcom</strong></span></span>     displays text comments from within a JPEG file
  <a id="tjbench"></a><span class="command"><span class="term"><strong>tjbench</strong></span></span>       is used to benchmark the performance of libjpeg-turbo
  <a id="wrjpgcom"></a><span class="command"><span class="term"><strong>wrjpgcom</strong></span></span>     inserts text comments into a JPEG file
  <a id="libjpeg-lib"></a><span class="term"><code class="filename">libjpeg.so</code></span>   contains functions used for reading and writing JPEG images
  -------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libheif.md "libheif-1.23.0")

    libheif-1.23.0

-   [Next](libjxl.md "libjxl-0.11.2")

    libjxl-0.11.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
