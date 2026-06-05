<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](fdk-aac.md "fdk-aac-2.0.3")

    fdk-aac-2.0.3

-   [Next](frei0r.md "frei0r-3.1.3")

    frei0r-3.1.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# FLAC-1.5.0 {#flac-1.5.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to FLAC {#introduction-to-flac}

<span class="application">FLAC</span> is an audio CODEC similar to MP3, but lossless, meaning that audio is compressed without losing any information.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/xiph/flac/releases/download/1.5.0/flac-1.5.0.tar.xz">https://github.com/xiph/flac/releases/download/1.5.0/flac-1.5.0.tar.xz</a>

-   Download MD5 sum: 0bb45bcf74338b00efeec121fff27367

-   Download size: 1.1 MB

-   Estimated disk space required: 25 MB (additional 170 MB to run the test suite)

-   Estimated build time: 0.2 SBU (additional 0.2 SBU to run the test suite)
</div>

### FLAC Dependencies

#### Optional

<a class="xref" href="libogg.md" title="libogg-1.3.6">libogg-1.3.6</a>, <a class="xref" href="../pst/docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a>, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, and <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>
</div>

<div class="installation" lang="en">
## Installation of FLAC {#installation-of-flac}

Install <span class="application">FLAC</span> by running the following commands:

```bash
./configure --prefix=/usr            \
            --disable-thorough-tests \
            --docdir=/usr/share/doc/flac-1.5.0 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. Note that if you passed the <code class="option">--enable-exhaustive-tests</code> and <code class="option">--enable-valgrind-testing</code> parameters to <span class="command"><strong>configure</strong></span> and then run the test suite, it will take a <span class="emphasis"><em>very</em></span> long time (up to 300 SBUs) and use about 375 MB of disk space.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-thorough-tests`*: This parameter is used so that the test suite will complete in a reasonable amount of time. Remove it if you desire more extensive tests.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">flac and metaflac</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libFLAC.so and libFLAC++.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/FLAC, /usr/include/FLAC++ and /usr/share/doc/flac-1.5.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------- -------------------------------------------------------------------------------------------
  <a id="flac-prog"></a><span class="command"><span class="term"><strong>flac</strong></span></span>         is a command-line utility for encoding, decoding and converting FLAC files
  <a id="metaflac"></a><span class="command"><span class="term"><strong>metaflac</strong></span></span>      is a program for listing, adding, removing, or editing metadata in one or more FLAC files
  <a id="libflac"></a><span class="term"><code class="filename">libFLAC{,++}.so</code></span>   these libraries provide native FLAC and Ogg FLAC C/C++ APIs for programs utilizing FLAC
  --------------------------------------------------- -------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fdk-aac.md "fdk-aac-2.0.3")

    fdk-aac-2.0.3

-   [Next](frei0r.md "frei0r-3.1.3")

    frei0r-3.1.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
