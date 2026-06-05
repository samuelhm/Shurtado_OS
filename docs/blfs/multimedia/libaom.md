<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libao.md "Libao-1.2.0")

    Libao-1.2.0

-   [Next](libass.md "libass-0.17.4")

    libass-0.17.4

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libaom-3.14.1 {#libaom-3.14.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libaom {#introduction-to-libaom}

The <span class="application">libaom</span> package contains a reference version of the Alliance for Open Media video codec. This codec is a patent free alternative to H.265, and is starting to be used throughout the internet.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://storage.googleapis.com/aom-releases/libaom-3.14.1.tar.gz">https://storage.googleapis.com/aom-releases/libaom-3.14.1.tar.gz</a>

-   Download MD5 sum: 4a689bbc27ec095d253ed8d241077ad5

-   Download size: 6.1 MB

-   Estimated disk space required: 124 MB

-   Estimated build time: 0.8 SBU (with parallelism=4)
</div>

### libaom Dependencies

#### Recommended

<a class="xref" href="../general/yasm.md" title="yasm-1.3.0">yasm-1.3.0</a> (or <a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a>)

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of libaom {#installation-of-libaom}

Prevent installing static versions of the libraries:

```bash
sed -i 's/aom aom_static/aom/' cmake/aom_install.cmake
```

Install <span class="application">libaom</span> by running the following commands:

```bash
mkdir aom-build &&
cd    aom-build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_SHARED_LIBS=1       \
      -D ENABLE_DOCS=no            \
      -G Ninja .. &&
ninja
```

This package does not come with a working test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D BUILD_SHARED_LIBS=1`*: This switch builds shared versions of the libraries.

*`-D ENABLE_DOCS=no`*: This switch disables building the documentation because it fails due to an incompatibility with the latest version of <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>.

<code class="option">-D ENABLE_NASM=yes</code>: Use this switch if you have both <a class="xref" href="../general/yasm.md" title="yasm-1.3.0">yasm-1.3.0</a> and <a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a> installed and wish to use nasm instead of yasm.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">aomdec and aomenc</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libaom.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/aom</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ -----------------------------------------------------------------------------
  <a id="aomdec"></a><span class="command"><span class="term"><strong>aomdec</strong></span></span>       provides various decoders supported by this package, including one for AV1
  <a id="aomenc"></a><span class="command"><span class="term"><strong>aomenc</strong></span></span>       provides various encoders supported by this package, including one for AV1
  <a id="libaom-lib"></a><span class="term"><code class="filename">libaom.so</code></span>   contains functions that provide a reference implementation of the AV1 codec
  ------------------------------------------------ -----------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libao.md "Libao-1.2.0")

    Libao-1.2.0

-   [Next](libass.md "libass-0.17.4")

    libass-0.17.4

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
