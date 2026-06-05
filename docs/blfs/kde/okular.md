<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](kio-extras.md "kio-extras-26.04.1")

    kio-extras-26.04.1

-   [Next](libkdcraw.md "libkdcraw-26.04.1")

    libkdcraw-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# okular-26.04.1 {#okular-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Okular {#introduction-to-okular}

Okular is a document viewer for KDE. It can view documents of many types including PDF, PostScript, TIFF, DjVu, DVI, XPS, and ePub.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/okular-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/okular-26.04.1.tar.xz</a>

-   Download MD5 sum: b67f0b8e8bafe845a7dbf5e56326dea9

-   Download size: 7.9 MB

-   Estimated disk space required: 99 MB

-   Estimated build time: 1.1 SBU (using parallelism=4)
</div>

### Okular Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a> and <a class="xref" href="plasma-activities.md" title="plasma-activities-6.6.5">plasma-activities-6.6.5</a>

#### Recommended

<a class="xref" href="libkexiv2.md" title="libkexiv2-26.04.1">libkexiv2-26.04.1</a>, <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="phonon.md" title="Phonon-4.12.0">phonon-4.12.0</a>, and <a class="xref" href="../general/poppler.md" title="Poppler-26.06.0">Poppler-26.06.0</a> (built with Qt6, required for PDF support)

#### Optional

<a class="xref" href="../general/qca.md" title="Qca-2.3.10">qca-2.3.10</a>, <a class="ulink" href="https://www.pell.portland.or.us/~orc/Code/discount/">discount</a>, <a class="ulink" href="https://djvu.sourceforge.net/">DjVuLibre</a>, <a class="ulink" href="https://libspectre.freedesktop.org/">libspectre</a>, <a class="ulink" href="https://sourceforge.net/projects/ebook-tools">libepub</a>, and <a class="ulink" href="https://libzip.org">LibZip</a>
</div>

<div class="installation" lang="en">
## Installation of Okular {#installation-of-okular}

Install <span class="application">Okular</span> by running the following commands:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If any of the optional dependencies are installed, remove the associated reference in the SKIP_OPTIONAL environment variable.
</div>

```bash
mkdir build &&
cd    build &&

SKIP_OPTIONAL='Discount;DjVuLibre;EPub;LibSpectre;LibZip'

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -D FORCE_NOT_REQUIRED_DEPENDENCIES="$SKIP_OPTIONAL" \
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
**Installed Program:** <span class="segbody">okular</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">Okular6Core.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/include/okular, \$KF6_PREFIX/lib/cmake/Okular6, \$KF6_PREFIX/lib/plugins/okular, \$KF6_PREFIX/share/okular, and \$KF6_PREFIX/share/doc/HTML/\*/okular</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------- ------------------------------
  <a id="okular-prog"></a><span class="command"><span class="term"><strong>okular</strong></span></span>   is a document viewer for KDE
  ------------------------------------------------- ------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kio-extras.md "kio-extras-26.04.1")

    kio-extras-26.04.1

-   [Next](libkdcraw.md "libkdcraw-26.04.1")

    libkdcraw-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
