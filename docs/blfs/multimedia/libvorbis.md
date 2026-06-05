<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libva.md "libva-2.23.0")

    libva-2.23.0

-   [Next](libvpx.md "libvpx-1.16.0")

    libvpx-1.16.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libvorbis-1.3.7 {#libvorbis-1.3.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libvorbis {#introduction-to-libvorbis}

The <span class="application">libvorbis</span> package contains a general purpose audio and music encoding format. This is useful for creating (encoding) and playing (decoding) sound in an open (patent free) format.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.7.tar.xz">https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.7.tar.xz</a>

-   Download MD5 sum: 50902641d358135f06a8392e61c9ac77

-   Download size: 1.1 MB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.1 SBU
</div>

### libvorbis Dependencies

#### Required

<a class="xref" href="libogg.md" title="libogg-1.3.6">libogg-1.3.6</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>) (specifically, pdflatex and htlatex) to build the PDF documentation
</div>

<div class="installation" lang="en">
## Installation of libvorbis {#installation-of-libvorbis}

Install <span class="application">libvorbis</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: <span class="command"><strong>make -j1 check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m644 doc/Vorbis* /usr/share/doc/libvorbis-1.3.7
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-docs</code>: This switch enables building the documentation in formats other than the supplied html.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libvorbis.so, libvorbisenc.so and libvorbisfile.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/vorbis and /usr/share/doc/libvorbis-1.3.7</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------
  <a id="libvorbis-lib"></a><span class="term"><code class="filename">libvorbis.so</code></span>   provides the functions used to read and write sound files
  ------------------------------------------------------ -----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libva.md "libva-2.23.0")

    libva-2.23.0

-   [Next](libvpx.md "libvpx-1.16.0")

    libvpx-1.16.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
