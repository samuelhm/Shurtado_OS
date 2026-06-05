<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libplacebo.md "libplacebo-7.360.1")

    libplacebo-7.360.1

-   [Next](libsndfile.md "libsndfile-1.2.2")

    libsndfile-1.2.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libsamplerate-0.2.2 {#libsamplerate-0.2.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libsamplerate {#introduction-to-libsamplerate}

<span class="application">libsamplerate</span> is a sample rate converter for audio.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libsndfile/libsamplerate/releases/download/0.2.2/libsamplerate-0.2.2.tar.xz">https://github.com/libsndfile/libsamplerate/releases/download/0.2.2/libsamplerate-0.2.2.tar.xz</a>

-   Download MD5 sum: 97c010fc25156c33cddc272c1935afab

-   Download size: 3.2 MB

-   Estimated disk space required: 15 MB (add 2 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.3 SBU for tests)
</div>

### libsamplerate Dependencies

#### Optional

<a class="xref" href="alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="libsndfile.md" title="libsndfile-1.2.2">libsndfile-1.2.2</a>, and <a class="xref" href="../general/fftw.md" title="fftw-3.3.11">fftw-3.3.11</a> (for tests)
</div>

<div class="installation" lang="en">
## Installation of libsamplerate {#installation-of-libsamplerate}

Install <span class="application">libsamplerate</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libsamplerate-0.2.2 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

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
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libsamplerate.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/doc/libsamplerate-0.2.2</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libplacebo.md "libplacebo-7.360.1")

    libplacebo-7.360.1

-   [Next](libsndfile.md "libsndfile-1.2.2")

    libsndfile-1.2.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
