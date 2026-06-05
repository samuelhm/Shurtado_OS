<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](gutenprint.md "Gutenprint-5.3.5")

    Gutenprint-5.3.5

-   [Next](libppd.md "libppd-2.1.1")

    libppd-2.1.1

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libcupsfilters-2.1.1 {#libcupsfilters-2.1.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libcupsfilters {#introduction-to-libcupsfilters}

The <span class="application">libcupsfilters</span> library contains filter functions for the data format conversion tasks needed in Printer Applications. It also contains several API functions for developing printer drivers/Printer Applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/OpenPrinting/libcupsfilters/releases/download/2.1.1/libcupsfilters-2.1.1.tar.xz">https://github.com/OpenPrinting/libcupsfilters/releases/download/2.1.1/libcupsfilters-2.1.1.tar.xz</a>

-   Download MD5 sum: 1e3144c242e7ddcee112d41c79266885

-   Download size: 1.4 MB

-   Estimated disk space required: 39 MB (with tests)

-   Estimated build time: 0.1 SBU (Using parallelism=4; with tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/libcupsfilters-2.1.1-security_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/libcupsfilters-2.1.1-security_fixes-1.patch</a>
</div>

### libcupsfilters Dependencies

#### Required

<a class="xref" href="cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a>, <a class="xref" href="gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a> or <a class="xref" href="mupdf.md" title="MuPDF-1.26.12">mupdf-1.26.12</a>, <a class="xref" href="../general/lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="../general/poppler.md" title="Poppler-26.06.0">Poppler-26.06.0</a>, and <a class="xref" href="../general/qpdf.md" title="Qpdf-12.3.2">Qpdf-12.3.2</a>

#### Recommended

<a class="xref" href="../x/TTF-and-OTF-fonts.md#dejavu-fonts" title="DejaVu fonts">Dejavu fonts</a> (the build fails if they are not installed, although they are only required for the tests), <a class="xref" href="../general/libexif.md" title="libexif-0.6.26">libexif-0.6.26</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, and <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>
</div>

<div class="installation" lang="en">
## Installation of libcupsfilters {#installation-of-libcupsfilters}

First, fix 2 security vulnerabilities:

```bash
patch -Np1 -i ../libcupsfilters-2.1.1-security_fixes-1.patch
```

Install <span class="application">libcupsfilters</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libcupsfilters-2.1.1 &&
make
```

To test the results, issue <span class="command"><strong>make check</strong></span>. DejaVu fonts are needed for the tests.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--with-test-font-path=</code>*`VALUE`*: If you wish to run the tests, but you do not have the default <code class="filename">/usr/share/fonts/dejavu/DejaVuSans.ttf</code> font installed, use this switch to specify where <code class="filename">DejaVuSans.ttf</code> (or perhaps some other text TTF font - though this is untested) is located.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcupsfilters.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/cupsfilters, /usr/share/cups/{banners,charsets,data}, and /usr/share/doc/libcupsfilters-2.1.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- -------------------------------------
  <a id="libcupsfilters-lib"></a><span class="term"><code class="filename">libcupsfilters.so</code></span>   contains CUPS filters API functions
  ---------------------------------------------------------------- -------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gutenprint.md "Gutenprint-5.3.5")

    Gutenprint-5.3.5

-   [Next](libppd.md "libppd-2.1.1")

    libppd-2.1.1

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
