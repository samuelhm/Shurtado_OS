<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](okular.md "okular-26.04.1")

    okular-26.04.1

-   [Next](gwenview.md "gwenview-26.04.1")

    gwenview-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libkdcraw-26.04.1 {#libkdcraw-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libkdcraw {#introduction-to-libkdcraw}

<span class="application">Libkdcraw</span> is a KDE wrapper around the <a class="xref" href="../general/libraw.md" title="libraw-0.22.1">libraw-0.22.1</a> library for manipulating image metadata.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/libkdcraw-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/libkdcraw-26.04.1.tar.xz</a>

-   Download MD5 sum: 17bdcb0897ab7791f9a10db7f2e642c3

-   Download size: 40 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libkdcraw Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a> and <a class="xref" href="../general/libraw.md" title="libraw-0.22.1">libraw-0.22.1</a>
</div>

<div class="installation" lang="en">
## Installation of libkdcraw {#installation-of-libkdcraw}

Install <span class="application">libkdcraw</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -D QT_MAJOR_VERSION=6               \
      -W no-dev .. &&
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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libKDcrawQt6.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/include/KDcrawQt6 and \$KF6_PREFIX/lib/cmake/KDcrawQt6</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](okular.md "okular-26.04.1")

    okular-26.04.1

-   [Next](gwenview.md "gwenview-26.04.1")

    gwenview-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
