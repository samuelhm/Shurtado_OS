<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](libkcddb.md "libkcddb-26.04.1")

    libkcddb-26.04.1

-   [Next](add-pkgs.md "Further KDE packages")

    Further KDE packages

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# k3b-26.04.1 {#k3b-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to K3b {#introduction-to-k3b}

The <span class="application">K3b</span> package contains a KDE Frameworks-based graphical interface to the <span class="application">Cdrtools</span> and <span class="application">dvd+rw-tools</span> CD/DVD manipulation tools. It also combines the capabilities of many other multimedia packages into one central interface to provide a simple-to-operate application that can be used to handle many of your CD/DVD recording and formatting requirements. It is used for creating audio, data, video and mixed-mode CDs as well as copying, ripping and burning CDs and DVDs.

Though <span class="application">k3b</span> can be used to copy almost any DVD to similar medium, it does not provide a way to copy, or reproduce a dual-layer DVD onto a single-layer disk. Of course, there is not a program anywhere on any platform that can make an exact duplicate of a dual-layer DVD onto a single-layer disk, but there are programs on some platforms that can compress the data on a dual-layer DVD to fit on a single-layer DVD producing a duplicate, but compressed, image. If you need to copy the contents of a double-layer DVD to a single-layer disk, you may want to look at the <a class="ulink" href="http://www.mcmurchy.com/rmlcopydvd/">RMLCopyDVD</a> package.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/k3b-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/k3b-26.04.1.tar.xz</a>

-   Download MD5 sum: a5d7f8014cebb01179636d7dc6a899c2

-   Download size: 10 MB

-   Estimated disk space required: 145 MB

-   Estimated build time: 1.3 SBU (using parallelism=4)
</div>

### K3b Dependencies

#### Required

<a class="xref" href="frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>, <a class="xref" href="libkcddb.md" title="libkcddb-26.04.1">libkcddb-26.04.1</a>, <a class="xref" href="../multimedia/libsamplerate.md" title="libsamplerate-0.2.2">libsamplerate-0.2.2</a>, and <a class="xref" href="../general/shared-mime-info.md" title="shared-mime-info-2.4">shared-mime-info-2.4</a>

The CD/DVD drive is detected at run time using <a class="xref" href="../general/udisks2.md" title="UDisks-2.11.1">UDisks-2.11.1</a>, which must therefore be installed before running <span class="command"><strong>k3b</strong></span>.

#### Recommended

<a class="xref" href="../multimedia/libburn.md" title="libburn-1.5.8">libburn-1.5.8</a>, <a class="xref" href="../multimedia/libdvdread.md" title="libdvdread-7.0.1">libdvdread-7.0.1</a>, and <a class="xref" href="../multimedia/taglib.md" title="Taglib-2.3">taglib-2.3</a>

There are programs from three packages that <span class="application">k3b</span> will look for at runtime: <a class="xref" href="../multimedia/cdrtools.md" title="Cdrtools-3.02a09">Cdrtools-3.02a09</a> (required to burn CD-ROM media), <a class="xref" href="../multimedia/dvd-rw-tools.md" title="dvd+rw-tools-7.1">dvd+rw-tools-7.1</a> (required to burn or format DVD media), and <a class="xref" href="../multimedia/cdrdao.md" title="Cdrdao-1.2.6">Cdrdao-1.2.6</a> (required to burn CD-ROM media in DAO (Disk At Once) mode). If you don't need the capabilities provided by any of the three packages, you don't have to install them. However, a warning message will be generated every time you run the <span class="command"><strong>k3b</strong></span> program if any of them are not installed.

#### Optional Runtime

<a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>

#### Optional

<a class="xref" href="../multimedia/flac.md" title="FLAC-1.5.0">FLAC-1.5.0</a>, <a class="xref" href="../multimedia/lame.md" title="LAME-3.100">LAME-3.100</a>, <a class="xref" href="../multimedia/libmad.md" title="libmad-0.15.1b">libmad-0.15.1b</a>, <a class="xref" href="../multimedia/libsndfile.md" title="libsndfile-1.2.2">libsndfile-1.2.2</a>, <a class="xref" href="../multimedia/libvorbis.md" title="libvorbis-1.3.7">libvorbis-1.3.7</a>, and <a class="ulink" href="https://www.musepack.net/">Musepack (libmpcdec)</a>
</div>

<div class="installation" lang="en">
## Installation of K3b {#installation-of-k3b}

Install <span class="application">K3b</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
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
**Installed Programs:** <span class="segbody">k3b</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libk3bdevice.so, libk3blib.so, and numerous plugin modules for the installed dependencies</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/share/k3b and \$KF6_PREFIX/share/doc/HTML/\*/k3b</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------- --------------------------------------------
  <a id="k3b-prog"></a><span class="command"><span class="term"><strong>k3b</strong></span></span>   is a graphical CD/DVD manipulation program
  ------------------------------------------- --------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libkcddb.md "libkcddb-26.04.1")

    libkcddb-26.04.1

-   [Next](add-pkgs.md "Further KDE packages")

    Further KDE packages

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
