<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libgxps.md "libgxps-0.3.2")

    libgxps-0.3.2

-   [Next](libjpeg.md "libjpeg-turbo-3.1.4.1")

    libjpeg-turbo-3.1.4.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libheif-1.23.0 {#libheif-1.23.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libheif {#introduction-to-libheif}

The <span class="application">libheif</span> package is an HEIF and AVIF file format decoder and encoder.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/strukturag/libheif/releases/download/v1.23.0/libheif-1.23.0.tar.gz">https://github.com/strukturag/libheif/releases/download/v1.23.0/libheif-1.23.0.tar.gz</a>

-   Download MD5 sum: 4da401e36c861c5adfe61225e0dcdd61

-   Download size: 2.0 MB

-   Estimated disk space required: 48 MB (with tests)

-   Estimated build time: 0.6 SBU (with tests, parallelism=4)
</div>

### libheif Dependencies

#### Recommended

<a class="xref" href="../multimedia/libaom.md" title="libaom-3.14.1">libaom-3.14.1</a>, <a class="xref" href="../multimedia/libde265.md" title="libde265-1.1.0">libde265-1.1.0</a>, and <a class="xref" href="../multimedia/x265.md" title="x265-4.2">x265-4.2</a>

#### Optional

<a class="xref" href="brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>, <a class="xref" href="../multimedia/dav1d.md" title="dav1d-1.5.3">dav1d-1.5.3</a>, <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, <a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a>, <a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="openjpeg2.md" title="OpenJPEG-2.5.4">OpenJPEG-2.5.4</a>, <a class="xref" href="../multimedia/sdl2.md" title="sdl2-compat-2.32.68">sdl2-compat-2.32.68</a>, <a class="xref" href="../multimedia/svt-av1.md" title="SVT-AV1-4.1.0">SVT-AV1-4.1.0</a>, <a class="xref" href="../multimedia/x264.md" title="x264-20250815">x264-20250815</a>, <a class="ulink" href="https://github.com/ultravideo/kvazaar">kvaaar</a>, <a class="ulink" href="https://www.openh264.org/">openh264</a>, <a class="ulink" href="https://github.com/aous72/OpenJPH">openjph</a>, <a class="ulink" href="https://github.com/ultravideo/uvg266">uvg266</a>, <a class="ulink" href="https://github.com/fraunhoferhhi/vvdec">vvdec</a>, <a class="ulink" href="https://github.com/fraunhoferhhi/vvenc">vvenc</a>, and <a class="ulink" href="https://github.com/xiph/rav1e">rav1e</a>
</div>

<div class="installation" lang="en">
## Installation of libheif {#installation-of-libheif}

Install <span class="application">libheif</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D WITH_GDK_PIXBUF=OFF       \
      -D WITH_OpenH264_DECODER=OFF \
      -G Ninja ..                  &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D WITH_GDK_PIXBUF=OFF`*: This option disables building the gdk-pixbuf loader, as <a class="xref" href="../x/gdk-pixbuf.md" title="gdk-pixbuf-2.44.6">gdk-pixbuf-2.44.6</a> is supposed to use this package via <a class="xref" href="glycin.md" title="glycin-2.1.1">glycin-2.1.1</a> instead of the loader.

<code class="option">-D WITH_DAV1D=ON</code>: This option allows using <a class="xref" href="../multimedia/dav1d.md" title="dav1d-1.5.3">dav1d-1.5.3</a> to decode AV1 data in AVIF files.

<code class="option">-D WITH_FFMPEG_DECODER=ON</code>: This option allows using <a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a> to decode H.265 data in HEIC files.

<code class="option">-D WITH_JPEG_ENCODER=ON -D WITH_JPEG_DECODER=ON</code>: These options allow using <a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a> to encode and decode HEIF files with JPEG data.

<code class="option">-D WITH_OpenJPEG_ENCODER=ON -D WITH_OpenJPEG_DECODER=ON</code>: These options allow using <a class="xref" href="openjpeg2.md" title="OpenJPEG-2.5.4">OpenJPEG-2.5.4</a> to encode and decode HEIF files with JPEG 2000 data.

<code class="option">-D WITH_SvtEnc=ON</code>: This option allows using <a class="xref" href="../multimedia/svt-av1.md" title="SVT-AV1-4.1.0">SVT-AV1-4.1.0</a> to encode AV1 data for AVIF files.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">heif-convert (symlink to heif-dec), heif-dec, heif-enc, heif-info, heif-thumbnailer (if libpng is available), and heif-view (if SDL2 is available)</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libheif.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/libheif, /usr/lib/libheif, and /usr/lib/cmake/libheif</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
  <a id="heif-dec"></a><span class="command"><span class="term"><strong>heif-dec</strong></span></span>                   decodes a HEIC/HEIF image
  <a id="heif-enc"></a><span class="command"><span class="term"><strong>heif-enc</strong></span></span>                   converts an image to HEIC/HEIF
  <a id="heif-info"></a><span class="command"><span class="term"><strong>heif-info</strong></span></span>                 shows information about a HEIC/HEIF file
  <a id="heif-thumbnailer"></a><span class="command"><span class="term"><strong>heif-thumbnailer</strong></span></span>   creates thumbnails from HEIC/HEIF files
  <a id="heif-view"></a><span class="command"><span class="term"><strong>heif-view</strong></span></span>                 displays an image in HEIC/HEIF format with SDL2
  <a id="libheif-lib"></a><span class="term"><code class="filename">libheif.so</code></span>                 is an ISO/IEC 23008-12:2017 HEIF and AVIF (AV1 Image File Format) file format decoder and encoder
  ---------------------------------------------------------------- ---------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libgxps.md "libgxps-0.3.2")

    libgxps-0.3.2

-   [Next](libjpeg.md "libjpeg-turbo-3.1.4.1")

    libjpeg-turbo-3.1.4.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
