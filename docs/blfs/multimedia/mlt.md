<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libvpx.md "libvpx-1.16.0")

    libvpx-1.16.0

-   [Next](opus.md "Opus-1.6.1")

    Opus-1.6.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# MLT-7.38.0 {#mlt-7.38.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to MLT {#introduction-to-mlt}

The <span class="application">MLT</span> package is the Media Lovin Toolkit. It is an open source multimedia framework, designed and developed for television broadcasting. It provides a toolkit for broadcasters, video editors, media players, transcoders, web streamers and many more types of applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/mltframework/mlt/releases/download/v7.38.0/mlt-7.38.0.tar.gz">https://github.com/mltframework/mlt/releases/download/v7.38.0/mlt-7.38.0.tar.gz</a>

-   Download MD5 sum: 20de3730ac25953d93ad5c9b71b22a82

-   Download size: 6.4 MB

-   Estimated disk space required: 54 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### MLT Dependencies

#### Recommended

<a class="xref" href="ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, <a class="xref" href="frei0r.md" title="frei0r-3.1.3">frei0r-3.1.3</a>, <a class="xref" href="libsamplerate.md" title="libsamplerate-0.2.2">libsamplerate-0.2.2</a>, and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../general/fftw.md" title="fftw-3.3.11">fftw-3.3.11</a>, <a class="xref" href="../general/libexif.md" title="libexif-0.6.26">libexif-0.6.26</a>, <a class="xref" href="../general/opencv.md" title="opencv-4.13.0">opencv-4.13.0</a>, <a class="xref" href="sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a>, <a class="xref" href="../general/swig.md" title="SWIG-4.4.1">SWIG-4.4.1</a>, <a class="ulink" href="https://eigen.tuxfamily.org">eigen</a>, <a class="ulink" href="https://jackaudio.org">JACK</a>, <a class="ulink" href="https://glfs-book.github.io/slfs/general/ladspa-sdk.md">LADSPA-SDK</a>, <a class="ulink" href="https://github.com/jiixyj/libebur128/">libebur128</a>, <a class="ulink" href="https://movit.sesse.net">movit</a>, <a class="ulink" href="https://github.com/thestk/rtaudio/">rtaudio</a>, <a class="ulink" href="https://glfs-book.github.io/slfs/general/rubberband.md">rubberband</a>, <a class="ulink" href="https://sox.sourceforge.net/">SoX</a>, and <a class="ulink" href="http://public.hronopik.de/vid.stab/">vid.stab</a>
</div>

<div class="installation" lang="en">
## Installation of MLT {#installation-of-mlt}

Install <span class="application">MLT</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D MOD_SOX=OFF               \
      -D MOD_MOVIT=OFF             \
      -D MOD_VIDSTAB=OFF           \
      -D MOD_JACKRACK=OFF          \
      -D MOD_RUBBERBAND=OFF        \
      -W no-dev .. &&
make
```

This package does not come with a test suite. However a test .mp4 file can be played in a local graphical environment with <span class="command"><strong>./out/bin/melt \<filename\>.mp4</strong></span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This application uses advanced graphical capabilities. In some cases, firmware for your specific graphics adaptor may be needed. See <a class="xref" href="../postlfs/firmware.md#video-firmware" title="Firmware for Video Cards">the section called “Firmware for Video Cards”</a> for more information.
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D MOD_*=OFF`*: These switches allow the package to build without some of the optional external packages.

<code class="option">-D MOD_AVFORMAT=OFF</code>: This option allows building without <a class="xref" href="ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>.

<code class="option">-D MOD_FREI0R=OFF</code>: This option allows building without <a class="xref" href="frei0r.md" title="frei0r-3.1.3">frei0r-3.1.3</a>.

<code class="option">-D MOD_RESAMPLE=OFF</code>: This option allows building without <a class="xref" href="libsamplerate.md" title="libsamplerate-0.2.2">libsamplerate-0.2.2</a>.

<code class="option">-D MOD_QT6=OFF</code>: This option allows building without <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>.

<code class="option">-D MOD_OPENCV=ON</code>: This option allows building some additional modules that use <a class="xref" href="../general/opencv.md" title="opencv-4.13.0">opencv-4.13.0</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">melt-7 and melt (symlink to melt-7)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libmlt-7.so, libmlt++-7.so, and over twenty plugins</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/mlt-7, /usr/lib/mlt-7, /usr/lib/cmake/Mlt7, and /usr/share/mlt-7</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------- ------------------------
  <a id="melt"></a><span class="command"><span class="term"><strong>melt</strong></span></span>   is a test tool for MLT
  ---------------------------------------- ------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libvpx.md "libvpx-1.16.0")

    libvpx-1.16.0

-   [Next](opus.md "Opus-1.6.1")

    Opus-1.6.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
