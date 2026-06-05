::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](jasper.md "jasper-4.2.9"){accesskey="p"}

    jasper-4.2.9

-   [Next](libavif.md "libavif-1.4.2"){accesskey="n"}

    libavif-1.4.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lcms2}Little CMS-2.19.1 {#little-cms-2.19.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Little CMS2 {#introduction-to-little-cms2 .sect2}

The Little Color Management System is a small-footprint color management engine, with special focus on accuracy and performance. It uses the International Color Consortium standard (ICC), which is the modern standard for color management.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/mm2/Little-CMS/releases/download/lcms2.19.1/lcms2-2.19.1.tar.gz](https://github.com/mm2/Little-CMS/releases/download/lcms2.19.1/lcms2-2.19.1.tar.gz){.ulink}

-   Download MD5 sum: 541978f73749499e9e0277bfe5a3c868

-   Download size: 5.5 MB

-   Estimated disk space required: 17 MB (with the tests)

-   Estimated build time: 0.2 SBU (with the tests)
:::

### Little CMS2 Dependencies

#### Optional

[libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref} and [libtiff-4.7.1](libtiff.md "libtiff-4.7.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Little CMS2 {#installation-of-little-cms2 .sect2}

Install [Little CMS2]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [jpgicc, linkicc, psicc, tificc, and transicc]{.segbody}
:::

::: seg
**Installed Library:** [liblcms2.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ----------------------------------------------------
  []{#jpgicc}[[**jpgicc**]{.command}]{.term}       is the Little CMS ICC profile applier for JPEG
  []{#linkicc}[[**linkicc**]{.command}]{.term}     is the Little CMS ICC device link generator
  []{#psicc}[[**psicc**]{.command}]{.term}         is the Little CMS ICC PostScript generator
  []{#tificc}[[**tificc**]{.command}]{.term}       is the Little CMS ICC tiff generator
  []{#transicc}[[**transicc**]{.command}]{.term}   is the Little CMS ColorSpace conversion calculator
  []{#liblcms2}[`liblcms2.so`{.filename}]{.term}   contains functions that implement the lcms2 API
  ------------------------------------------------ ----------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](jasper.md "jasper-4.2.9"){accesskey="p"}

    jasper-4.2.9

-   [Next](libavif.md "libavif-1.4.2"){accesskey="n"}

    libavif-1.4.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
