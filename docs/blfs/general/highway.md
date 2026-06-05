<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](gspell.md "gspell-1.14.3")

    gspell-1.14.3

-   [Next](icu.md "icu-78.3")

    icu-78.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# highway-1.4.0 {#highway-1.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to highway {#introduction-to-highway}

The <span class="application">highway</span> package contains a C++ library that provides portable SIMD/vector intrinsics.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/google/highway/archive/1.4.0/highway-1.4.0.tar.gz">https://github.com/google/highway/archive/1.4.0/highway-1.4.0.tar.gz</a>

-   Download MD5 sum: 9d335797777e17f827c7980b8313a34b

-   Download size: 3.6 MB

-   Estimated disk space required: 41 MB

-   Estimated build time: 0.6 SBU (with parallelism=4)
</div>

### highway Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of highway {#installation-of-highway}

Install <span class="application">highway</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_TESTING=OFF         \
      -D BUILD_SHARED_LIBS=ON      \
      -G Ninja ..                  &&
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

*`-D BUILD_TESTING=OFF`*: This parameter disables the test suite from being built because <a class="ulink" href="https://github.com/google/googletest">gtest</a> is not part of BLFS. Without this parameter, CMake will download this package during the configuration process. If you wish to run the tests, install <a class="ulink" href="https://github.com/google/googletest">gtest</a> and then remove this parameter.

*`-D BUILD_SHARED_LIBS=ON`*: This parameter enables building shared versions of the libraries instead of static versions.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libhwy.so, libhwy_contrib.so, and libhwy_test.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/hwy and /usr/lib/cmake/hwy</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ ----------------------------------------------------------------------------------------------------------
  <a id="libhwy"></a><span class="term"><code class="filename">libhwy.so</code></span>                   contains functions that provide portable SIMD/vector intrinsics
  <a id="libhwy_contrib"></a><span class="term"><code class="filename">libhwy_contrib.so</code></span>   contains several additions to Highway, including a series of dot product, image, math, and sort routines
  <a id="libhwy_test"></a><span class="term"><code class="filename">libhwy_test.so</code></span>         contains test helpers for Highway
  ------------------------------------------------------------ ----------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gspell.md "gspell-1.14.3")

    gspell-1.14.3

-   [Next](icu.md "icu-78.3")

    icu-78.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
