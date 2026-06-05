::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](ibus.md "ibus-1.5.34"){accesskey="p"}

    ibus-1.5.34

-   [Next](intltool.md "Intltool-0.51.0"){accesskey="n"}

    Intltool-0.51.0

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#imagemagick}ImageMagick-7.1.2-13 {#imagemagick-7.1.2-13 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to ImageMagick {#introduction-to-imagemagick .sect2}

[ImageMagick]{.application} is a collection of tools and libraries to read, write, and manipulate an image in various image formats. Image processing operations are available from the command line. Bindings for Perl and C++ are also available.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.imagemagick.org/archive/releases/ImageMagick-7.1.2-13.tar.xz](https://www.imagemagick.org/archive/releases/ImageMagick-7.1.2-13.tar.xz){.ulink}

-   Download MD5 sum: a28a5d65a58fce9c24e8cf4b47cb5c5c

-   Download size: 10 MB

-   Estimated disk space required: 179 MB, 45 MB installed (with typical dependencies; add 26 MB for checks)

-   Estimated build time: 1.6 SBU (with typical dependencies; add 0.5 SBU for checks, both using parallelism=4)
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The [ImageMagick]{.application} source releases are updated frequently and the version shown above may no longer be available from the download locations. You can download a more recent version and use the existing BLFS instructions to install it. Chances are that it will work just fine, but this has not been tested by the BLFS team. If the package version shown above is not available from the locations shown above, you can download it from the BLFS package server at Oregon State University: [https://ftp.osuosl.org/pub/blfs/conglomeration/ImageMagick/](https://ftp.osuosl.org/pub/blfs/conglomeration/ImageMagick/){.ulink}.
:::

### ImageMagick Dependencies

#### Recommended

[Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}

The optional dependencies listed below should be installed if you need support for the specific format or the conversion tool the dependency provides. Additional information about the dependencies can be found in the `Install-unix.txt`{.filename} file located in the source tree as well as issuing the [**./configure --help**]{.command} command. A summary of this information, as well as some additional notes can be viewed on-line at [https://imagemagick.org/script/install-source.php](https://imagemagick.org/script/install-source.php){.ulink}.

#### Optional System Utilities

[7zip-26.01](7zip.md "7zip-26.01"){.xref} (LZMA), Clang from [LLVM-22.1.0](llvm.md "LLVM-22.1.0"){.xref}, [Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref}, [fftw-3.3.11](fftw.md "fftw-3.3.11"){.xref}, [SANE-1.4.0](../pst/sane.md "SANE-1.4.0"){.xref}, [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref}, [xdg-utils-1.2.1](../xsoft/xdg-utils.md "xdg-utils-1.2.1"){.xref}, [xterm-410](../x/xterm.md "xterm-410"){.xref}, [Dmalloc](https://dmalloc.com/){.ulink}, [Electric Fence](https://linux.softpedia.com/get/Programming/Debuggers/Electric-Fence-3305.shtml/){.ulink} and [PGP](https://www.openpgp.org/about/){.ulink} or [GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref} (you'll have to do some hacking to use [GnuPG]{.application}), [Profiles](https://imagemagick.org/archive/delegates/){.ulink}

#### Optional Graphics Libraries

[jasper-4.2.9](jasper.md "jasper-4.2.9"){.xref}, [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}, [libgxps-0.3.2](libgxps.md "libgxps-0.3.2"){.xref}, [libheif-1.23.0](libheif.md "libheif-1.23.0"){.xref}, [libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libjxl-0.11.2](libjxl.md "libjxl-0.11.2"){.xref}, [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}, [libraw-0.22.1](libraw.md "libraw-0.22.1"){.xref} (for dng files, needs the thread-safe libraw_r), [librsvg-2.62.3](librsvg.md "librsvg-2.62.3"){.xref}, [libtiff-4.7.1](libtiff.md "libtiff-4.7.1"){.xref}, [libwebp-1.6.0](libwebp.md "libwebp-1.6.0"){.xref}, [OpenJPEG-2.5.4](openjpeg2.md "OpenJPEG-2.5.4"){.xref}, [Pango-1.57.1](../x/pango.md "Pango-1.57.1"){.xref}, [DjVuLibre](https://djvu.sourceforge.net/){.ulink}, [FlashPIX (libfpx)](https://imagemagick.org/archive/delegates/){.ulink}, [FLIF](https://github.com/FLIF-hub/FLIF/releases){.ulink}, [JBIG-KIT](https://www.cl.cam.ac.uk/~mgk25/jbigkit/){.ulink}, [libraqm](https://github.com/HOST-Oman/libraqm/){.ulink}, [Liquid Rescale](http://liblqr.wikidot.com/en:download-page){.ulink}, [OpenEXR](https://www.openexr.com/){.ulink}, and [RALCGM](http://www.agocg.ac.uk/train/cgm/ralcgm.htm){.ulink} (or [ralcgm](http://www.mcmurchy.com/ralcgm/ralcgm-3.51.tar.gz){.ulink})

#### Optional Graphics Utilities

[Dejavu fonts](../x/TTF-and-OTF-fonts.md#dejavu-fonts "DejaVu fonts"){.xref}, [ghostscript-10.07.1](../pst/gs.md "ghostscript-10.07.1"){.xref}, [Gimp-3.2.4](../xsoft/gimp.md "Gimp-3.2.4"){.xref}, [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref}, [Inkscape-1.4.4](../xsoft/inkscape.md "Inkscape-1.4.4"){.xref}, [Blender](https://www.blender.org/){.ulink}, [corefonts](https://corefonts.sourceforge.net/){.ulink}, [GhostPCL](https://ghostscript.com/releases/gpcldnld.md){.ulink}, [Gnuplot](http://www.gnuplot.info/){.ulink}, [POV-Ray](https://www.povray.org/){.ulink}, and [Radiance](https://www.radiance-online.org/){.ulink}

#### Optional Conversion Tools

[Enscript-1.6.6](../pst/enscript.md "Enscript-1.6.6"){.xref}, [Potrace-1.16](potrace.md "Potrace-1.16"){.xref}, [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref}) [AutoTrace](https://autotrace.sourceforge.net/){.ulink}, [GeoExpress Command Line Utilities, AKA MrSID Utilities (binary package)](https://www.extensis.com/){.ulink}, [hp2xx](https://www.gnu.org/software/hp2xx/){.ulink}, [libwmf](https://wvware.sourceforge.net/){.ulink}, [UniConvertor](https://sk1project.net/uc2/){.ulink}, and [Utah Raster Toolkit](https://www2.cs.utah.edu/gdc/projects/urt/index.md){.ulink} (or [URT-3.1b](http://www.mcmurchy.com/urt/urt-3.1b.tar.gz){.ulink})
::::::

::: {.installation lang="en"}
## Installation of ImageMagick {#installation-of-imagemagick .sect2}

Install [ImageMagick]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --enable-hdri     \
            --with-modules    \
            --with-perl       \
            --disable-static  &&
make
```

Now, as the `root`{.systemitem} user:

``` root
make DOCUMENTATION_PATH=/usr/share/doc/imagemagick-7.1.2 install
```

To test the installation, issue: [**make check**]{.command}. Note that the EPS, PS, and PDF tests require a working [Ghostscript]{.application}. One test in 'make check' needs [“[Helvetica]{.quote}”]{.quote} from [“[Ghostscript Standard Fonts,]{.quote}”]{.quote} which are optionally installed in [ghostscript-10.07.1](../pst/gs.md "ghostscript-10.07.1"){.xref} - that test, and one other, might fail, but all the validation can still pass.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-hdri`*: Enables building of a high dynamic range version of ImageMagick.

*`--with-modules`*: Enables support for dynamically loadable modules.

*`--with-perl`*: Enables building and installing of PerlMagick.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--with-fftw`{.option}: Enables support for the [FFTW]{.application} shared library.

`--with-rsvg`{.option}: Enables support for the [librsvg]{.application} library.

`--with-autotrace`{.option}: Enables support for the [Autotrace]{.application} library.

`--with-wmf`{.option}: Enables support for the [libwmf]{.application} library.

`--with-gvc`{.option}: Enables support for [GraphViz]{.application}.

`--with-security-policy=open|limited|secure|websafe`{.option}: If you wish to enforce a policy other than the default 'open' see `www/security-policy.html`{.filename} in the source for details.

`--with-windows-font-dir= `{.option}*`<Some/Directory>`*: This option specifies the directory where the Windows CoreFonts are installed.

`--with-dejavu-font-dir= `{.option}*`<Some/Directory>`*: This option specifies the directory where the DejaVu fonts are installed.

The options and parameters listed above are the only ones you should have to pass to the [**configure**]{.command} script to activate all the delegate dependencies. All other dependencies will be automatically detected and utilized in the build if they are installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [magick, Magick++-config, MagickCore-config, and MagickWand-config. (animate, compare, composite, conjure, convert, display, identify, import, magick-script, mogrify, montage, and stream are all symbolic links to magick)]{.segbody}
:::

::: seg
**Installed Libraries:** [libMagickCore-7.Q16HDRI.so, libMagickWand-7.Q16HDRI.so and libMagick++-7.Q16HDRI.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/ImageMagick-7, /usr/include/ImageMagick-7, /usr/lib/ImageMagick-7.1.2, /usr/lib/perl5/site_perl/5.42/{,auto}/Image/Magick, /usr/share/doc/ImageMagick-7.1.2, and /usr/share/ImageMagick-7]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#animate}[[**animate**]{.command}]{.term}                                   animates a sequence of images
  []{#compare}[[**compare**]{.command}]{.term}                                   compares an image to a reconstructed image
  []{#composite}[[**composite**]{.command}]{.term}                               composites various images into the given base image
  []{#conjure}[[**conjure**]{.command}]{.term}                                   processes a MSL script to create an image
  []{#convert}[[**convert**]{.command}]{.term}                                   converts image(s) from one format to another
  []{#display}[[**display**]{.command}]{.term}                                   displays an image
  []{#identify}[[**identify**]{.command}]{.term}                                 describes the format and characteristics of an image file
  []{#import}[[**import**]{.command}]{.term}                                     captures an X window
  []{#magick}[[**magick**]{.command}]{.term}                                     converts between image formats as well as resizes an image, blurs, crops, despeckles, dithers, draws on, flips, joins, re-samples, and much more
  []{#magick-config}[[**Magick{++,Core,Wand}-config**]{.command}]{.term}         shows information about the installed versions of the [ImageMagick]{.application} libraries
  []{#mogrify}[[**mogrify**]{.command}]{.term}                                   transforms an image
  []{#montage}[[**montage**]{.command}]{.term}                                   composites various images into a new image
  []{#stream}[[**stream**]{.command}]{.term}                                     streams one or more pixel components of an image or portion of the image to your choice of storage formats
  []{#perlmagick}[`Image::Magick`{.filename}]{.term}                             allows for reading, manipulating, and writing a large number of image file formats using the [ImageMagick]{.application} library. Run [**make**]{.command} in the `PerlMagick/demo`{.filename} directory of the package source tree after the package is installed to see a nice demo of the module's capabilities
  []{#libMagickCore-7.Q16HDRI}[`libMagickCore-7.Q16HDRI.so`{.filename}]{.term}   provides the C API for ImageMagick
  []{#libMagickWand-7.Q16HDRI}[`libMagickWand-7.Q16HDRI.so`{.filename}]{.term}   is the recommended C API for ImageMagick. Unlike the MagickCore API it uses only a few opaque types
  []{#libMagickpp-7.Q16HDRI}[`libMagick++-7.Q16HDRI.so`{.filename}]{.term}       provides the C++ API for ImageMagick
  ------------------------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](ibus.md "ibus-1.5.34"){accesskey="p"}

    ibus-1.5.34

-   [Next](intltool.md "Intltool-0.51.0"){accesskey="n"}

    Intltool-0.51.0

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
