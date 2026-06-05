<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](cups-filters.md "cups-filters-2.0.1")

    cups-filters-2.0.1

-   [Next](gutenprint.md "Gutenprint-5.3.5")

    Gutenprint-5.3.5

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ghostscript-10.07.1 {#ghostscript-10.07.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Ghostscript {#introduction-to-ghostscript}

<span class="application">Ghostscript</span> is a versatile processor for PostScript data with the ability to render PostScript to different targets. It is a mandatory part of the cups printing stack.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs10071/ghostscript-10.07.1.tar.xz">https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs10071/ghostscript-10.07.1.tar.xz</a>

-   Download MD5 sum: 9e987b203c535d3c7829e1daefb85e98

-   Download size: 66 MB

-   Estimated disk space required: 1.1 GB (with fonts and libgs.so)

-   Estimated build time: 1.9 SBU (Using parallelism=4; with libgs.so)
</div>

### Additional Downloads

If you wish, you can download additional fonts.

<div class="itemizedlist">
**Standard Fonts**

-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/gs-fonts/ghostscript-fonts-std-8.11.tar.gz">https://downloads.sourceforge.net/gs-fonts/ghostscript-fonts-std-8.11.tar.gz</a>

-   Download MD5 sum: 6865682b095f8c4500c54b285ff05ef6

-   Download size: 3.7 MB
</div>

<div class="itemizedlist">
**Other Fonts**

-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/gs-fonts/gnu-gs-fonts-other-6.0.tar.gz">https://downloads.sourceforge.net/gs-fonts/gnu-gs-fonts-other-6.0.tar.gz</a>

-   Download MD5 sum: 33457d3f37de7ef03d2eea05a9e6aa4f

-   Download size: 796 KB
</div>

### Ghostscript Dependencies

#### Recommended

<a class="xref" href="cups.md" title="Cups-2.4.19">Cups-2.4.19</a> (required for building the <span class="quote">“<span class="quote">cups</span>”</span> device backend, which is needed by <span class="application">cups-filters</span>), <a class="xref" href="../general/fontconfig.md" title="Fontconfig-2.18.1">Fontconfig-2.18.1</a> (required if you are installing any of the suggested fonts), <a class="xref" href="../general/freetype2.md" title="FreeType-2.14.3">FreeType-2.14.3</a>, <a class="xref" href="../general/lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, and <a class="xref" href="../general/openjpeg2.md" title="OpenJPEG-2.5.4">OpenJPEG-2.5.4</a>

#### Optional

<a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/libidn.md" title="libidn-1.43">libidn-1.43</a>, <a class="xref" href="../general/libpaper.md" title="libpaper-2.2.8">libpaper-2.2.8</a>, <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, and <a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>
</div>

<div class="installation" lang="en">
## Installation of Ghostscript {#installation-of-ghostscript}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The <span class="application">Ghostscript</span> build system is not user-friendly. In order to use system copies of various graphics libraries, you must do it using unconventional methods.
</div>

<span class="application">Ghostscript</span> includes (old) copies of several libraries. Some of these seem to have been patched to fix known vulnerabilities, but others of these copies are less-well maintained. To ensure that any future fixes are applied throughout the whole system, it is recommended that you first install the released versions of these libraries and then configure <span class="application">Ghostscript</span> to link to them.

If you have installed the recommended dependencies on your system, remove the copies of <span class="application">freetype</span>, <span class="application">lcms2</span>, <span class="application">libjpeg</span>, <span class="application">libpng</span>, and <span class="application">openjpeg</span>:

```bash
rm -rf freetype lcms2mt jpeg libpng openjpeg
```

Compile <span class="application">Ghostscript</span>:

```bash
rm -rf zlib &&

./configure --prefix=/usr           \
            --disable-compile-inits \
            --with-system-libtiff   \
            CFLAGS="${CFLAGS:--g -O3} -fPIC" &&
make
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The shared library depends on <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>. It is only used by external programs like <a class="xref" href="asymptote.md" title="asymptote-3.10">asymptote-3.10</a>, <a class="xref" href="dvisvgm.md" title="dvisvgm-3.6">dvisvgm-3.6</a>, and <a class="xref" href="../general/imagemagick.md" title="ImageMagick-7.1.2-13">ImageMagick-7.1.2-13</a>.
</div>

To compile the shared library <code class="filename">libgs.so</code>, run the following additional command as an unprivileged user:

```bash
make so
```

This package does not come with a test suite. A set of example files may be used for testing, but it is only possible after installation of the package.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you built the shared library, install it with:

```bash
make soinstall                                     &&
install -v -m644 base/*.h /usr/include/ghostscript &&
ln -sfvn ghostscript /usr/include/ps
```

Now make the documentation accessible from a standard place:

```bash
mv -v /usr/share/doc/ghostscript/10.07.1 /usr/share/doc/ghostscript-10.07.1 &&
rmdir /usr/share/doc/ghostscript                                            &&
cp -r examples/ -T /usr/share/ghostscript/10.07.1/examples
```

If you have downloaded the fonts, unpack them to <code class="filename">/usr/share/ghostscript</code> and ensure the ownership of the files are <code class="systemitem">root</code>: <code class="systemitem">root</code>.

```bash
tar -xvf ../ghostscript-fonts-std-8.11.tar.gz -C /usr/share/ghostscript --no-same-owner &&
tar -xvf ../gnu-gs-fonts-other-6.0.tar.gz     -C /usr/share/ghostscript --no-same-owner &&
fc-cache -v /usr/share/ghostscript/fonts/
```

You can now test the rendering of various postscript and pdf files from the <code class="filename">/usr/share/ghostscript/10.07.1/examples</code> . To do this, run the following command (in a X11 session):

```bash
gs -q -dBATCH /usr/share/ghostscript/10.07.1/examples/tiger.eps
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>rm -rf zlib</strong></span> : <span class="application">zlib</span> was installed as part of LFS.

*`--disable-compile-inits`*: This option makes <span class="command"><strong>gs</strong></span> and <code class="filename">libgs.so</code> slightly smaller.

*`--with-system-libtiff`*: Remove this option if you've not installed <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>.

*`CFLAGS="${CFLAGS:--g -O3} -fPIC"`*: These flags are needed to prevent a linker error during the build process.

<span class="command"><strong>install -v -m644 base/\*.h...</strong></span> : Some packages (<span class="application">ImageMagick</span> is one) need the <span class="application">Ghostscript</span> interface headers in place to link to the shared library. These commands install the headers.

<span class="command"><strong>ln -sfvn ghostscript /usr/include/ps</strong></span>: Some packages expect to find the interface headers in an alternate location.

<span class="command"><strong>mv -v /usr/share/doc/ghostscript/10.07.1 /usr/share/doc/ghostscript-10.07.1</strong></span>: This moves the documentation to where it is expected to be found.

<code class="option">--disable-cups</code>: This option will save a tiny amount of space by not linking <span class="command"><strong>gs</strong></span> and <code class="filename">libgs.so</code> to the <a class="xref" href="cups.md" title="Cups-2.4.19">Cups-2.4.19</a> libraries if you have installed those.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">dvipdf, eps2eps, gs, gsbj, gsc (from soinstall), gsdj, gsdj500, gslj, gslp, gsnd, gsx (from soinstall), lprsetup.sh, pdf2dsc, pdf2ps, pf2afm, pfbtopfa, pphs, printafm, ps2ascii, ps2epsi, ps2pdf, ps2pdf12, ps2pdf13, ps2pdf14, ps2pdfwr, ps2ps, ps2ps2, and unix-lpr.sh</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgs.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/ghostscript, /usr/share/ghostscript, and /usr/share/doc/ghostscript-10.07.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gplgs-prog"></a><span class="command"><span class="term"><strong>gs</strong></span></span>    is an interpreter for Adobe Systems' PostScript(tm) and Portable Document Format (PDF)
  <a id="libgs.so"></a><span class="term"><code class="filename">libgs.so</code></span>   provides <span class="application">Ghostscript</span> functionality to other programs, such as <span class="application">GSView</span>, <span class="application">ImageMagick</span>, and <span class="application">libspectre</span>
  --------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>

<span class="application">Ghostscript</span> provides many different scripts used to convert PostScript, PDF, and other formats. Please refer to the HTML documentation or the man pages for information about the capabilities provided.
</div>
</div>

<div class="navfooter">
-   [Prev](cups-filters.md "cups-filters-2.0.1")

    cups-filters-2.0.1

-   [Next](gutenprint.md "Gutenprint-5.3.5")

    Gutenprint-5.3.5

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
