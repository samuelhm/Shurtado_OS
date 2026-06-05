<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](popt.md "Popt-1.19")

    Popt-1.19

-   [Next](protobuf-c.md "Protobuf-c-1.5.2")

    Protobuf-c-1.5.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Protobuf-35.0 {#protobuf-35.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Protobuf {#introduction-to-protobuf}

The <span class="application">Protobuf</span> package contains utilities and libraries for using data in Google's data interchange format.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/protocolbuffers/protobuf/releases/download/v35.0/protobuf-35.0.tar.gz">https://github.com/protocolbuffers/protobuf/releases/download/v35.0/protobuf-35.0.tar.gz</a>

-   Download MD5 sum: 03885fd41e7418120ddedb683fa9404a

-   Download size: 6.9 MB

-   Estimated disk space required: 116 MB

-   Estimated build time: 1.2 SBU (with parallelism=4)
</div>

### Protobuf Dependencies

#### Required

<a class="xref" href="abseil-cpp.md" title="Abseil-cpp-20260107.1">Abseil-cpp-20260107.1</a> and <a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Optional

<a class="ulink" href="https://github.com/google/googletest">gtest (for tests)</a>
</div>

<div class="installation" lang="en">
## Installation of Protobuf {#installation-of-protobuf}

Install <span class="application">Protobuf</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr      \
      -D CMAKE_BUILD_TYPE=Release       \
      -D CMAKE_SKIP_INSTALL_RPATH=ON    \
      -D protobuf_BUILD_TESTS=OFF       \
      -D protobuf_BUILD_SHARED_LIBS=ON  \
      -G Ninja ..                       &&
ninja
```

This package does come with a test suite, but it requires <a class="ulink" href="https://github.com/google/googletest">gtest</a>, which is not part of BLFS.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D protobuf_BUILD_TESTS=OFF`*: This parameter prevents the tests from being built because <a class="ulink" href="https://github.com/google/googletest">gtest</a> is not part of BLFS.

*`-D protobuf_BUILD_SHARED_LIBS=ON`*: This parameter enables building shared versions of the libraries provided by this package instead of static versions.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">protoc (a symlink to protoc-35.0.0), protoc-gen-upb (a symlink to protoc-gen-upb-35.0.0), and protoc-gen-upbdefs (a symlink to protoc-gen-upbdefs-35.0.0) protoc-gen-upb_minitable(a symlink to protoc-gen-upb_minitable-35.0.0)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libprotobuf.so, libprotobuf-lite.so, libprotoc.so, libupb.a, libutf8_range.so, and libutf8_validity.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/google, /usr/include/upb, /usr/lib/cmake/protobuf, and /usr/lib/cmake/utf8_range</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="protoc"></a><span class="command"><span class="term"><strong>protoc</strong></span></span>                       parses protocol buffer files and generates output for several programming languages and formats
  <a id="libprotobuf"></a><span class="term"><code class="filename">libprotobuf.so</code></span>             contains functions for utilizing data in Google's data interchange format
  <a id="libprotobuf-lite"></a><span class="term"><code class="filename">libprotobuf-lite.so</code></span>   contains a simpler version of the functions for utilizing data in Google's data interchange format
  <a id="libprotoc"></a><span class="term"><code class="filename">libprotoc.so</code></span>                 contains functions used by protoc at runtime for outputting data for several programming languages and formats
  <a id="libupb"></a><span class="term"><code class="filename">libupb.a</code></span>                        is a small protobuf implementation written in C
  <a id="libutf8_range"></a><span class="term"><code class="filename">libutf8_range.so</code></span>         contains functions that allow a program to determine whether a sequence of characters is a valid UTF-8 sequence
  <a id="libutf8_validity"></a><span class="term"><code class="filename">libutf8_validity.so</code></span>   contains functions that allow a program to determine whether a sequence of bytes is a valid UTF-8 sequence, and to find what the longest valid prefix of the sequence is
  ---------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](popt.md "Popt-1.19")

    Popt-1.19

-   [Next](protobuf-c.md "Protobuf-c-1.5.2")

    Protobuf-c-1.5.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
