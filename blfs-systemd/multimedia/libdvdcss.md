<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libde265.md "libde265-1.1.0")

    libde265-1.1.0

-   [Next](libdvdread.md "libdvdread-7.0.1")

    libdvdread-7.0.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libdvdcss-1.5.0 {#libdvdcss-1.5.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libdvdcss {#introduction-to-libdvdcss}

<span class="application">libdvdcss</span> is a simple library designed for accessing DVDs as a block device without having to bother about the decryption.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://get.videolan.org/libdvdcss/1.5.0/libdvdcss-1.5.0.tar.xz">https://get.videolan.org/libdvdcss/1.5.0/libdvdcss-1.5.0.tar.xz</a>

-   Download MD5 sum: ebfde11e35a0975d900bfb03f0297fc7

-   Download size: 80 KB

-   Estimated disk space required: 1.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libdvdcss Dependencies

#### Optional (to Create Documentation)

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of libdvdcss {#installation-of-libdvdcss}

Install <span class="application">libdvdcss</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&
rm -fv /usr/lib/libdvdcss.a
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
**Installed Library:** <span class="segbody">libdvdcss.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/dvdcss</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------------------------------
  <a id="libdvdcss-lib"></a><span class="term"><code class="filename">libdvdcss.so</code></span>   provides the functionality that is required for transparent DVD access with CSS decryption
  ------------------------------------------------------ --------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libde265.md "libde265-1.1.0")

    libde265-1.1.0

-   [Next](libdvdread.md "libdvdread-7.0.1")

    libdvdread-7.0.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
