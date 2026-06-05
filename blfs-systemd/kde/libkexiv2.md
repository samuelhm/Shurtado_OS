<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](konversation.md "konversation-26.04.1")

    konversation-26.04.1

-   [Next](plasma-activities.md "plasma-activities-6.6.5")

    plasma-activities-6.6.5

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libkexiv2-26.04.1 {#libkexiv2-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libkexiv2 {#introduction-to-libkexiv2}

<span class="application">Libkexiv2</span> is a KDE wrapper around the Exiv2 library for manipulating image metadata.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/libkexiv2-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/libkexiv2-26.04.1.tar.xz</a>

-   Download MD5 sum: 48b16a4071fe5319923dbad9b94749d1

-   Download size: 52 KB

-   Estimated disk space required: 4.1 MB

-   Estimated build time: 0.2 SBU
</div>

### libkexiv2 Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a> and <a class="xref" href="../general/exiv2.md" title="Exiv2-0.28.8">Exiv2-0.28.8</a>
</div>

<div class="installation" lang="en">
## Installation of libkexiv2 {#installation-of-libkexiv2}

Install <span class="application">libkexiv2</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_WITH_QT6=ON                \
      -D BUILD_TESTING=OFF                \
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
**Installed Library:** <span class="segbody">libKExiv2Qt6.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/include/KExiv2Qt6 and \$KF6_PREFIX/lib/cmake/KExiv2Qt6</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](konversation.md "konversation-26.04.1")

    konversation-26.04.1

-   [Next](plasma-activities.md "plasma-activities-6.6.5")

    plasma-activities-6.6.5

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
