<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](dav1d.md "dav1d-1.5.3")

    dav1d-1.5.3

-   [Next](faad2.md "FAAD2-2.11.2")

    FAAD2-2.11.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# faac-1.50 {#faac-1.50}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to faac {#introduction-to-faac}

The <span class="application">faac</span> application is an encoder for a lossy sound compression scheme specified in MPEG-2 Part 7 and MPEG-4 Part 3 standards and known as Advanced Audio Coding (AAC). This encoder is useful for producing files that can be played back on an iPod. Moreover, the iPod does not understand other sound compression schemes used in video files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lfs-book/faac/archive/v1.50/faac-1.50.tar.gz">https://github.com/lfs-book/faac/archive/v1.50/faac-1.50.tar.gz</a>

-   Download MD5 sum: c474259822cf4caf1c47709b10b97963

-   Download size: 112 KB

-   Estimated disk space required: 1.8 MB

-   Estimated build time: less than 0.1 SBU
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

On GitHub we've forked the upstream repository into our own <code class="literal">lfs-book</code> namespace and recreated a tag for the release. This is done to ensure the downloaded tarball file name to be correct and consistent (i.e. it shouldn't change when using the browser instead of a tool like <span class="command"><strong>wget</strong></span>). Our tag and the upstream release tag are on the same commit, so we've not introduced any change to the tarball content except the name of its top-level directory (that Git does not track).
</div>
</div>

<div class="installation" lang="en">
## Installation of faac {#installation-of-faac}

Install <span class="application">faac</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=/usr             \
      --buildtype=release       \
      -D default_library=shared &&

ninja
```

This package does not come with a test suite. However, basic functionality can be tested by encoding a sample WAV file (the sample file is installed by the <a class="xref" href="alsa-utils.md" title="alsa-utils-1.2.15.2">alsa-utils-1.2.15.2</a> package:

```bash
./frontend/faac -o Front_Left.mp4 /usr/share/sounds/alsa/Front_Left.wav
```

Then, decode the result using the <span class="command"><strong>faad</strong></span> program from the <a class="xref" href="faad2.md" title="FAAD2-2.11.2">FAAD2-2.11.2</a> package and play back the decoded file (requires the <span class="command"><strong>aplay</strong></span> program from the <a class="xref" href="alsa-utils.md" title="alsa-utils-1.2.15.2">alsa-utils-1.2.15.2</a> package:

```bash
faad Front_Left.mp4
aplay Front_Left.wav
```

<span class="command"><strong>aplay</strong></span> should identify the file as <code class="computeroutput">Signed 16 bit Little Endian, Rate 48000 Hz, Stereo</code>, and you should hear the words <span class="quote">“<span class="quote">front left.</span>”</span>

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D default_library=shared`*: prevents building the static library, which is not needed on a BLFS system.
</div>

<div class="sect2" lang="en">
## Other AAC encoders {#other-aac-encoders}

The quality of <span class="application">faac</span> is not up to par with the best AAC encoders currently available. Also, it only supports AAC and not High Efficiency AAC (also known as aacPlus), which provides better quality at low bitrates by means of using the <span class="quote">“<span class="quote">spectral band replication</span>”</span> technology. One example of an alternative program for producing AAC and HE-AAC streams is:

<div class="itemizedlist">
-   <a class="ulink" href="https://portal.3gpp.org/desktopmodules/Specifications/SpecificationDetails.aspx?specificationId=1459">3GPP Enhanced aacPlus general audio codec</a>: available in the source form, can encode only HE-AAC up to 48 kbps out of the box, but the maximum bitrate can be changed by editing the tuning table in the <code class="filename">FloatFR_sbrenclib/src/sbr_main.c</code> file.
</div>

Note, however, that the iPod supports only the Low Complexity AAC profile, which is the default in faac, but is completely unavailable in the 3GPP encoder.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">faac</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libfaac.so and libmp4v2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ------------------------------------------------------------
  <a id="faac-prog"></a><span class="command"><span class="term"><strong>faac</strong></span></span>      is a command-line AAC encoder
  <a id="libfaac"></a><span class="term"><code class="filename">libfaac.so</code></span>     contains functions for encoding AAC streams
  <a id="libmp4v2"></a><span class="term"><code class="filename">libmp4v2.so</code></span>   contains functions for creating and manipulating MP4 files
  ------------------------------------------------ ------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dav1d.md "dav1d-1.5.3")

    dav1d-1.5.3

-   [Next](faad2.md "FAAD2-2.11.2")

    FAAD2-2.11.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
