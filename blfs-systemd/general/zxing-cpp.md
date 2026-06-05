<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](woff2.md "woff2-1.0.2")

    woff2-1.0.2

-   [Next](genutils.md "General Utilities")

    General Utilities

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# zxing-cpp-3.0.2 {#zxing-cpp-3.0.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to zxing-cpp {#introduction-to-zxing-cpp}

The <span class="application">zxing-cpp</span> package provides an open-source, multi-format linear/matrix barcode image processing library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/zxing-cpp/zxing-cpp/releases/download/v3.0.2/zxing-cpp-3.0.2.tar.gz">https://github.com/zxing-cpp/zxing-cpp/releases/download/v3.0.2/zxing-cpp-3.0.2.tar.gz</a>

-   Download MD5 sum: 7690dcbad9fd76fb4f6cacf8036f1293

-   Download size: 1.5 MB

-   Estimated disk space required: 85 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
</div>

### zxing-cpp dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Optional

<a class="ulink" href="https://github.com/google/googletest">googletest</a>
</div>

<div class="installation" lang="en">
## Installation of zxing-cpp {#installation-of-zxing-cpp}

Install <span class="application">zxing-cpp</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D ZXING_C_API=OFF           \
      -D ZXING_EXAMPLES=OFF        \
      -D ZXING_WRITERS=BOTH        \
      -W no-dev ..                 &&
make
```

The tests require the <a class="ulink" href="https://github.com/google/googletest">googletest</a> package, which is not in BLFS.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
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
**Installed Libraries:** <span class="segbody">libZXing.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/ZXing and /usr/lib/cmake/ZXing</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ --------------------------------------------------------------
  <a id="libZXing"></a><span class="term"><code class="filename">libZXing.so</code></span>   provides several API functions for processing barcode images
  ------------------------------------------------ --------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](woff2.md "woff2-1.0.2")

    woff2-1.0.2

-   [Next](genutils.md "General Utilities")

    General Utilities

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
