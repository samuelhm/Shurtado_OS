<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](pixman.md "Pixman-0.46.4")

    Pixman-0.46.4

-   [Next](potrace.md "Potrace-1.16")

    Potrace-1.16

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Poppler-26.06.0 {#poppler-26.06.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Poppler {#introduction-to-poppler}

The <span class="application">Poppler</span> package contains a PDF rendering library and command line tools used to manipulate PDF files. This is useful for providing PDF rendering functionality as a shared library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://poppler.freedesktop.org/poppler-26.06.0.tar.xz">https://poppler.freedesktop.org/poppler-26.06.0.tar.xz</a>

-   Download MD5 sum: 2fc51d2fea21cef7a3de7d445afb600f

-   Download size: 2.0 MB

-   Estimated disk space required: 1.1 GB (with Qt6 library and tests)

-   Estimated build time: 1.3 SBU (with parallelism=4, tests, and Qt6 library)
</div>

### Additional Downloads

<div class="itemizedlist">
**Poppler Encoding Data**

-   Download (HTTP): <a class="ulink" href="https://poppler.freedesktop.org/poppler-data-0.4.12.tar.gz">https://poppler.freedesktop.org/poppler-data-0.4.12.tar.gz</a>

-   Download MD5 sum: 67ee4a40aa830b1f6e2560ce5f6471ba

-   Download size: 4.3 MB

-   Estimated disk space required: 26 MB

-   Estimated build time: less than 0.1 SBU
</div>

The additional package consists of encoding files for use with <span class="application">Poppler</span>. The encoding files are optional and <span class="application">Poppler</span> will automatically read them if they are present. When installed, they enable <span class="application">Poppler</span> to render CJK and Cyrillic properly.

### Poppler Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="fontconfig.md" title="Fontconfig-2.18.1">Fontconfig-2.18.1</a>, and <a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection)

#### Recommended

<a class="xref" href="boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a>, <a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a>, <a class="xref" href="../postlfs/gpgmepp.md" title="gpgmepp-2.1.0">gpgmepp-2.1.0</a>, <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="../postlfs/nss.md" title="NSS-3.124">nss-3.124</a>, <a class="xref" href="openjpeg2.md" title="OpenJPEG-2.5.4">OpenJPEG-2.5.4</a>, and <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a> (required for PDF support in <a class="xref" href="../kde/okular.md" title="okular-26.04.1">okular-26.04.1</a>)

#### Optional

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>, <a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a> (for downloading test files), <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>
</div>

<div class="installation" lang="en">
## Installation of Poppler {#installation-of-poppler}

Now, install <span class="application">Poppler</span> by running the following commands:

```bash
mkdir build                         &&
cd    build                         &&

cmake -D CMAKE_BUILD_TYPE=Release   \
      -D CMAKE_INSTALL_PREFIX=/usr  \
      -D TESTDATADIR=$PWD/testfiles \
      -D ENABLE_QT5=OFF             \
      -D ENABLE_UNSTABLE_API_ABI_HEADERS=ON \
      -G Ninja ..                   &&
ninja
```

In order to run the test suite, some testcases are needed and can be obtained only from a git repository. The command to download them is: <span class="command"><strong>git clone --depth 1 https://gitlab.freedesktop.org/poppler/test.git testfiles</strong></span>. Then issue: <span class="command"><strong>LC_ALL=en_US.UTF-8 ninja test</strong></span>. One test, check_qt6_signature_basics, is known to fail.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

To install the documentation, run the following commands as <code class="systemitem">root</code>:

```bash
install -v -m755 -d           /usr/share/doc/poppler-26.06.0 &&
cp -vr ../glib/reference/html /usr/share/doc/poppler-26.06.0
```

### Poppler Data

If you downloaded the additional encoding data package, install it by issuing the following commands:

```bash
tar -xf ../../poppler-data-0.4.12.tar.gz &&
cd poppler-data-0.4.12
```

Now, as the <code class="systemitem">root</code> user:

```bash
make prefix=/usr install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply a higher level of compiler optimizations.

*`-D TESTDATADIR=$PWD/testfiles`*: Tells the test programs where the auxiliary files are located.

*`-D ENABLE_QT5=OFF`*: This switch is needed to prevent an error when Qt5 is not installed.

*`-D ENABLE_UNSTABLE_API_ABI_HEADERS=ON`*: Installs some old <span class="application">Xpdf</span> headers required by certain programs.

<code class="option">-D ENABLE_GTK_DOC=ON</code>: Use this parameter if GTK-Doc is installed and you wish to rebuild and install the API documentation.

<code class="option">-D ENABLE_QT6=OFF</code>: Use this parameter if <a class="xref" href="../x/qt6.md" title="Qt-6.11.1">Qt-6.11.1</a> is not installed.

<code class="option">-D ENABLE_BOOST=OFF</code>: Use this parameter if you have not installed <span class="application">boost</span> (the Splash backend for Qt6 recommends boost).

<code class="option">-D ENABLE_NSS3=OFF</code>: Use this parameter if you have not installed <span class="application">nss</span>.

<code class="option">-D ENABLE_GPGME=OFF</code>: Use this parameter if you have not installed <span class="application">gpgme</span>.

<code class="option">-D ENABLE_LIBTIFF=OFF</code>: Use this parameter if you have not installed <span class="application">libtiff</span>.

<span class="command"><strong>LC_ALL=en_US.UTF-8 ninja test</strong></span>: Runs the test suite. The environment variable LC_ALL=en_US.UTF-8 is only needed if the default locale does not include UTF-8.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">pdfattach, pdfdetach, pdffonts, pdfimages, pdfinfo, pdfseparate, pdfsig, pdftocairo, pdftohtml, pdftoppm, pdftops, pdftotext, and pdfunite</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpoppler.so, libpoppler-cpp.so, libpoppler-glib.so, and (optionally) libpoppler-qt6.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/poppler, /usr/share/poppler, and /usr/share/doc/poppler-26.06.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
  <a id="pdfattach"></a><span class="command"><span class="term"><strong>pdfattach</strong></span></span>               adds a new embedded file to an existing PDF file
  <a id="pdfdetach"></a><span class="command"><span class="term"><strong>pdfdetach</strong></span></span>               lists or extracts embedded files from PDF files
  <a id="pdffonts"></a><span class="command"><span class="term"><strong>pdffonts</strong></span></span>                 lists the fonts used in a PDF file along with various information for each font
  <a id="pdfimages"></a><span class="command"><span class="term"><strong>pdfimages</strong></span></span>               saves images from a PDF file as PPM, PBM, or JPEG files
  <a id="pdfinfo"></a><span class="command"><span class="term"><strong>pdfinfo</strong></span></span>                   prints the contents of the 'Info' dictionary (plus some other useful information) from a PDF file
  <a id="pdfseparate"></a><span class="command"><span class="term"><strong>pdfseparate</strong></span></span>           extracts single pages from a PDF file
  <a id="pdfsig"></a><span class="command"><span class="term"><strong>pdfsig</strong></span></span>                     verifies the digital signatures in a PDF document
  <a id="pdftocairo"></a><span class="command"><span class="term"><strong>pdftocairo</strong></span></span>             converts a PDF file to one of several formats (PNG, JPEG, PDF, PS, EPS, SVG) using the cairo output device of the poppler library
  <a id="pdftohtml"></a><span class="command"><span class="term"><strong>pdftohtml</strong></span></span>               converts a PDF file to HTML
  <a id="pdftoppm"></a><span class="command"><span class="term"><strong>pdftoppm</strong></span></span>                 converts PDF files to PBM, PGM and PPM formats
  <a id="pdftops"></a><span class="command"><span class="term"><strong>pdftops</strong></span></span>                   converts PDF files to Postscript format
  <a id="pdftotext"></a><span class="command"><span class="term"><strong>pdftotext</strong></span></span>               converts PDF files to plain text
  <a id="pdfunite"></a><span class="command"><span class="term"><strong>pdfunite</strong></span></span>                 merges several PDF files, in the order of their occurrence on the command line, to one PDF output file
  <a id="libpoppler"></a><span class="term"><code class="filename">libpoppler.so</code></span>             contains the API functions to render PDF files
  <a id="libpoppler-cpp"></a><span class="term"><code class="filename">libpoppler-cpp.so</code></span>     is a C++ backend for rendering PDF files
  <a id="libpoppler-glib"></a><span class="term"><code class="filename">libpoppler-glib.so</code></span>   is a wrapper library used to interface the PDF rendering functions with <span class="application">GTK+</span>
  <a id="libpoppler-qt6"></a><span class="term"><code class="filename">libpoppler-qt6.so</code></span>     is a wrapper library used to interface the PDF rendering functions with <span class="application">Qt</span>6
  -------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](pixman.md "Pixman-0.46.4")

    Pixman-0.46.4

-   [Next](potrace.md "Potrace-1.16")

    Potrace-1.16

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
