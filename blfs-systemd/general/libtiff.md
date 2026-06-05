<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libspiro.md "Libspiro-20220722")

    Libspiro-20220722

-   [Next](libwebp.md "libwebp-1.6.0")

    libwebp-1.6.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libtiff-4.7.1 {#libtiff-4.7.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libtiff {#introduction-to-libtiff}

The <span class="application">libtiff</span> package contains the TIFF libraries and associated utilities. The libraries are used by many programs for reading and writing TIFF files and the utilities are used for general work with TIFF files.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.osgeo.org/libtiff/tiff-4.7.1.tar.gz">https://download.osgeo.org/libtiff/tiff-4.7.1.tar.gz</a>

-   Download MD5 sum: f1044dd3b4466cc53464210148e08146

-   Download size: 3.9 MB

-   Estimated disk space required: 50 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### libtiff Dependencies

#### Recommended

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Optional

<a class="xref" href="../x/freeglut.md" title="Freeglut-3.8.0">Freeglut-3.8.0</a> (required for <span class="command"><strong>tiffgt</strong></span>), <a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>, <a class="xref" href="libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="ulink" href="https://www.cl.cam.ac.uk/~mgk25/jbigkit/">JBIG-KIT</a>, and <a class="ulink" href="https://www.osgeo.org/projects/lerc-limited-error-raster-compression/">LERC</a>
</div>

<div class="installation" lang="en">
## Installation of libtiff {#installation-of-libtiff}

Install <span class="application">libtiff</span> by running the following commands:

```bash
mkdir -p libtiff-build &&
cd       libtiff-build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -W no-dev -G Ninja ..
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&
mv -v /usr/share/doc/{tiff,libtiff-4.7.1}
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fax2ps, fax2tiff, pal2rgb, ppm2tiff, raw2tiff, tiff2bw, tiff2pdf, tiff2ps, tiff2rgba, tiffcmp, tiffcp, tiffcrop, tiffdither, tiffdump, tiffgt, tiffinfo, tiffmedian, tiffset, and tiffsplit</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libtiff.so and libtiffxx.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/cmake/tiff and /usr/share/doc/libtiff-4.7.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
  <a id="fax2ps"></a><span class="command"><span class="term"><strong>fax2ps</strong></span></span>           converts a TIFF facsimile to compressed PostScript file
  <a id="fax2tiff"></a><span class="command"><span class="term"><strong>fax2tiff</strong></span></span>       creates a TIFF Class F fax file from raw fax data
  <a id="pal2rgb"></a><span class="command"><span class="term"><strong>pal2rgb</strong></span></span>         converts a palette color TIFF image to a full color image
  <a id="ppm2tiff"></a><span class="command"><span class="term"><strong>ppm2tiff</strong></span></span>       creates a TIFF file from a PPM image file
  <a id="raw2tiff"></a><span class="command"><span class="term"><strong>raw2tiff</strong></span></span>       converts a raw byte sequence into TIFF
  <a id="tiff2bw"></a><span class="command"><span class="term"><strong>tiff2bw</strong></span></span>         converts a color TIFF image to grayscale
  <a id="tiff2pdf"></a><span class="command"><span class="term"><strong>tiff2pdf</strong></span></span>       converts a TIFF image to a PDF document
  <a id="tiff2ps"></a><span class="command"><span class="term"><strong>tiff2ps</strong></span></span>         converts a TIFF image to a PostScript file
  <a id="tiff2rgba"></a><span class="command"><span class="term"><strong>tiff2rgba</strong></span></span>     converts a wide variety of TIFF images into an RGBA TIFF image
  <a id="tiffcmp"></a><span class="command"><span class="term"><strong>tiffcmp</strong></span></span>         compares two TIFF files
  <a id="tiffcp"></a><span class="command"><span class="term"><strong>tiffcp</strong></span></span>           copies (and possibly converts) a TIFF file
  <a id="tiffcrop"></a><span class="command"><span class="term"><strong>tiffcrop</strong></span></span>       selects, copies, crops, converts, extracts and/or processes one or more TIFF files
  <a id="tiffdither"></a><span class="command"><span class="term"><strong>tiffdither</strong></span></span>   converts a grayscale image to bilevel using dithering
  <a id="tiffdump"></a><span class="command"><span class="term"><strong>tiffdump</strong></span></span>       prints verbatim information about TIFF files
  <a id="tiffgt"></a><span class="command"><span class="term"><strong>tiffgt</strong></span></span>           displays an image stored in a TIFF file
  <a id="tiffinfo"></a><span class="command"><span class="term"><strong>tiffinfo</strong></span></span>       prints information about TIFF files
  <a id="tiffmedian"></a><span class="command"><span class="term"><strong>tiffmedian</strong></span></span>   applies the median cut algorithm to data in a TIFF file
  <a id="tiffset"></a><span class="command"><span class="term"><strong>tiffset</strong></span></span>         sets the value of a TIFF header to a specified value
  <a id="tiffsplit"></a><span class="command"><span class="term"><strong>tiffsplit</strong></span></span>     splits a multi-image TIFF into single-image TIFF files
  <a id="libtiff-lib"></a><span class="term"><code class="filename">libtiff.so</code></span>     contains the API functions used by the <span class="application">libtiff</span> programs as well as other programs to read and write TIFF files
  <a id="libtiffxx"></a><span class="term"><code class="filename">libtiffxx.so</code></span>     contains the C++ API functions used by programs to read and write TIFF files
  ---------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libspiro.md "Libspiro-20220722")

    Libspiro-20220722

-   [Next](libwebp.md "libwebp-1.6.0")

    libwebp-1.6.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
