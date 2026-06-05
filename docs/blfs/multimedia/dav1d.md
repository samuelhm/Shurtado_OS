<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](audiofile.md "AudioFile-0.3.6")

    AudioFile-0.3.6

-   [Next](faac.md "faac-1.50")

    faac-1.50

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# dav1d-1.5.3 {#dav1d-1.5.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to dav1d {#introduction-to-dav1d}

The dav1d package contains an AV1 decoder.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://code.videolan.org/videolan/dav1d/-/archive/1.5.3/dav1d-1.5.3.tar.gz">https://code.videolan.org/videolan/dav1d/-/archive/1.5.3/dav1d-1.5.3.tar.gz</a>

-   Download MD5 sum: e22d5377b91936ef0b43662364c8973e

-   Download size: 1.7 MB

-   Estimated disk space required: 23 MB (with tests)

-   Estimated build time: 0.3 SBU (using parallelism=4; with tests)
</div>

### dav1d Dependencies

#### Recommended

<a class="xref" href="../general/nasm.md" title="NASM-3.01">NASM-3.01</a>

#### Optional

<a class="ulink" href="https://xxhash.com/">xxhash</a>
</div>

<div class="installation" lang="en">
## Installation of dav1d {#installation-of-dav1d}

Install dav1d by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, run <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">dav1d</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libdav1d.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/dav1d</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------------------------
  <a id="dav1d-app"></a><span class="command"><span class="term"><strong>dav1d</strong></span></span>     is the dav1d decoder utility
  <a id="libdav1d"></a><span class="term"><code class="filename">libdav1d.so</code></span>   contains functions that enable decoding files that use the AV1 codec
  ------------------------------------------------ ----------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](audiofile.md "AudioFile-0.3.6")

    AudioFile-0.3.6

-   [Next](faac.md "faac-1.50")

    faac-1.50

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
