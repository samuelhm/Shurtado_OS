<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](cdparanoia.md "CDParanoia-III-10.2")

    CDParanoia-III-10.2

-   [Next](lame.md "LAME-3.100")

    LAME-3.100

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# kwave-26.04.1 {#kwave-26.04.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to KWave {#introduction-to-kwave}

The <span class="application">KWave</span> package contains a KDE Frameworks-based Sound Editor application.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.kde.org/stable/release-service/26.04.1/src/kwave-26.04.1.tar.xz">https://download.kde.org/stable/release-service/26.04.1/src/kwave-26.04.1.tar.xz</a>

-   Download MD5 sum: 5db78aacc46743e3df243267c702b181

-   Download size: 6.2 MB

-   Estimated disk space required: 89 MB

-   Estimated build time: 1.1 SBU (using parallelism=4)
</div>

### KWave Dependencies

#### Required

<a class="xref" href="audiofile.md" title="AudioFile-0.3.6">AudioFile-0.3.6</a>, <a class="xref" href="../general/fftw.md" title="fftw-3.3.11">fftw-3.3.11</a>, <a class="xref" href="id3lib.md" title="id3lib-3.8.3">id3lib-3.8.3</a>, and <a class="xref" href="../kde/frameworks6.md" title="Building KDE Frameworks 6.26.0 (KF6)">KDE Frameworks-6.26.0</a>

#### Recommended

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="flac.md" title="FLAC-1.5.0">FLAC-1.5.0</a>, <a class="xref" href="libogg.md" title="libogg-1.3.6">libogg-1.3.6</a>, and <a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of KWave {#installation-of-kwave}

Install <span class="application">KWave</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">kwave</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libkwave.so, libkwavegui.so, and 30 plugins</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$KF6_PREFIX/lib/plugins/kwave, \$KF6_PREFIX/share/kwave, \$KF6_PREFIX/share/doc/HTML/\*/kwave</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- --------------------------------------------------
  <a id="kwave-prog"></a><span class="command"><span class="term"><strong>kwave</strong></span></span>   is a sound editor built using the KDE Frameworks
  ----------------------------------------------- --------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cdparanoia.md "CDParanoia-III-10.2")

    CDParanoia-III-10.2

-   [Next](lame.md "LAME-3.100")

    LAME-3.100

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
