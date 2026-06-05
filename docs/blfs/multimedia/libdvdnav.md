<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libdvdread.md "libdvdread-7.0.1")

    libdvdread-7.0.1

-   [Next](libdv.md "Libdv-1.0.0")

    Libdv-1.0.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libdvdnav-7.0.0 {#libdvdnav-7.0.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Libdvdnav {#introduction-to-libdvdnav}

<span class="application">libdvdnav</span> is a library that allows easy usage of sophisticated DVD navigation features including DVD menus, multiangle playback, and even interactive DVD games.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://get.videolan.org/libdvdnav/7.0.0/libdvdnav-7.0.0.tar.xz">https://get.videolan.org/libdvdnav/7.0.0/libdvdnav-7.0.0.tar.xz</a>

-   Download MD5 sum: e9e9f137cdd52828abc0c61b727ea579

-   Download size: 84 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Libdvdnav Dependencies

#### Required

<a class="xref" href="libdvdread.md" title="libdvdread-7.0.1">libdvdread-7.0.1</a>
</div>

<div class="installation" lang="en">
## Installation of libdvdnav {#installation-of-libdvdnav}

First, install the documentation in a versioned directory:

```bash
sed -i "/get_option/s/libdvdnav/&-7.0.0/" meson.build
```

Install <span class="application">libdvdnav</span> by running the following commands:

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
rm -fv /usr/lib/libdvdnav.a
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
**Installed Library:** <span class="segbody">libdvdnav.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/dvdnav and /usr/share/doc/libdvdnav-7.0.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -------------------------------
  <a id="libdvdnav-lib"></a><span class="term"><code class="filename">libdvdnav.so</code></span>   is the DVD navigation library
  ------------------------------------------------------ -------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libdvdread.md "libdvdread-7.0.1")

    libdvdread-7.0.1

-   [Next](libdv.md "Libdv-1.0.0")

    Libdv-1.0.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
