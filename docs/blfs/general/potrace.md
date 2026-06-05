<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](poppler.md "Poppler-26.06.0")

    Poppler-26.06.0

-   [Next](qpdf.md "Qpdf-12.3.2")

    Qpdf-12.3.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Potrace-1.16 {#potrace-1.16}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Potrace {#introduction-to-potrace}

<span class="application">Potrace™</span> is a tool for transforming a bitmap (PBM, PGM, PPM, or BMP format) into one of several vector file formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/potrace/potrace-1.16.tar.gz">https://downloads.sourceforge.net/potrace/potrace-1.16.tar.gz</a>

-   Download MD5 sum: 5f0bd87ddd9a620b0c4e65652ef93d69

-   Download size: 644 KB

-   Estimated disk space required: 7.1 MB (including tests)

-   Estimated build time: less than 0.1 SBU (including tests)
</div>

### Potrace Dependencies

#### Recommended

<a class="xref" href="llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> (including <span class="command"><strong>clang</strong></span>)
</div>

<div class="installation" lang="en">
## Installation of Potrace {#installation-of-potrace}

Install <span class="application">Potrace</span> by running the following commands:

```bash
./configure --prefix=/usr                        \
            --disable-static                     \
            --docdir=/usr/share/doc/potrace-1.16 \
            --enable-a4                          \
            --enable-metric                      \
            --with-libpotrace                    &&
make
```

To run the test suite, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-a4`*: Use A4 as the default paper size.

*`--enable-metric`*: Use metric units (centimeters) as default

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-libpotrace`*: Install the library and headers.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">mkbitmap, potrace</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpotrace.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/potrace-1.16</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------
  <a id="mkbitmap"></a><span class="command"><span class="term"><strong>mkbitmap</strong></span></span>       transforms images into bitmaps with scaling and filtering
  <a id="potrace-prog"></a><span class="command"><span class="term"><strong>potrace</strong></span></span>    transforms bitmaps into vector graphics
  <a id="libpotrace"></a><span class="term"><code class="filename">libpotrace.so</code></span>   is a library for transforming bitmaps into vector graphics
  ---------------------------------------------------- ------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](poppler.md "Poppler-26.06.0")

    Poppler-26.06.0

-   [Next](qpdf.md "Qpdf-12.3.2")

    Qpdf-12.3.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
