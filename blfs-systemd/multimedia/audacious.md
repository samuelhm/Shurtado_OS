<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](audioutils.md "Audio Utilities")

    Audio Utilities

-   [Next](cdparanoia.md "CDParanoia-III-10.2")

    CDParanoia-III-10.2

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Audacious-4.6 {#audacious-4.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Audacious {#introduction-to-audacious}

<span class="application">Audacious</span> is an audio player.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://distfiles.audacious-media-player.org/audacious-4.6.tar.bz2">https://distfiles.audacious-media-player.org/audacious-4.6.tar.bz2</a>

-   Download MD5 sum: 2217b555fcbbc8e301642bede990e6ad

-   Download size: 508 KB

-   Estimated disk space required: 16 MB (with GTK support)

-   Estimated build time: 0.2 SBU (Using parallelism=4; with GTK support)
</div>

### Additional Downloads

<div class="itemizedlist">
**Required Plugins**

-   Download (HTTP): <a class="ulink" href="https://distfiles.audacious-media-player.org/audacious-plugins-4.6.tar.bz2">https://distfiles.audacious-media-player.org/audacious-plugins-4.6.tar.bz2</a>

-   Download MD5 sum: d6df715eb2f1bc9e10db8baa6f35d03f

-   Download size: 1.7 MB

-   Estimated disk space required: 41 MB (with GTK support)

-   Estimated build time: 0.4 SBU (Using parallelism=4; with GTK support)
</div>

### Audacious Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a>

#### Recommended

<a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>

#### Optional

<a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>

#### Recommended (for Plugins)

<a class="xref" href="mpg123.md" title="mpg123-1.33.5">mpg123-1.33.5</a>, <a class="xref" href="ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, and <a class="xref" href="../basicnet/neon.md" title="neon-0.37.1">neon-0.37.1</a> (for online mp3 and ogg radio)

#### Optional (for Plugins)

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="faad2.md" title="FAAD2-2.11.2">FAAD2-2.11.2</a>, <a class="xref" href="flac.md" title="FLAC-1.5.0">FLAC-1.5.0</a>, <a class="xref" href="lame.md" title="LAME-3.100">LAME-3.100</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="libcdio.md" title="libcdio-2.1.0">libcdio-2.1.0</a> (to identify and play CDs), <a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>, <a class="xref" href="libsndfile.md" title="libsndfile-1.2.2">libsndfile-1.2.2</a>, <a class="xref" href="libvorbis.md" title="libvorbis-1.3.7">libvorbis-1.3.7</a>, <a class="xref" href="opus.md" title="Opus-1.6.1">Opus-1.6.1</a>, <a class="xref" href="pipewire.md" title="Pipewire-1.6.6">pipewire-1.6.6</a>, <a class="xref" href="pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, <a class="xref" href="sdl3.md" title="SDL3-3.4.10">SDL3-3.4.10</a>, <a class="ulink" href="https://ampache-browser.org/">ampache-browser</a>, <a class="ulink" href="https://adplug.github.io/">adplug</a>, <a class="ulink" href="https://sourceforge.net/projects/bs2b/">The Bauer stereophonic-to-binaural DSP (bs2b) library</a>, <a class="ulink" href="https://sourceforge.net/projects/fluidsynth/">FluidSynth</a>, <a class="ulink" href="https://jackaudio.org/">JACK</a> (requires <a class="xref" href="libsamplerate.md" title="libsamplerate-0.2.2">libsamplerate-0.2.2</a>), <a class="ulink" href="https://sourceforge.net/projects/libcue/">libcue</a>, <a class="ulink" href="https://sourceforge.net/projects/modplug-xmms/">libmodplug</a>, <a class="ulink" href="https://sourceforge.net/projects/libmms">libmms</a>, <a class="ulink" href="https://lib.openmpt.org/libopenmpt/">libopenmpt</a>, <a class="ulink" href="https://www.sourceforge.net/projects/sidplay-residfp/">libsidplayfp</a>, <a class="ulink" href="https://www.lirc.org/">LIRC</a>, <a class="ulink" href="https://sndio.org/">sndio</a>, <a class="ulink" href="https://sourceforge.net/p/soxr/wiki/Home/">SoX</a>, and <a class="ulink" href="https://www.wavpack.com/">WavPack</a>
</div>

<div class="installation" lang="en">
## Installation of Audacious {#installation-of-audacious}

<div class="sect3" lang="en">
### Installation of the Main Audacious Program {#installation-of-the-main-audacious-program}

Install <span class="application">Audacious</span> by running the following commands (you may wish to change the buildstamp to another string):

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gtk=true         \
      -D qt=true          \
      -D buildstamp=BLFS  \
      -D libarchive=true  &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="sect3" lang="en">
### Installation of Audacious Plugins {#installation-of-audacious-plugins}

Install the required plugins package by issuing the following commands:

```bash
tar -xf ../../audacious-plugins-4.6.tar.bz2 &&
cd audacious-plugins-4.6                    &&

mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D gtk=true         \
      -D qt=true          \
      -D opus=false       \
      -D wavpack=false    &&
ninja
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D buildstamp=BLFS`*: This switch appends the given text to the version string.

*`-D gtk=true`*: This option enables GTK support for the graphical user interface.

*`-D qt=true`*: This option enables Qt support for the graphical user interface.

*`-D libarchive=true`*: This adds libarchive support, for reading compressed module sets or skins.

<code class="option">-D valgrind=true</code>: The option enables Valgrind analysis support.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">audacious and audtool</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libaudcore.so, libaudgui.so, libaudqt.so, libaudtag.so, and several plugin libraries under /usr/lib/audacious/ sub-directories</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/{audacious,libaudcore,libaudgui,libaudqt}, /usr/lib/audacious, and /usr/share/audacious</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------- ----------------------------------------------------------------------------------------
  <a id="audacious-prog"></a><span class="command"><span class="term"><strong>audacious</strong></span></span>   is an audio player and is a descendant of <span class="application">XMMS</span>
  <a id="audtool"></a><span class="command"><span class="term"><strong>audtool</strong></span></span>            is a small tool to modify the behavior of a running <span class="command"><strong>audacious</strong></span> instance
  ------------------------------------------------------- ----------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](audioutils.md "Audio Utilities")

    Audio Utilities

-   [Next](cdparanoia.md "CDParanoia-III-10.2")

    CDParanoia-III-10.2

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
