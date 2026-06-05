<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](pnmixer.md "pnmixer-0.7.2")

    pnmixer-0.7.2

-   [Next](videoutils.md "Video Utilities")

    Video Utilities

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# vorbis-tools-1.4.3 {#vorbis-tools-1.4.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Vorbis Tools {#introduction-to-vorbis-tools}

The <span class="application">Vorbis Tools</span> package contains command-line tools useful for encoding, playing or editing files using the Ogg codec.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.xiph.org/releases/vorbis/vorbis-tools-1.4.3.tar.gz">https://downloads.xiph.org/releases/vorbis/vorbis-tools-1.4.3.tar.gz</a>

-   Download MD5 sum: 2057a2f8778d4913ceb169268abf23d4

-   Download size: 1.7 MB

-   Estimated disk space required: 14 MB

-   Estimated build time: 0.1 SBU
</div>

### Vorbis Tools Dependencies

#### Required

<a class="xref" href="libvorbis.md" title="libvorbis-1.3.7">libvorbis-1.3.7</a>

#### Optional (required to build the <span class="command"><strong>ogg123</strong></span> program)

<a class="xref" href="libao.md" title="Libao-1.2.0">libao-1.2.0</a>

#### Optional

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="flac.md" title="FLAC-1.5.0">FLAC-1.5.0</a>, <a class="xref" href="speex.md" title="Speex-1.2.1">Speex-1.2.1</a>, and <a class="ulink" href="https://code.google.com/archive/p/libkate/">libkate</a>
</div>

<div class="installation" lang="en">
## Installation of Vorbis Tools {#installation-of-vorbis-tools}

Install <span class="application">Vorbis Tools</span> by running the following commands:

```bash
./configure --prefix=/usr --enable-vcut &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-vcut`*: This parameter is used so that the <span class="command"><strong>vcut</strong></span> program is built as it is not by default.
</div>

<div class="configuration" lang="en">
## Configuring Vorbis Tools {#configuring-vorbis-tools}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/libao.conf</code>, <code class="filename">~/.libao</code> and <code class="filename">~/.ogg123rc</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Issue <span class="command"><strong>man libao.conf</strong></span> for information about setting the default output device. Also see <code class="filename">/usr/share/doc/vorbis-tools-1.4.3/ogg123rc-example</code>.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">ogg123, oggdec, oggenc, ogginfo, vcut, and vorbiscomment</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/vorbis-tools-1.4.3</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- ---------------------------------------------------------------------------------------
  <a id="ogg123"></a><span class="command"><span class="term"><strong>ogg123</strong></span></span>                 is a command-line audio player for Ogg Vorbis streams
  <a id="oggdec"></a><span class="command"><span class="term"><strong>oggdec</strong></span></span>                 is a simple decoder which converts Ogg Vorbis files into PCM audio files (WAV or raw)
  <a id="oggenc"></a><span class="command"><span class="term"><strong>oggenc</strong></span></span>                 is an encoder that turns raw, WAV or AIFF files into an Ogg Vorbis stream
  <a id="ogginfo"></a><span class="command"><span class="term"><strong>ogginfo</strong></span></span>               prints information stored in an audio file
  <a id="vcut"></a><span class="command"><span class="term"><strong>vcut</strong></span></span>                     splits a file into two files at a designated cut point
  <a id="vorbiscomment"></a><span class="command"><span class="term"><strong>vorbiscomment</strong></span></span>   is an editor that changes information in the audio file metadata tags
  ---------------------------------------------------------- ---------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pnmixer.md "pnmixer-0.7.2")

    pnmixer-0.7.2

-   [Next](videoutils.md "Video Utilities")

    Video Utilities

-   [Up](audioutils.md "Chapter 43. Audio Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
