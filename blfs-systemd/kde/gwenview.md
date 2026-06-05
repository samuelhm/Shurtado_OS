<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](libkdcraw.md "libkdcraw-26.04.1")

    libkdcraw-26.04.1

-   [Next](libkcddb.md "libkcddb-26.04.1")

    libkcddb-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gwenview-26.04.1 {#gwenview-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gwenview {#introduction-to-gwenview}

<span class="application">Gwenview</span> is a fast and easy-to-use image viewer for KDE.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/gwenview-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/gwenview-26.04.1.tar.xz</a>

-   Download MD5 sum: faa0e54e7f7aca276dbf8f1c70682f9d

-   Download size: 6.2 MB

-   Estimated disk space required: 71 MB

-   Estimated build time: 0.7 SBU (using parallelism=4)
</div>

### Gwenview Dependencies

#### Required

<a class="xref" href="../general/exiv2.md" title="Exiv2-0.28.8">Exiv2-0.28.8</a>, <a class="xref" href="../x/kimageannotator.md" title="kImageAnnotator-0.7.2">kimageannotator-0.7.2</a>, <a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>, and <a class="xref" href="../general/lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>

#### Recommended

<a class="xref" href="libkdcraw.md" title="libkdcraw-26.04.1">libkdcraw-26.04.1</a>

#### Optional

<a class="xref" href="plasma-activities.md" title="plasma-activities-6.6.5">plasma-activities-6.6.5</a> and <a class="ulink" href="https://heasarc.gsfc.nasa.gov/fitsio/fitsio.md">CFitsio</a>
</div>

<div class="installation" lang="en">
## Installation of Gwenview {#installation-of-gwenview}

Install <span class="application">Gwenview</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
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
**Installed Program:** <span class="segbody">gwenview and gwenview_importer</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgwenviewlib.so and gvpart.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/share/{gwenview,doc/HTML/\*/gwenview}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ -------------------------
  <a id="gwenview-prog"></a><span class="command"><span class="term"><strong>gwenview</strong></span></span>                is the KDE image viewer
  <a id="gwenview-importer"></a><span class="command"><span class="term"><strong>gwenview_importer</strong></span></span>   is a Photo importer
  ------------------------------------------------------------------ -------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libkdcraw.md "libkdcraw-26.04.1")

    libkdcraw-26.04.1

-   [Next](libkcddb.md "libkcddb-26.04.1")

    libkcddb-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
