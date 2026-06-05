<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](kf-apps.md "KDE Frameworks 6 Based Applications")

    KDE Frameworks 6 Based Applications

-   [Next](dolphin.md "dolphin-26.04.1")

    dolphin-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ark-26.04.1 {#ark-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Ark {#introduction-to-ark}

The <span class="application">Ark</span> package is a KDE Frameworks-based Archive Manager. It is a graphical front end to tar, 7zip, UnRar, and other similar tools.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/ark-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/ark-26.04.1.tar.xz</a>

-   Download MD5 sum: 69d58a69c2e812cd079b7cd6f366076a

-   Download size: 2.9 MB

-   Estimated disk space required: 45 MB

-   Estimated build time: 0.4 SBU (using parallelism=4)
</div>

### Ark Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a> and <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>

#### Recommended

<a class="xref" href="../general/7zip.md" title="7zip-26.01">7zip-26.01</a>, <a class="xref" href="../general/cpio.md" title="cpio-2.15">cpio-2.15</a>, <a class="xref" href="../general/unrar.md" title="UnRar-7.2.4">UnRar-7.2.4</a>, and <a class="xref" href="../general/zip.md" title="Zip-3.0">Zip-3.0</a>

#### Optional

<a class="ulink" href="https://arj.sourceforge.net/">arj</a>, <a class="ulink" href="https://github.com/ckolivas/lrzip">lrzip</a>, <a class="ulink" href="https://www.lzop.org/">lzop</a>, <a class="ulink" href="https://www.rarlab.com/">rar</a>, and <a class="ulink" href="https://theunarchiver.com/command-line">unar</a>
</div>

<div class="installation" lang="en">
## Installation of Ark {#installation-of-ark}

Install <span class="application">Ark</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">ark</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libkerfuffle.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/lib/plugins/kerfuffle and \$KF6_PREFIX/share/doc/HTML/\*/ark</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------- -------------------------------------------
  <a id="ark-prog"></a><span class="command"><span class="term"><strong>ark</strong></span></span>   is a KDE Frameworks-based Archive Manager
  ------------------------------------------- -------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kf-apps.md "KDE Frameworks 6 Based Applications")

    KDE Frameworks 6 Based Applications

-   [Next](dolphin.md "dolphin-26.04.1")

    dolphin-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
