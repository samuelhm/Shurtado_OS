<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](ibus.md "ibus-1.5.34")

    ibus-1.5.34

-   [Next](intltool.md "Intltool-0.51.0")

    Intltool-0.51.0

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ImageMagick-7.1.2-13 {#imagemagick-7.1.2-13}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ImageMagick {#introduction-to-imagemagick}

<span class="application">ImageMagick</span> is a collection of tools and libraries to read, write, and manipulate an image in various image formats. Image processing operations are available from the command line. Bindings for Perl and C++ are also available.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.imagemagick.org/archive/releases/ImageMagick-7.1.2-13.tar.xz">https://www.imagemagick.org/archive/releases/ImageMagick-7.1.2-13.tar.xz</a>

-   Download MD5 sum: a28a5d65a58fce9c24e8cf4b47cb5c5c

-   Download size: 10 MB

-   Estimated disk space required: 179 MB, 45 MB installed (with typical dependencies; add 26 MB for checks)

-   Estimated build time: 1.6 SBU (with typical dependencies; add 0.5 SBU for checks, both using parallelism=4)
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The <span class="application">ImageMagick</span> source releases are updated frequently and the version shown above may no longer be available from the download locations. You can download a more recent version and use the existing BLFS instructions to install it. Chances are that it will work just fine, but this has not been tested by the BLFS team. If the package version shown above is not available from the locations shown above, you can download it from the BLFS package server at Oregon State University: <a class="ulink" href="https://ftp.osuosl.org/pub/blfs/conglomeration/ImageMagick/">https://ftp.osuosl.org/pub/blfs/conglomeration/ImageMagick/</a>.
</div>

### ImageMagick Dependencies

#### Recommended

<a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

The optional dependencies listed below should be installed if you need support for the specific format or the conversion tool the dependency provides. Additional information about the dependencies can be found in the <code class="filename">Install-unix.txt</code> file located in the source tree as well as issuing the <span class="command"><strong>./configure --help</strong></span> command. A summary of this information, as well as some additional notes can be viewed on-line at <a class="ulink" href="https://imagemagick.org/script/install-source.php">https://imagemagick.org/script/install-source.php</a>.

#### Optional System Utilities

<a class="xref" href="7zip.md" title="7zip-26.01">7zip-26.01</a> (LZMA), Clang from <a class="xref" href="llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a>, <a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, <a class="xref" href="fftw.md" title="fftw-3.3.11">fftw-3.3.11</a>, <a class="xref" href="../pst/sane.md" title="SANE-1.4.0">SANE-1.4.0</a>, <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a>, <a class="xref" href="../xsoft/xdg-utils.md" title="xdg-utils-1.2.1">xdg-utils-1.2.1</a>, <a class="xref" href="../x/xterm.md" title="xterm-410">xterm-410</a>, <a class="ulink" href="https://dmalloc.com/">Dmalloc</a>, <a class="ulink" href="https://linux.softpedia.com/get/Programming/Debuggers/Electric-Fence-3305.shtml/">Electric Fence</a> and <a class="ulink" href="https://www.openpgp.org/about/">PGP</a> or <a class="xref" href="../postlfs/gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a> (you'll have to do some hacking to use <span class="application">GnuPG</span>), <a class="ulink" href="https://imagemagick.org/archive/delegates/">Profiles</a>

#### Optional Graphics Libraries

<a class="xref" href="jasper.md" title="jasper-4.2.9">jasper-4.2.9</a>, <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="libgxps.md" title="libgxps-0.3.2">libgxps-0.3.2</a>, <a class="xref" href="libheif.md" title="libheif-1.23.0">libheif-1.23.0</a>, <a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="libjxl.md" title="libjxl-0.11.2">libjxl-0.11.2</a>, <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="libraw.md" title="libraw-0.22.1">libraw-0.22.1</a> (for dng files, needs the thread-safe libraw_r), <a class="xref" href="librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, <a class="xref" href="libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="openjpeg2.md" title="OpenJPEG-2.5.4">OpenJPEG-2.5.4</a>, <a class="xref" href="../x/pango.md" title="Pango-1.57.1">Pango-1.57.1</a>, <a class="ulink" href="https://djvu.sourceforge.net/">DjVuLibre</a>, <a class="ulink" href="https://imagemagick.org/archive/delegates/">FlashPIX (libfpx)</a>, <a class="ulink" href="https://github.com/FLIF-hub/FLIF/releases">FLIF</a>, <a class="ulink" href="https://www.cl.cam.ac.uk/~mgk25/jbigkit/">JBIG-KIT</a>, <a class="ulink" href="https://github.com/HOST-Oman/libraqm/">libraqm</a>, <a class="ulink" href="http://liblqr.wikidot.com/en:download-page">Liquid Rescale</a>, <a class="ulink" href="https://www.openexr.com/">OpenEXR</a>, and <a class="ulink" href="http://www.agocg.ac.uk/train/cgm/ralcgm.htm">RALCGM</a> (or <a class="ulink" href="http://www.mcmurchy.com/ralcgm/ralcgm-3.51.tar.gz">ralcgm</a>)

#### Optional Graphics Utilities

<a class="xref" href="../x/TTF-and-OTF-fonts.md#dejavu-fonts" title="DejaVu fonts">Dejavu fonts</a>, <a class="xref" href="../pst/gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a>, <a class="xref" href="../xsoft/gimp.md" title="Gimp-3.2.4">Gimp-3.2.4</a>, <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, <a class="xref" href="../xsoft/inkscape.md" title="Inkscape-1.4.4">Inkscape-1.4.4</a>, <a class="ulink" href="https://www.blender.org/">Blender</a>, <a class="ulink" href="https://corefonts.sourceforge.net/">corefonts</a>, <a class="ulink" href="https://ghostscript.com/releases/gpcldnld.md">GhostPCL</a>, <a class="ulink" href="http://www.gnuplot.info/">Gnuplot</a>, <a class="ulink" href="https://www.povray.org/">POV-Ray</a>, and <a class="ulink" href="https://www.radiance-online.org/">Radiance</a>

#### Optional Conversion Tools

<a class="xref" href="../pst/enscript.md" title="Enscript-1.6.6">Enscript-1.6.6</a>, <a class="xref" href="potrace.md" title="Potrace-1.16">Potrace-1.16</a>, <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>) <a class="ulink" href="https://autotrace.sourceforge.net/">AutoTrace</a>, <a class="ulink" href="https://www.extensis.com/">GeoExpress Command Line Utilities, AKA MrSID Utilities (binary package)</a>, <a class="ulink" href="https://www.gnu.org/software/hp2xx/">hp2xx</a>, <a class="ulink" href="https://wvware.sourceforge.net/">libwmf</a>, <a class="ulink" href="https://sk1project.net/uc2/">UniConvertor</a>, and <a class="ulink" href="https://www2.cs.utah.edu/gdc/projects/urt/index.md">Utah Raster Toolkit</a> (or <a class="ulink" href="http://www.mcmurchy.com/urt/urt-3.1b.tar.gz">URT-3.1b</a>)
</div>

