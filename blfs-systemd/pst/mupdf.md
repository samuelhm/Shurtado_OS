<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 50. PostScript

-   [Prev](fop.md "fop-2.11")

    fop-2.11

-   [Next](paps.md "paps-0.8.0")

    paps-0.8.0

-   [Up](ps.md "Chapter 50. PostScript")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# MuPDF-1.26.12 {#mupdf-1.26.12}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to MuPDF {#introduction-to-mupdf}

<span class="application">MuPDF</span> is a lightweight PDF and XPS viewer.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.mupdf.com/downloads/archive/mupdf-1.26.12-source.tar.gz">https://www.mupdf.com/downloads/archive/mupdf-1.26.12-source.tar.gz</a>

-   Download MD5 sum: d10eb7e1ef0f4a44f5c14a29b9d6f906

-   Download size: 62 MB

-   Estimated disk space required: 295 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### MuPDF Dependencies

#### Required

<a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Recommended

<a class="xref" href="../general/brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>, <a class="xref" href="../x/freeglut.md" title="Freeglut-3.8.0">Freeglut-3.8.0</a>, <a class="xref" href="../general/harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="../general/openjpeg2.md" title="OpenJPEG-2.5.4">OpenJPEG-2.5.4</a>, and <a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>

#### Optional

<a class="xref" href="../general/zxing-cpp.md" title="zxing-cpp-3.0.2">zxing-cpp-3.0.2</a>, <a class="xref" href="../xsoft/xdg-utils.md" title="xdg-utils-1.2.1">xdg-utils-1.2.1</a> (runtime), <a class="ulink" href="https://jbig2dec.com">jbig2dec</a>, and <a class="ulink" href="https://mujs.com/">MuJS</a>

#### Required (runtime)

<a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>
</div>

<div class="installation" lang="en">
## Installation of MuPDF {#installation-of-mupdf}

Install <span class="application">MuPDF</span> by running the following commands:

```bash
cat > user.make << EOF &&
USE_SYSTEM_BROTLI := yes
USE_SYSTEM_FREETYPE := yes
USE_SYSTEM_HARFBUZZ := yes
USE_SYSTEM_JBIG2DEC := no
USE_SYSTEM_JPEGXR := no # not used without HAVE_JPEGXR
USE_SYSTEM_LCMS2 := no # lcms2mt is strongly preferred
USE_SYSTEM_LIBJPEG := yes
USE_SYSTEM_MUJS := no # build needs source anyway
USE_SYSTEM_OPENJPEG := yes
USE_SYSTEM_ZLIB := yes
USE_SYSTEM_GLUT := yes
USE_SYSTEM_CURL := yes
USE_SYSTEM_GUMBO := no
EOF

export XCFLAGS=-fPIC                      &&
make build=release shared=yes verbose=yes &&
unset XCFLAGS
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make prefix=/usr                         \
     shared=yes                          \
     docdir=/usr/share/doc/mupdf-1.26.12 \
     install                             &&

ln -sfv libmupdf.so.26.12 /usr/lib/libmupdf.so.26 &&
ln -sfv libmupdf.so.26   /usr/lib/libmupdf.so     &&
chmod 755 /usr/lib/libmupdf.so.26.12              &&

ln -sfv mupdf-x11 /usr/bin/mupdf
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>ln -sfv mupdf-x11 /usr/bin/mupdf</strong></span> : This symbolic link chooses between <span class="command"><strong>mupdf-gl</strong></span> and <span class="command"><strong>mupdf-x11</strong></span> when running <span class="command"><strong>mupdf</strong></span>.

<code class="option">barcode=yes</code>: Pass this option to <span class="command"><strong>make</strong></span> if you want barcode support. This will use the <span class="application">zxing-cpp</span> library included in the package. If you want to use the system <a class="xref" href="../general/zxing-cpp.md" title="zxing-cpp-3.0.2">zxing-cpp-3.0.2</a>, you should add <span class="command"><strong>USE_SYSTEM_ZXINGCPP := yes</strong></span> to <code class="filename">user.make</code>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">mupdf (symlink), mupdf-gl, mupdf-x11, mupdf-x11-curl, muraster, and mutool</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libmupdf.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/mupdf, /usr/share/doc/mupdf-1.26.12</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------
  <a id="mupdf-prog"></a><span class="command"><span class="term"><strong>mupdf</strong></span></span>      is a program for viewing PDF, XPS, EPUB, and CBZ documents, and various image formats such as PNG, JPEG, GIFF, and TIFF
  <a id="mupdf-gl"></a><span class="command"><span class="term"><strong>mupdf-gl</strong></span></span>     same as <span class="command"><strong>mupdf</strong></span>, using an opengl renderer
  <a id="mupdf-x11"></a><span class="command"><span class="term"><strong>mupdf-x11</strong></span></span>   same as <span class="command"><strong>mupdf</strong></span>, using an X Window renderer
  <a id="muraster"></a><span class="command"><span class="term"><strong>muraster</strong></span></span>     is a program used to perform rasterization tasks with PDF documents
  <a id="mutool"></a><span class="command"><span class="term"><strong>mutool</strong></span></span>         is a program to perform various operations on PDF files, such as merging and cleaning PDF documents
  <a id="libmupdf"></a><span class="term"><code class="filename">libmupdf.so</code></span>     contains the mupdf API functions
  -------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fop.md "fop-2.11")

    fop-2.11

-   [Next](paps.md "paps-0.8.0")

    paps-0.8.0

-   [Up](ps.md "Chapter 50. PostScript")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
