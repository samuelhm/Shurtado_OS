<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](babl.md "babl-0.1.126")

    babl-0.1.126

-   [Next](freetype2.md "FreeType-2.14.3")

    FreeType-2.14.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Exiv2-0.28.8 {#exiv2-0.28.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Exiv2 {#introduction-to-exiv2}

<span class="application">Exiv2</span> contains a C++ library and a command line utility for managing image and video metadata.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/Exiv2/exiv2/archive/v0.28.8/exiv2-0.28.8.tar.gz">https://github.com/Exiv2/exiv2/archive/v0.28.8/exiv2-0.28.8.tar.gz</a>

-   Download MD5 sum: 3f3b2d9c3e73880ea8e6bd78c67ea56a

-   Download size: 45 MB

-   Estimated disk space required: 134 MB (with tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4, with tests)
</div>

### Exiv2 dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Recommended

<a class="xref" href="brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>, <a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, and <a class="xref" href="inih.md" title="inih-62">inih-62</a>

#### Optional

<a class="ulink" href="https://www.libssh.org/">libssh</a>

#### Optional for documentation

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>
</div>

<div class="installation" lang="en">
## Installation of Exiv2 {#installation-of-exiv2}

Install <span class="application">Exiv2</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr   \
      -D CMAKE_BUILD_TYPE=Release    \
      -D EXIV2_ENABLE_VIDEO=yes      \
      -D EXIV2_ENABLE_WEBREADY=yes   \
      -D EXIV2_ENABLE_CURL=yes       \
      -D EXIV2_BUILD_SAMPLES=no      \
      -D CMAKE_SKIP_INSTALL_RPATH=ON \
      -G Ninja ..                    &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D EXIV2_ENABLE_VIDEO=yes`*: This switch enables managing video metadata.

*`-D EXIV2_ENABLE_WEBREADY=yes`*: This switch enables managing web image metadata.

*`-D EXIV2_BUILD_SAMPLES=no`*: This switch is necessary to suppress building and installing sample programs. If the sample programs are built, 34 additional programs are installed in /usr/bin.

*`-D EXIV2_ENABLE_CURL=yes`*: This switch is necessary to enable network/http capabilities.

<code class="option">-D EXIV2_ENABLE_INIH=no</code>: Use this switch if you have not installed <a class="xref" href="inih.md" title="inih-62">inih-62</a>.

<code class="option">-D EXIV2_ENABLE_BROTLI=no</code>: Use this switch if you have not installed <a class="xref" href="brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">exiv2</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libexiv2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/exiv2 and /usr/lib/cmake/exiv2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- -------------------------------------
  <a id="exiv2-prog"></a><span class="command"><span class="term"><strong>exiv2</strong></span></span>   is a utility used to dump Exif data
  ----------------------------------------------- -------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](babl.md "babl-0.1.126")

    babl-0.1.126

-   [Next](freetype2.md "FreeType-2.14.3")

    FreeType-2.14.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
