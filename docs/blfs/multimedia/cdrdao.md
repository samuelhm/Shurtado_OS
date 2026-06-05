<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 45. CD/DVD-Writing Utilities

-   [Prev](cdwriteutils.md "CD/DVD-Writing Utilities")

    CD/DVD-Writing Utilities

-   [Next](cdrtools.md "Cdrtools-3.02a09")

    Cdrtools-3.02a09

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Cdrdao-1.2.6 {#cdrdao-1.2.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Cdrdao {#introduction-to-cdrdao}

The <span class="application">Cdrdao</span> package contains CD recording utilities. These are useful for burning a CD in disk-at-once mode.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/cdrdao/cdrdao-1.2.6.tar.bz2">https://downloads.sourceforge.net/cdrdao/cdrdao-1.2.6.tar.bz2</a>

-   Download MD5 sum: f59689d847d56647187d4de487e3487d

-   Download size: 832 KB

-   Estimated disk space required: 88 MB

-   Estimated build time: 0.3 SBU (Using parallelism-4)
</div>

### <span class="application">Cdrdao</span> Dependencies

#### Recommended

<a class="xref" href="../x/gtkmm3.md" title="Gtkmm-3.24.10">Gtkmm-3.24.10</a>, <a class="xref" href="libao.md" title="Libao-1.2.0">libao-1.2.0</a>, <a class="xref" href="libvorbis.md" title="libvorbis-1.3.7">libvorbis-1.3.7</a>, <a class="xref" href="libmad.md" title="libmad-0.15.1b">libmad-0.15.1b</a>, and <a class="xref" href="lame.md" title="LAME-3.100">LAME-3.100</a> (required to build <span class="command"><strong>toc2mp3</strong></span>)

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/cdrdao">https://wiki.linuxfromscratch.org/blfs/wiki/cdrdao</a>
</div>

<div class="installation" lang="en">
## Installation of Cdrdao {#installation-of-cdrdao}

Install <span class="application">Cdrdao</span> by running the following commands:

```bash
./configure --prefix=/usr --mandir=/usr/share/man &&
make CC="gcc -std=gnu17"
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m755 -d /usr/share/doc/cdrdao-1.2.6 &&
install -v -m644 README /usr/share/doc/cdrdao-1.2.6
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>--mandir=/usr/share/man</strong></span>: Install manual pages in /usr/share/man instead of /usr/man.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cdrdao, cue2toc, gcdmaster, toc2cddb, toc2cue, and optionally toc2mp3</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/cdrdao, /usr/share/doc/cdrdao-1.2.6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------------------------------------------
  <a id="cdrdao-prog"></a><span class="command"><span class="term"><strong>cdrdao</strong></span></span>    records audio or data CD-Rs in disk-at-once (DAO) mode based on a textual description of the CD contents
  <a id="cue2toc"></a><span class="command"><span class="term"><strong>cue2toc</strong></span></span>       converts CUE to TOC format for audio CDs
  <a id="gcdmaster"></a><span class="command"><span class="term"><strong>gcdmaster</strong></span></span>   is a graphical front end to cdrdao that compresses and burns audio CDs
  <a id="toc2cddb"></a><span class="command"><span class="term"><strong>toc2cddb</strong></span></span>     converts a <span class="application">Cdrdao</span> TOC file into a cddb file and prints it to stdout
  <a id="toc2cue"></a><span class="command"><span class="term"><strong>toc2cue</strong></span></span>       converts TOC to CUE format for audio CDs
  <a id="toc2mp3"></a><span class="command"><span class="term"><strong>toc2mp3</strong></span></span>       converts an audio CD disk image (<code class="filename">.toc</code> file) to MP3 files
  -------------------------------------------------- ----------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cdwriteutils.md "CD/DVD-Writing Utilities")

    CD/DVD-Writing Utilities

-   [Next](cdrtools.md "Cdrtools-3.02a09")

    Cdrtools-3.02a09

-   [Up](cdwriteutils.md "Chapter 45. CD/DVD-Writing Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
