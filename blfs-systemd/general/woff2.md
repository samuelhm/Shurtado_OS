<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](sassc.md "sassc-3.6.2")

    sassc-3.6.2

-   [Next](zxing-cpp.md "zxing-cpp-3.0.2")

    zxing-cpp-3.0.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# woff2-1.0.2 {#woff2-1.0.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to WOFF2 {#introduction-to-woff2}

<span class="application">WOFF2</span> is a library for converting fonts from the TTF format to the WOFF 2.0 format. It also allows decompression from WOFF 2.0 to TTF. The WOFF 2.0 format uses the Brotli compression algorithm to compress fonts suitable for downloading in CSS \@font-face rules.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/google/woff2/archive/v1.0.2/woff2-1.0.2.tar.gz">https://github.com/google/woff2/archive/v1.0.2/woff2-1.0.2.tar.gz</a>

-   Download MD5 sum: 793c8844845351cb80730a74937e411b

-   Download size: 39 KB

-   Estimated disk space required: 1.6 MB

-   Estimated build time: less than 0.1 SBU
</div>

### WOFF2 Dependencies

#### Required

<a class="xref" href="brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a> and <a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of WOFF2 {#installation-of-woff2}

First, fix a problem when building with gcc-15:

```bash
sed -i '/output.h/i #include <cstdint>' src/woff2_out.cc
```

Install <span class="application">WOFF2</span> by running the following commands:

```bash
mkdir out                                 &&
cd    out                                 &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_BUILD_TYPE=Release         \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      -D CMAKE_SKIP_INSTALL_RPATH=ON ..   &&
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

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D CMAKE_POLICY_VERSION_MINIMUM=3.5`*: This switch allows building this package with cmake-4.0 or newer.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libwoff2common.so, libwoff2dec.so and libwoff2enc.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/woff2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ ------------------------------------------------------------------------
  <a id="libwoff2common"></a><span class="term"><code class="filename">libwoff2common.so</code></span>   provides shared data used by the libwoff2dec and libwoff2enc libraries
  <a id="libwoff2dec"></a><span class="term"><code class="filename">libwoff2dec.so</code></span>         is the WOFF2 decoder library
  <a id="libwoff2enc"></a><span class="term"><code class="filename">libwoff2enc.so</code></span>         is the WOFF2 encoder library
  ------------------------------------------------------------ ------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sassc.md "sassc-3.6.2")

    sassc-3.6.2

-   [Next](zxing-cpp.md "zxing-cpp-3.0.2")

    zxing-cpp-3.0.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
