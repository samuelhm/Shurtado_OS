::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libspiro.md "Libspiro-20220722"){accesskey="p"}

    Libspiro-20220722

-   [Next](libwebp.md "libwebp-1.6.0"){accesskey="n"}

    libwebp-1.6.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libtiff}libtiff-4.7.1 {#libtiff-4.7.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libtiff {#introduction-to-libtiff .sect2}

The [libtiff]{.application} package contains the TIFF libraries and associated utilities. The libraries are used by many programs for reading and writing TIFF files and the utilities are used for general work with TIFF files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.osgeo.org/libtiff/tiff-4.7.1.tar.gz](https://download.osgeo.org/libtiff/tiff-4.7.1.tar.gz){.ulink}

-   Download MD5 sum: f1044dd3b4466cc53464210148e08146

-   Download size: 3.9 MB

-   Estimated disk space required: 50 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### libtiff Dependencies

#### Recommended

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Optional

[Freeglut-3.8.0](../x/freeglut.md "Freeglut-3.8.0"){.xref} (required for [**tiffgt**]{.command}), [libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref}, [libwebp-1.6.0](libwebp.md "libwebp-1.6.0"){.xref}, [JBIG-KIT](https://www.cl.cam.ac.uk/~mgk25/jbigkit/){.ulink}, and [LERC](https://www.osgeo.org/projects/lerc-limited-error-raster-compression/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libtiff {#installation-of-libtiff .sect2}

Install [libtiff]{.application} by running the following commands:

``` userinput
mkdir -p libtiff-build &&
cd       libtiff-build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -W no-dev -G Ninja ..
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install &&
mv -v /usr/share/doc/{tiff,libtiff-4.7.1}
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fax2ps, fax2tiff, pal2rgb, ppm2tiff, raw2tiff, tiff2bw, tiff2pdf, tiff2ps, tiff2rgba, tiffcmp, tiffcp, tiffcrop, tiffdither, tiffdump, tiffgt, tiffinfo, tiffmedian, tiffset, and tiffsplit]{.segbody}
:::

::: seg
**Installed Libraries:** [libtiff.so and libtiffxx.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/cmake/tiff and /usr/share/doc/libtiff-4.7.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
  []{#fax2ps}[[**fax2ps**]{.command}]{.term}           converts a TIFF facsimile to compressed PostScript file
  []{#fax2tiff}[[**fax2tiff**]{.command}]{.term}       creates a TIFF Class F fax file from raw fax data
  []{#pal2rgb}[[**pal2rgb**]{.command}]{.term}         converts a palette color TIFF image to a full color image
  []{#ppm2tiff}[[**ppm2tiff**]{.command}]{.term}       creates a TIFF file from a PPM image file
  []{#raw2tiff}[[**raw2tiff**]{.command}]{.term}       converts a raw byte sequence into TIFF
  []{#tiff2bw}[[**tiff2bw**]{.command}]{.term}         converts a color TIFF image to grayscale
  []{#tiff2pdf}[[**tiff2pdf**]{.command}]{.term}       converts a TIFF image to a PDF document
  []{#tiff2ps}[[**tiff2ps**]{.command}]{.term}         converts a TIFF image to a PostScript file
  []{#tiff2rgba}[[**tiff2rgba**]{.command}]{.term}     converts a wide variety of TIFF images into an RGBA TIFF image
  []{#tiffcmp}[[**tiffcmp**]{.command}]{.term}         compares two TIFF files
  []{#tiffcp}[[**tiffcp**]{.command}]{.term}           copies (and possibly converts) a TIFF file
  []{#tiffcrop}[[**tiffcrop**]{.command}]{.term}       selects, copies, crops, converts, extracts and/or processes one or more TIFF files
  []{#tiffdither}[[**tiffdither**]{.command}]{.term}   converts a grayscale image to bilevel using dithering
  []{#tiffdump}[[**tiffdump**]{.command}]{.term}       prints verbatim information about TIFF files
  []{#tiffgt}[[**tiffgt**]{.command}]{.term}           displays an image stored in a TIFF file
  []{#tiffinfo}[[**tiffinfo**]{.command}]{.term}       prints information about TIFF files
  []{#tiffmedian}[[**tiffmedian**]{.command}]{.term}   applies the median cut algorithm to data in a TIFF file
  []{#tiffset}[[**tiffset**]{.command}]{.term}         sets the value of a TIFF header to a specified value
  []{#tiffsplit}[[**tiffsplit**]{.command}]{.term}     splits a multi-image TIFF into single-image TIFF files
  []{#libtiff-lib}[`libtiff.so`{.filename}]{.term}     contains the API functions used by the [libtiff]{.application} programs as well as other programs to read and write TIFF files
  []{#libtiffxx}[`libtiffxx.so`{.filename}]{.term}     contains the C++ API functions used by programs to read and write TIFF files
  ---------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libspiro.md "Libspiro-20220722"){accesskey="p"}

    Libspiro-20220722

-   [Next](libwebp.md "libwebp-1.6.0"){accesskey="n"}

    libwebp-1.6.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