<div class="installation" lang="en">
## Installation of ImageMagick {#installation-of-imagemagick}

Install <span class="application">ImageMagick</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --enable-hdri     \
            --with-modules    \
            --with-perl       \
            --disable-static  &&
make
```

Now, as the <code class="systemitem">root</code> user:

```bash
make DOCUMENTATION_PATH=/usr/share/doc/imagemagick-7.1.2 install
```

To test the installation, issue: <span class="command"><strong>make check</strong></span>. Note that the EPS, PS, and PDF tests require a working <span class="application">Ghostscript</span>. One test in 'make check' needs <span class="quote">“<span class="quote">Helvetica</span>”</span> from <span class="quote">“<span class="quote">Ghostscript Standard Fonts,</span>”</span> which are optionally installed in <a class="xref" href="../pst/gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a> - that test, and one other, might fail, but all the validation can still pass.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-hdri`*: Enables building of a high dynamic range version of ImageMagick.

*`--with-modules`*: Enables support for dynamically loadable modules.

*`--with-perl`*: Enables building and installing of PerlMagick.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--with-fftw</code>: Enables support for the <span class="application">FFTW</span> shared library.

<code class="option">--with-rsvg</code>: Enables support for the <span class="application">librsvg</span> library.

<code class="option">--with-autotrace</code>: Enables support for the <span class="application">Autotrace</span> library.

<code class="option">--with-wmf</code>: Enables support for the <span class="application">libwmf</span> library.

<code class="option">--with-gvc</code>: Enables support for <span class="application">GraphViz</span>.

