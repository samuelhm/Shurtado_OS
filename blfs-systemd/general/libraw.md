::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libqrencode.md "libqrencode-4.1.1"){accesskey="p"}

    libqrencode-4.1.1

-   [Next](librsvg.md "librsvg-2.62.3"){accesskey="n"}

    librsvg-2.62.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libraw}libraw-0.22.1 {#libraw-0.22.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libraw {#introduction-to-libraw .sect2}

[Libraw]{.application} is a library for reading RAW files obtained from digital cameras (CRW/CR2, NEF, RAF, DNG, and others).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.libraw.org/data/LibRaw-0.22.1.tar.gz](https://www.libraw.org/data/LibRaw-0.22.1.tar.gz){.ulink}

-   Download MD5 sum: ddd10d171c3517bb5218c1a61ac64ff7

-   Download size: 1.6 MB

-   Estimated disk space required: 42 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
:::

### libraw Dependencies

#### Recommended

[libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [jasper-4.2.9](jasper.md "jasper-4.2.9"){.xref}, and [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libraw {#installation-of-libraw .sect2}

Install [libraw]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --enable-jpeg    \
            --enable-jasper  \
            --enable-lcms    \
            --disable-static \
            --docdir=/usr/share/doc/libraw-0.22.1 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-jpeg`*: This switch enables support for JPEG images. Remove it if you don't have [libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref} installed.

*`--enable-jasper`*: This switch enables support for JPEG2000 images. Remove it if you don't have [jasper-4.2.9](jasper.md "jasper-4.2.9"){.xref} installed.

*`--enable-lcms`*: This switch enables support for color management. Remove it if you don't have [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref} installed.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

:::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

All of the installed programs are examples of using libraw.
:::

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [4channels, dcraw_emu, dcraw_half, half_mt, mem_image, multirender_test, postprocessing_benchmark, raw-identify, rawtextdump, simple_dcraw, and unprocessed_raw]{.segbody}
:::

::: seg
**Installed Library:** [libraw.so and libraw_r.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libraw and /usr/share/doc/libraw-0.22.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------
  []{#_4channels}[[**4channels**]{.command}]{.term}                                generates four TIFF files from RAW data, with one file per channel
  []{#dcraw_half}[[**dcraw_half**]{.command}]{.term}                               emulates running "dcraw -h" (see [DCRAW manpage](https://linux.die.net/man/1/dcraw){.ulink})
  []{#mem_image}[[**mem_image**]{.command}]{.term}                                 emulates running "dcraw \[-4\] \[-6\] \[-e\]" (see [DCRAW manpage](https://linux.die.net/man/1/dcraw){.ulink})
  []{#postprocessing_benchmark}[[**postprocessing_benchmark**]{.command}]{.term}   creates eight different renderings from one source file. The first and fourth one should be identical
  []{#simple_dcraw}[[**simple_dcraw**]{.command}]{.term}                           emulates running "dcraw \[-D\] \[-T\] \[-v\] \[-e\] \[-4\]" (see [DCRAW manpage](https://linux.die.net/man/1/dcraw){.ulink})
  []{#dcraw_emu}[[**dcraw_emu**]{.command}]{.term}                                 is an almost complete dcraw emulator (see [DCRAW manpage](https://linux.die.net/man/1/dcraw){.ulink})
  []{#half_mt}[[**half_mt**]{.command}]{.term}                                     emulates running "dcraw -h \[-w\] \[-a\] \[-v\]" (see [DCRAW manpage](https://linux.die.net/man/1/dcraw){.ulink})
  []{#multirender_test}[[**multirender_test**]{.command}]{.term}                   creates eight different renderings from one source file. The first and fourth one should be identical
  []{#raw-identify}[[**raw-identify**]{.command}]{.term}                           emulates running "dcraw -i \[-v\]" (see [DCRAW manpage](https://linux.die.net/man/1/dcraw){.ulink})
  []{#rawtextdump}[[**rawtextdump**]{.command}]{.term}                             dumps a (small) selection of a RAW file as tab-separated text file
  []{#unprocessed_raw}[[**unprocessed_raw**]{.command}]{.term}                     generates an unprocessed raw image (with masked pixels and without black subtraction)
  []{#libraw-lib}[`libraw.so`{.filename}]{.term}                                   contains functions used for parsing, editing, and saving RAW image data.
  -------------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------
:::
::::::::::
::::::::::::::::

::: navfooter
-   [Prev](libqrencode.md "libqrencode-4.1.1"){accesskey="p"}

    libqrencode-4.1.1

-   [Next](librsvg.md "librsvg-2.62.3"){accesskey="n"}

    librsvg-2.62.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
