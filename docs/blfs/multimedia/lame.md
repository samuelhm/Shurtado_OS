<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](kwave.md "kwave-26.04.1")

    kwave-26.04.1

-   [Next](mpg123.md "mpg123-1.33.5")

    mpg123-1.33.5

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# LAME-3.100 {#lame-3.100}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to LAME {#introduction-to-lame}

The <span class="application">LAME</span> package contains an MP3 encoder and optionally, an MP3 frame analyzer. This is useful for creating and analyzing compressed audio files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/lame/lame-3.100.tar.gz">https://downloads.sourceforge.net/lame/lame-3.100.tar.gz</a>

-   Download MD5 sum: 83e260acbe4389b54fe08e0bdbf7cddb

-   Download size: 1.5 MB

-   Estimated disk space required: 9.7 MB

-   Estimated build time: 0.1 SBU
</div>

### LAME Dependencies

#### Optional

<a class="ulink" href="https://dmalloc.com/">Dmalloc</a>, <a class="ulink" href="https://linux.softpedia.com/get/Programming/Debuggers/Electric-Fence-3305.shtml/">Electric Fence</a>, <a class="xref" href="libsndfile.md" title="libsndfile-1.2.2">libsndfile-1.2.2</a> and <a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/lame">https://wiki.linuxfromscratch.org/blfs/wiki/lame</a>
</div>

<div class="installation" lang="en">
## Installation of LAME {#installation-of-lame}

Prevent the source code directory from being mistakenly hardcoded as a shared library search path in the installed programs:

```bash
sed -i -e 's/^\(\s*hardcode_libdir_flag_spec\s*=\).*/\1/' configure
```

Install <span class="application">LAME</span> by running the following commands:

```bash
./configure --prefix=/usr --enable-mp3rtp --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>LD_LIBRARY_PATH=libmp3lame/.libs make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make pkghtmldir=/usr/share/doc/lame-3.100 install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-mp3rtp`*: This switch enables building the encode-to-RTP program.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-nasm</code>: This option enables the use of <a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a> to compile optimized assembly routines for 32-bit x86. Note that this has no effect on x86_64.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">lame and mp3rtp</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libmp3lame.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/lame and /usr/share/doc/lame-3.100</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------------------------------
  <a id="lame-prog"></a><span class="command"><span class="term"><strong>lame</strong></span></span>          creates MP3 audio files from raw PCM or <code class="filename">.wav</code> data
  <a id="mp3rtp"></a><span class="command"><span class="term"><strong>mp3rtp</strong></span></span>           is used to encode MP3 with RTP streaming of the output
  <a id="libmp3lame"></a><span class="term"><code class="filename">libmp3lame.so</code></span>   provides the functions necessary to convert raw PCM and WAV files to MP3 files
  ---------------------------------------------------- --------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](kwave.md "kwave-26.04.1")

    kwave-26.04.1

-   [Next](mpg123.md "mpg123-1.33.5")

    mpg123-1.33.5

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
