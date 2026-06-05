<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 29. Introduction to KDE

-   [Prev](plasma-wayland-protocols.md "plasma-wayland-protocols-1.21.0")

    plasma-wayland-protocols-1.21.0

-   [Next](kf6.md "KDE Frameworks 6")

    KDE Frameworks 6

-   [Up](introduction.md "Chapter 29. Introduction to KDE")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libdmtx-0.7.8 {#libdmtx-0.7.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to the Plasma-wayland-protocols {#introduction-to-the-plasma-wayland-protocols}

This package is a software library that enables programs to read and write Data Matrix barcodes.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/dmtx/libdmtx/archive/v0.7.8/libdmtx-0.7.8.tar.gz">https://github.com/dmtx/libdmtx/archive/v0.7.8/libdmtx-0.7.8.tar.gz</a>

-   Download MD5 sum: 2b4329190b65e2f8b23e4a329ec7d792

-   Download size: 780 KB

-   Estimated disk space required: 2.9 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of libdmtx {#installation-of-libdmtx}

First, fix a minor cmake issue:

```bash
sed -i 's/3.5/3.10/' CMakeLists.txt
```

Install <span class="application">libdmtx</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr .. &&
make
```

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
**Installed Programs:** <span class="segbody">none</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libdmtx.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">none</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](plasma-wayland-protocols.md "plasma-wayland-protocols-1.21.0")

    plasma-wayland-protocols-1.21.0

-   [Next](kf6.md "KDE Frameworks 6")

    KDE Frameworks 6

-   [Up](introduction.md "Chapter 29. Introduction to KDE")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
