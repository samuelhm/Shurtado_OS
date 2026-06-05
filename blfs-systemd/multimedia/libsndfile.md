<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libsamplerate.md "libsamplerate-0.2.2")

    libsamplerate-0.2.2

-   [Next](libva.md "libva-2.23.0")

    libva-2.23.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libsndfile-1.2.2 {#libsndfile-1.2.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libsndfile {#introduction-to-libsndfile}

<span class="application">Libsndfile</span> is a library of C routines for reading and writing files containing sampled audio data.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libsndfile/libsndfile/releases/download/1.2.2/libsndfile-1.2.2.tar.xz">https://github.com/libsndfile/libsndfile/releases/download/1.2.2/libsndfile-1.2.2.tar.xz</a>

-   Download MD5 sum: 04e2e6f726da7c5dc87f8cf72f250d04

-   Download size: 716 KB

-   Estimated disk space required: 12 MB (add 10 MB for tests)

-   Estimated build time: 0.3 SBU (add 0.3 SBU for tests)
</div>

### libsndfile Dependencies

#### Recommended

<a class="xref" href="flac.md" title="FLAC-1.5.0">FLAC-1.5.0</a>, <a class="xref" href="opus.md" title="Opus-1.6.1">Opus-1.6.1</a>, and <a class="xref" href="libvorbis.md" title="libvorbis-1.3.7">libvorbis-1.3.7</a>

#### Optional

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="lame.md" title="LAME-3.100">LAME-3.100</a>, <a class="xref" href="mpg123.md" title="mpg123-1.33.5">mpg123-1.33.5</a>, and <a class="xref" href="speex.md" title="Speex-1.2.1">Speex-1.2.1</a>
</div>

<div class="installation" lang="en">
## Installation of libsndfile {#installation-of-libsndfile}

Fix building with <span class="application">GCC-15</span>:

```bash
sed -i '/typedef enum/,/bool ;/d' src/ALAC/alac_{en,de}coder.c
```

Install <span class="application">libsndfile</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --docdir=/usr/share/doc/libsndfile-1.2.2 &&
make
```

If running the test suite, disable the Opus tests which would fail with the recent Opus release and cause the test suite to bail out early:

```bash
sed '/ogg_opus/,+1s/HAVE_[A-Z_]*/0/' -i tests/lossy_comp_test.c
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

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
**Installed Programs:** <span class="segbody">sndfile-cmp, sndfile-concat, sndfile-convert, sndfile-deinterleave, sndfile-info, sndfile-interleave, sndfile-metadata-get, sndfile-metadata-set, sndfile-play, and sndfile-salvage</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libsndfile.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/libsndfile-1.2.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ -------------------------------------------------------------------------
  <a id="sndfile-cmp"></a><span class="command"><span class="term"><strong>sndfile-cmp</strong></span></span>                     compares two audio files
  <a id="sndfile-concat"></a><span class="command"><span class="term"><strong>sndfile-concat</strong></span></span>               concatenates two or more audio files
  <a id="sndfile-convert"></a><span class="command"><span class="term"><strong>sndfile-convert</strong></span></span>             converts a sound file from one format to another
  <a id="sndfile-deinterleave"></a><span class="command"><span class="term"><strong>sndfile-deinterleave</strong></span></span>   splits a multi-channel into multiple single channel files
  <a id="sndfile-info"></a><span class="command"><span class="term"><strong>sndfile-info</strong></span></span>                   displays information about a sound file
  <a id="sndfile-interleave"></a><span class="command"><span class="term"><strong>sndfile-interleave</strong></span></span>       converts multiple single channel files into a multi-channel file
  <a id="sndfile-metadata-get"></a><span class="command"><span class="term"><strong>sndfile-metadata-get</strong></span></span>   retrieves metadata from a sound file
  <a id="sndfile-metadata-set"></a><span class="command"><span class="term"><strong>sndfile-metadata-set</strong></span></span>   sets metadata in a sound file
  <a id="sndfile-play"></a><span class="command"><span class="term"><strong>sndfile-play</strong></span></span>                   plays a sound file
  <a id="sndfile-salvage"></a><span class="command"><span class="term"><strong>sndfile-salvage</strong></span></span>             salvages the audio data from WAV files which are more than 4 GB in size
  <a id="libsndfile-lib"></a><span class="term"><code class="filename">libsndfile.so</code></span>                   contains the <span class="application">libsndfile</span> API functions
  ------------------------------------------------------------------------ -------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libsamplerate.md "libsamplerate-0.2.2")

    libsamplerate-0.2.2

-   [Next](libva.md "libva-2.23.0")

    libva-2.23.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
