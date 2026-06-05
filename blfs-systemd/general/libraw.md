<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libqrencode.md "libqrencode-4.1.1")

    libqrencode-4.1.1

-   [Next](librsvg.md "librsvg-2.62.3")

    librsvg-2.62.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libraw-0.22.1 {#libraw-0.22.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libraw {#introduction-to-libraw}

<span class="application">Libraw</span> is a library for reading RAW files obtained from digital cameras (CRW/CR2, NEF, RAF, DNG, and others).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.libraw.org/data/LibRaw-0.22.1.tar.gz">https://www.libraw.org/data/LibRaw-0.22.1.tar.gz</a>

-   Download MD5 sum: ddd10d171c3517bb5218c1a61ac64ff7

-   Download size: 1.6 MB

-   Estimated disk space required: 42 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
</div>

### libraw Dependencies

#### Recommended

<a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="jasper.md" title="jasper-4.2.9">jasper-4.2.9</a>, and <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>
</div>

<div class="installation" lang="en">
## Installation of libraw {#installation-of-libraw}

Install <span class="application">libraw</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --enable-jpeg    \
            --enable-jasper  \
            --enable-lcms    \
            --disable-static \
            --docdir=/usr/share/doc/libraw-0.22.1 &&
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

*`--enable-jpeg`*: This switch enables support for JPEG images. Remove it if you don't have <a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a> installed.

*`--enable-jasper`*: This switch enables support for JPEG2000 images. Remove it if you don't have <a class="xref" href="jasper.md" title="jasper-4.2.9">jasper-4.2.9</a> installed.

*`--enable-lcms`*: This switch enables support for color management. Remove it if you don't have <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a> installed.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

All of the installed programs are examples of using libraw.
</div>

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">4channels, dcraw_emu, dcraw_half, half_mt, mem_image, multirender_test, postprocessing_benchmark, raw-identify, rawtextdump, simple_dcraw, and unprocessed_raw</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libraw.so and libraw_r.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libraw and /usr/share/doc/libraw-0.22.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------
  <a id="_4channels"></a><span class="command"><span class="term"><strong>4channels</strong></span></span>                                generates four TIFF files from RAW data, with one file per channel
  <a id="dcraw_half"></a><span class="command"><span class="term"><strong>dcraw_half</strong></span></span>                               emulates running "dcraw -h" (see <a class="ulink" href="https://linux.die.net/man/1/dcraw">DCRAW manpage</a>)
  <a id="mem_image"></a><span class="command"><span class="term"><strong>mem_image</strong></span></span>                                 emulates running "dcraw \[-4\] \[-6\] \[-e\]" (see <a class="ulink" href="https://linux.die.net/man/1/dcraw">DCRAW manpage</a>)
  <a id="postprocessing_benchmark"></a><span class="command"><span class="term"><strong>postprocessing_benchmark</strong></span></span>   creates eight different renderings from one source file. The first and fourth one should be identical
  <a id="simple_dcraw"></a><span class="command"><span class="term"><strong>simple_dcraw</strong></span></span>                           emulates running "dcraw \[-D\] \[-T\] \[-v\] \[-e\] \[-4\]" (see <a class="ulink" href="https://linux.die.net/man/1/dcraw">DCRAW manpage</a>)
  <a id="dcraw_emu"></a><span class="command"><span class="term"><strong>dcraw_emu</strong></span></span>                                 is an almost complete dcraw emulator (see <a class="ulink" href="https://linux.die.net/man/1/dcraw">DCRAW manpage</a>)
  <a id="half_mt"></a><span class="command"><span class="term"><strong>half_mt</strong></span></span>                                     emulates running "dcraw -h \[-w\] \[-a\] \[-v\]" (see <a class="ulink" href="https://linux.die.net/man/1/dcraw">DCRAW manpage</a>)
  <a id="multirender_test"></a><span class="command"><span class="term"><strong>multirender_test</strong></span></span>                   creates eight different renderings from one source file. The first and fourth one should be identical
  <a id="raw-identify"></a><span class="command"><span class="term"><strong>raw-identify</strong></span></span>                           emulates running "dcraw -i \[-v\]" (see <a class="ulink" href="https://linux.die.net/man/1/dcraw">DCRAW manpage</a>)
  <a id="rawtextdump"></a><span class="command"><span class="term"><strong>rawtextdump</strong></span></span>                             dumps a (small) selection of a RAW file as tab-separated text file
  <a id="unprocessed_raw"></a><span class="command"><span class="term"><strong>unprocessed_raw</strong></span></span>                     generates an unprocessed raw image (with masked pixels and without black subtraction)
  <a id="libraw-lib"></a><span class="term"><code class="filename">libraw.so</code></span>                                   contains functions used for parsing, editing, and saving RAW image data.
  -------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libqrencode.md "libqrencode-4.1.1")

    libqrencode-4.1.1

-   [Next](librsvg.md "librsvg-2.62.3")

    librsvg-2.62.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
