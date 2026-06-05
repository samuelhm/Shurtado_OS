<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](pulseaudio.md "PulseAudio-17.0")

    PulseAudio-17.0

-   [Next](sdl2.md "sdl2-compat-2.32.68")

    sdl2-compat-2.32.68

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# SBC-2.2 {#sbc-2.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to SBC {#introduction-to-sbc}

The <span class="application">SBC</span> package is a digital audio encoder and decoder used to transfer data to Bluetooth audio output devices like headphones or loudspeakers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.kernel.org/pub/linux/bluetooth/sbc-2.2.tar.xz">https://www.kernel.org/pub/linux/bluetooth/sbc-2.2.tar.xz</a>

-   Download MD5 sum: f3f1a4e69249241801bc8ddd6050de23

-   Download size: 272 KB

-   Estimated disk space required: 3.2 MB

-   Estimated build time: less than 0.1 SBU
</div>

### SBC Dependencies

#### Optional

<a class="xref" href="libsndfile.md" title="libsndfile-1.2.2">libsndfile-1.2.2</a>
</div>

<div class="installation" lang="en">
## Installation of SBC {#installation-of-sbc}

Install <span class="application">SBC</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static --disable-tester &&
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

*`--disable-tester`*: This disables the SBC tester. Remove it if you have installed <a class="xref" href="libsndfile.md" title="libsndfile-1.2.2">libsndfile-1.2.2</a>.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">sbcdec, sbcenc, and sbcinfo</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libsbc.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/sbc</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- ------------------------------------------------
  <a id="sbcdec"></a><span class="command"><span class="term"><strong>sbcdec</strong></span></span>     is a SBC decoder utility
  <a id="sbcenc"></a><span class="command"><span class="term"><strong>sbcenc</strong></span></span>     is a SBC encoder utility
  <a id="sbcinfo"></a><span class="command"><span class="term"><strong>sbcinfo</strong></span></span>   is a subband codec (SBC) analyzer
  <a id="libsbc"></a><span class="term"><code class="filename">libsbc.so</code></span>     contains the <span class="application">SBC</span> API functions
  ---------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pulseaudio.md "PulseAudio-17.0")

    PulseAudio-17.0

-   [Next](sdl2.md "sdl2-compat-2.32.68")

    sdl2-compat-2.32.68

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
