<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libcdio.md "libcdio-2.1.0")

    libcdio-2.1.0

-   [Next](libdvdcss.md "libdvdcss-1.5.0")

    libdvdcss-1.5.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libde265-1.1.0 {#libde265-1.1.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libde265 {#introduction-to-libde265}

The <span class="application">libde265</span> package contains an open source H.265 video codec implementation.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/strukturag/libde265/releases/download/v1.1.0/libde265-1.1.0.tar.gz">https://github.com/strukturag/libde265/releases/download/v1.1.0/libde265-1.1.0.tar.gz</a>

-   Download MD5 sum: 8a9a42267ed5e0093d05e841b7483f15

-   Download size: 288 KB

-   Estimated disk space required: 7.1 MB

-   Estimated build time: 0.2 SBU
</div>

### libde265 Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Optional

<a class="xref" href="sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a> (for YUV overlay output support of <span class="command"><strong>dec265</strong></span>), both <a class="ulink" href="https://linuxfromscratch.org/blfs/view/12.2/x/qt5-components.md">Qt 5</a> and <a class="xref" href="ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a> (for building <span class="command"><strong>sherlock265</strong></span>)
</div>

<div class="installation" lang="en">
## Installation of libde265 {#installation-of-libde265}

Install <span class="application">libde265</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      .. &&
make
```

This package does not come with a test suite.

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
**Installed Program:** <span class="segbody">dec265</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libde265.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/libde265</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------
  <a id="dec265"></a><span class="command"><span class="term"><strong>dec265</strong></span></span>           decodes H.265 data (a raw bitstream of a stream with NAL units)
  <a id="libde265-lib"></a><span class="term"><code class="filename">libde265.so</code></span>   contains an H.265 video decoder
  ---------------------------------------------------- -----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libcdio.md "libcdio-2.1.0")

    libcdio-2.1.0

-   [Next](libdvdcss.md "libdvdcss-1.5.0")

    libdvdcss-1.5.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
