<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](gwenview.md "gwenview-26.04.1")

    gwenview-26.04.1

-   [Next](k3b.md "k3b-26.04.1")

    k3b-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libkcddb-26.04.1 {#libkcddb-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libkcddb {#introduction-to-libkcddb}

The <span class="application">libkcddb</span> package contains a library used to retrieve audio CD meta data from the internet.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/libkcddb-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/libkcddb-26.04.1.tar.xz</a>

-   Download MD5 sum: b84581fa45d611ec719c51aaf00687d3

-   Download size: 440 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.3 SBU
</div>

### libkcddb Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>

#### Recommended

<a class="xref" href="../multimedia/libmusicbrainz5.md" title="libmusicbrainz-5.1.0">libmusicbrainz-5.1.0</a>
</div>

<div class="installation" lang="en">
## Installation of libkcddb {#installation-of-libkcddb}

Install <span class="application">libkcddb</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -D QT_MAJOR_VERSION=6               \
      -W no-dev ..                        &&
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
**Installed Libraries:** <span class="segbody">libKCddb6.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/include/KCddb6 \$KF6_PREFIX/lib/cmake/KCddb6 \$KF6_PREFIX/share/doc/HTML/\*/kcontrol</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------- --------------------------------------------------------------------------
  <a id="libkcddb-lib"></a><span class="term"><code class="filename">libKCddb6.so</code></span>   contains functions used to retrieve audio CD meta data from the internet
  ----------------------------------------------------- --------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gwenview.md "gwenview-26.04.1")

    gwenview-26.04.1

-   [Next](k3b.md "k3b-26.04.1")

    k3b-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
