<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libdvdcss.md "libdvdcss-1.5.0")

    libdvdcss-1.5.0

-   [Next](libdvdnav.md "libdvdnav-7.0.0")

    libdvdnav-7.0.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libdvdread-7.0.1 {#libdvdread-7.0.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Libdvdread {#introduction-to-libdvdread}

<span class="application">libdvdread</span> is a library which provides a simple foundation for reading DVDs.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://get.videolan.org/libdvdread/7.0.1/libdvdread-7.0.1.tar.xz">https://get.videolan.org/libdvdread/7.0.1/libdvdread-7.0.1.tar.xz</a>

-   Download MD5 sum: 3e2977ccc1f7a9639f7a88e93d04fbd6

-   Download size: 92 KB

-   Estimated disk space required: 1.6 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of Libdvdread {#installation-of-libdvdread}

First, install the documentation in a versioned directory:

```bash
sed -i "/get_option/s/libdvdread/&-7.0.1/" meson.build
```

Install <span class="application">libdvdread</span> by running the following commands:

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
rm -fv /usr/lib/libdvdread.a
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
**Installed Library:** <span class="segbody">libdvdread.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/dvdread and /usr/share/doc/libdvdread-7.0.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------
  <a id="libdvdread-lib"></a><span class="term"><code class="filename">libdvdread.so</code></span>   provides functionality required to access DVDs
  -------------------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libdvdcss.md "libdvdcss-1.5.0")

    libdvdcss-1.5.0

-   [Next](libdvdnav.md "libdvdnav-7.0.0")

    libdvdnav-7.0.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
