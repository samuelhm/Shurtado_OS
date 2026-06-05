<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](opencv.md "opencv-4.13.0")

    opencv-4.13.0

-   [Next](pixman.md "Pixman-0.46.4")

    Pixman-0.46.4

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# OpenJPEG-2.5.4 {#openjpeg-2.5.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to OpenJPEG {#introduction-to-openjpeg}

<span class="application">OpenJPEG</span> is an open-source implementation of the JPEG-2000 standard. OpenJPEG fully respects the JPEG-2000 specifications and can compress/decompress lossless 16-bit images.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/uclouvain/openjpeg/archive/v2.5.4/openjpeg-2.5.4.tar.gz">https://github.com/uclouvain/openjpeg/archive/v2.5.4/openjpeg-2.5.4.tar.gz</a>

-   Download MD5 sum: 6160de075bb5191e482bc0f024b375e4

-   Download size: 2.1 MB

-   Estimated disk space required: 16 MB (add 1.7 GB for tests)

-   Estimated build time: 0.2 SBU (add 1.1 SBU for tests)
</div>

### OpenJPEG Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Optional

<a class="xref" href="git.md" title="Git-2.54.0">git-2.54.0</a> (for tests), <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, and <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (to build the API documentation)
</div>

<div class="installation" lang="en">
## Installation of OpenJPEG {#installation-of-openjpeg}

Install <span class="application">OpenJPEG</span> by running the following commands:

```bash
mkdir -v build &&
cd       build &&

cmake -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_PREFIX=/usr \
      -D BUILD_STATIC_LIBS=OFF ..  &&
make
```

If you wish to run the tests, some additional files are required. Download these files and run the tests using the following commands, but note that 8 tests are known to fail:

```bash
git clone https://github.com/uclouvain/openjpeg-data.git --depth 1 &&
OPJ_DATA_ROOT=$PWD/openjpeg-data cmake -D BUILD_TESTING=ON ..      &&
make                                                               &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
cp -rv ../doc/man -T /usr/share/man
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">opj_compress, opj_decompress, and opj_dump</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libopenjp2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/openjpeg-2.5 and /usr/lib/openjpeg-2.5</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ ------------------------------------------------------------
  <a id="opj_compress"></a><span class="command"><span class="term"><strong>opj_compress</strong></span></span>       converts various image formats to the jpeg2000 format
  <a id="opj_decompress"></a><span class="command"><span class="term"><strong>opj_decompress</strong></span></span>   converts jpeg2000 images to other image types
  <a id="opj_dump"></a><span class="command"><span class="term"><strong>opj_dump</strong></span></span>               reads in a jpeg2000 image and dumps the contents to stdout
  ------------------------------------------------------------ ------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](opencv.md "opencv-4.13.0")

    opencv-4.13.0

-   [Next](pixman.md "Pixman-0.46.4")

    Pixman-0.46.4

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