<code class="option">--with-security-policy=open|limited|secure|websafe</code>: If you wish to enforce a policy other than the default 'open' see <code class="filename">www/security-policy.html</code> in the source for details.

<code class="option">--with-windows-font-dir= </code>*`<Some/Directory>`*: This option specifies the directory where the Windows CoreFonts are installed.

<code class="option">--with-dejavu-font-dir= </code>*`<Some/Directory>`*: This option specifies the directory where the DejaVu fonts are installed.

The options and parameters listed above are the only ones you should have to pass to the <span class="command"><strong>configure</strong></span> script to activate all the delegate dependencies. All other dependencies will be automatically detected and utilized in the build if they are installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">magick, Magick++-config, MagickCore-config, and MagickWand-config. (animate, compare, composite, conjure, convert, display, identify, import, magick-script, mogrify, montage, and stream are all symbolic links to magick)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libMagickCore-7.Q16HDRI.so, libMagickWand-7.Q16HDRI.so and libMagick++-7.Q16HDRI.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/ImageMagick-7, /usr/include/ImageMagick-7, /usr/lib/ImageMagick-7.1.2, /usr/lib/perl5/site_perl/5.42/{,auto}/Image/Magick, /usr/share/doc/ImageMagick-7.1.2, and /usr/share/ImageMagick-7</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="animate"></a><span class="command"><span class="term"><strong>animate</strong></span></span>                                   animates a sequence of images
  <a id="compare"></a><span class="command"><span class="term"><strong>compare</strong></span></span>                                   compares an image to a reconstructed image
  <a id="composite"></a><span class="command"><span class="term"><strong>composite</strong></span></span>                               composites various images into the given base image
  <a id="conjure"></a><span class="command"><span class="term"><strong>conjure</strong></span></span>                                   processes a MSL script to create an image
  <a id="convert"></a><span class="command"><span class="term"><strong>convert</strong></span></span>                                   converts image(s) from one format to another
  <a id="display"></a><span class="command"><span class="term"><strong>display</strong></span></span>                                   displays an image
  <a id="identify"></a><span class="command"><span class="term"><strong>identify</strong></span></span>                                 describes the format and characteristics of an image file
  <a id="import"></a><span class="command"><span class="term"><strong>import</strong></span></span>                                     captures an X window
  <a id="magick"></a><span class="command"><span class="term"><strong>magick</strong></span></span>                                     converts between image formats as well as resizes an image, blurs, crops, despeckles, dithers, draws on, flips, joins, re-samples, and much more
  <a id="magick-config"></a><span class="command"><span class="term"><strong>Magick{++,Core,Wand}-config</strong></span></span>         shows information about the installed versions of the <span class="application">ImageMagick</span> libraries
  <a id="mogrify"></a><span class="command"><span class="term"><strong>mogrify</strong></span></span>                                   transforms an image
  <a id="montage"></a><span class="command"><span class="term"><strong>montage</strong></span></span>                                   composites various images into a new image
  <a id="stream"></a><span class="command"><span class="term"><strong>stream</strong></span></span>                                     streams one or more pixel components of an image or portion of the image to your choice of storage formats
  <a id="perlmagick"></a><span class="term"><code class="filename">Image::Magick</code></span>                             allows for reading, manipulating, and writing a large number of image file formats using the <span class="application">ImageMagick</span> library. Run <span class="command"><strong>make</strong></span> in the <code class="filename">PerlMagick/demo</code> directory of the package source tree after the package is installed to see a nice demo of the module's capabilities
  <a id="libMagickCore-7.Q16HDRI"></a><span class="term"><code class="filename">libMagickCore-7.Q16HDRI.so</code></span>   provides the C API for ImageMagick
  <a id="libMagickWand-7.Q16HDRI"></a><span class="term"><code class="filename">libMagickWand-7.Q16HDRI.so</code></span>   is the recommended C API for ImageMagick. Unlike the MagickCore API it uses only a few opaque types
  <a id="libMagickpp-7.Q16HDRI"></a><span class="term"><code class="filename">libMagick++-7.Q16HDRI.so</code></span>       provides the C++ API for ImageMagick
  ------------------------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ibus.md "ibus-1.5.34")

    ibus-1.5.34

-   [Next](intltool.md "Intltool-0.51.0")

    Intltool-0.51.0

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
