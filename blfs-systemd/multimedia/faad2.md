<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](faac.md "faac-1.50")

    faac-1.50

-   [Next](fdk-aac.md "fdk-aac-2.0.3")

    fdk-aac-2.0.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# FAAD2-2.11.2 {#faad2-2.11.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to FAAD2 {#introduction-to-faad2}

<span class="application">FAAD2</span> is a decoder for a lossy sound compression scheme specified in MPEG-2 Part 7 and MPEG-4 Part 3 standards and known as Advanced Audio Coding (AAC).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/knik0/faad2/archive/2.11.2/faad2-2.11.2.tar.gz">https://github.com/knik0/faad2/archive/2.11.2/faad2-2.11.2.tar.gz</a>

-   Download MD5 sum: 6a0ab532d81d9a528d08ab862bc4b637

-   Download size: 644 KB

-   Estimated disk space required: 9.6 MB

-   Estimated build time: 0.2 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Sample AAC file: <a class="ulink" href="https://www.nch.com.au/acm/sample.aac">https://www.nch.com.au/acm/sample.aac</a> (7 KB)
</div>

### FAAD2 Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of FAAD2 {#installation-of-faad2}

Install <span class="application">FAAD2</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_SHARED_LIBS=ON      \
      .. &&
make
```

This package does not come with a test suite. However, basic functionality can be tested by decoding the sample AAC file:

```bash
./faad -o sample.wav ../../sample.aac
```

This should display a copyright message and the following information about the sample file:

<div class="literallayout">
<code class="computeroutput">sample.aac file info:</code>\
<code class="computeroutput">ADTS, 4.608 sec, 13 kbps, 16000 Hz</code>\
\
<code class="computeroutput">  ---------------------</code>\
<code class="computeroutput"> | Config:  2 Ch       |</code>\
<code class="computeroutput">  ---------------------</code>\
<code class="computeroutput"> | Ch |    Position    |</code>\
<code class="computeroutput">  ---------------------</code>\
<code class="computeroutput"> | 00 | Left front     |</code>\
<code class="computeroutput"> | 01 | Right front    |</code>\
<code class="computeroutput">  ---------------------</code>
</div>

Now play the result (requires the <span class="command"><strong>aplay</strong></span> program from the <a class="xref" href="alsa-utils.md" title="alsa-utils-1.2.15.2">alsa-utils-1.2.15.2</a> package):

```bash
aplay sample.wav
```

<span class="command"><strong>aplay</strong></span> should identify the file as <code class="computeroutput">Signed 16 bit Little Endian, Rate 16000 Hz, Stereo</code>, and you should hear some piano notes.

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
**Installed Program:** <span class="segbody">faad</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libfaad.so and libfaad_drm.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- ----------------------------------------------------------
  <a id="faad-prog"></a><span class="command"><span class="term"><strong>faad</strong></span></span>    is a command-line utility for decoding AAC and MP4 files
  <a id="libfaad"></a><span class="term"><code class="filename">libfaad.so</code></span>   contains functions for decoding AAC streams
  ---------------------------------------------- ----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](faac.md "faac-1.50")

    faac-1.50

-   [Next](fdk-aac.md "fdk-aac-2.0.3")

    fdk-aac-2.0.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
