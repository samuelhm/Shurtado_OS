<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](potrace.md "Potrace-1.16")

    Potrace-1.16

-   [Next](sassc.md "sassc-3.6.2")

    sassc-3.6.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Qpdf-12.3.2 {#qpdf-12.3.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Qpdf {#introduction-to-qpdf}

The <span class="application">Qpdf</span> package contains command-line programs and a library that does structural, content-preserving transformations on PDF files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/qpdf/qpdf/releases/download/v12.3.2/qpdf-12.3.2.tar.gz">https://github.com/qpdf/qpdf/releases/download/v12.3.2/qpdf-12.3.2.tar.gz</a>

-   Download MD5 sum: 6740cb19ae3c9ecdc9c1d012449de1c3

-   Download size: 19 MB

-   Estimated disk space required: 358 MB (add 2 MB for tests)

-   Estimated build time: 0.6 SBU (using parallelism=4; add 0.5 SBU for tests)
</div>

### Qpdf Dependencies

#### Required

<a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>

#### Optional

<a class="xref" href="../pst/gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a>, <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> with <a class="xref" href="python-modules.md#sphinx_rtd_theme" title="Sphinx_rtd_theme-3.1.0">sphinx_rtd_theme-3.1.0</a>, and <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>
</div>

<div class="installation" lang="en">
## Installation of Qpdf {#installation-of-qpdf}

Install <span class="application">Qpdf</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_STATIC_LIBS=OFF     \
      -D CMAKE_INSTALL_DOCDIR=/usr/share/doc/qpdf-12.3.2 \
      .. &&
make
```

To test the results, issue: <span class="command"><strong>ctest</strong></span>.

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
**Installed Programs:** <span class="segbody">fix-qdf, qpdf, and zlib-flate</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libqpdf.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/cmake/qpdf, /usr/include/qpdf, and /usr/share/doc/qpdf-12.3.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ----------------------------------------------------------------
  <a id="fix-qdf"></a><span class="command"><span class="term"><strong>fix-qdf</strong></span></span>         is used to repair PDF files in QDF form after editing
  <a id="qpdf-prog"></a><span class="command"><span class="term"><strong>qpdf</strong></span></span>          is used to convert one PDF file to another equivalent PDF file
  <a id="zlib-flate"></a><span class="command"><span class="term"><strong>zlib-flate</strong></span></span>   is a raw zlib compression program
  <a id="libqpdf"></a><span class="term"><code class="filename">libqpdf.so</code></span>         contains the <span class="application">Qpdf</span> API functions
  ---------------------------------------------------- ----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](potrace.md "Potrace-1.16")

    Potrace-1.16

-   [Next](sassc.md "sassc-3.6.2")

    sassc-3.6.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
