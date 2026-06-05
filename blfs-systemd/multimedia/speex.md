<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](soundtouch.md "SoundTouch-2.4.1")

    SoundTouch-2.4.1

-   [Next](svt-av1.md "SVT-AV1-4.1.0")

    SVT-AV1-4.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Speex-1.2.1 {#speex-1.2.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Speex {#introduction-to-speex}

<span class="application">Speex</span> is an audio compression format designed specifically for speech. It is well-adapted to internet applications and provides useful features that are not present in most other CODECs.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.xiph.org/releases/speex/speex-1.2.1.tar.gz">https://downloads.xiph.org/releases/speex/speex-1.2.1.tar.gz</a>

-   Download MD5 sum: fe7bf610883ff202092b92c72fe0fe3e

-   Download size: 1020 KB

-   Estimated disk space required: 7.8 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.xiph.org/releases/speex/speexdsp-1.2.1.tar.gz">https://downloads.xiph.org/releases/speex/speexdsp-1.2.1.tar.gz</a>

-   Download MD5 sum: e6eb5ddef743a362c8018f260b91dca5

-   Download size: 904 KB

-   Estimated disk space required: 5.5 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Speex Dependencies

#### Required

<a class="xref" href="libogg.md" title="libogg-1.3.6">libogg-1.3.6</a>

#### Optional

<a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>
</div>

<div class="installation" lang="en">
## Installation of Speex {#installation-of-speex}

This package consists of two separate tarballs. They need to be extracted and built independently.

Install <span class="application">Speex</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/speex-1.2.1 &&
make
```

This package does not come with a test suite.

As the <code class="systemitem">root</code> user:

```bash
make install
```

Now extract and install the speexdsp package:

```bash
cd ..                          &&
tar -xf speexdsp-1.2.1.tar.gz &&
cd speexdsp-1.2.1             &&

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/speexdsp-1.2.1 &&
make
```

Again, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">speexenc and speexdec</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libspeex.so and libspeexdsp.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/speex and /usr/share/doc/speex-1.2.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------------
  <a id="speexdec"></a><span class="command"><span class="term"><strong>speexdec</strong></span></span>         decodes a <span class="application">Speex</span> file and produces a WAV or raw file
  <a id="speexenc"></a><span class="command"><span class="term"><strong>speexenc</strong></span></span>         encodes a WAV or raw file using <span class="application">Speex</span>
  <a id="libspeex"></a><span class="term"><code class="filename">libspeex.so</code></span>         provides functions for the audio encoding/decoding programs
  <a id="libspeexdsp"></a><span class="term"><code class="filename">libspeexdsp.so</code></span>   is a speech processing library that goes along with the <span class="application">Speex</span> codec
  ------------------------------------------------------ -------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](soundtouch.md "SoundTouch-2.4.1")

    SoundTouch-2.4.1

-   [Next](svt-av1.md "SVT-AV1-4.1.0")

    SVT-AV1-4.1.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
