::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](opencv.md "opencv-4.13.0"){accesskey="p"}

    opencv-4.13.0

-   [Next](pixman.md "Pixman-0.46.4"){accesskey="n"}

    Pixman-0.46.4

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#openjpeg2}OpenJPEG-2.5.4 {#openjpeg-2.5.4 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to OpenJPEG {#introduction-to-openjpeg .sect2}

[OpenJPEG]{.application} is an open-source implementation of the JPEG-2000 standard. OpenJPEG fully respects the JPEG-2000 specifications and can compress/decompress lossless 16-bit images.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/uclouvain/openjpeg/archive/v2.5.4/openjpeg-2.5.4.tar.gz](https://github.com/uclouvain/openjpeg/archive/v2.5.4/openjpeg-2.5.4.tar.gz){.ulink}

-   Download MD5 sum: 6160de075bb5191e482bc0f024b375e4

-   Download size: 2.1 MB

-   Estimated disk space required: 16 MB (add 1.7 GB for tests)

-   Estimated build time: 0.2 SBU (add 1.1 SBU for tests)
:::

### OpenJPEG Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Optional

[git-2.54.0](git.md "Git-2.54.0"){.xref} (for tests), [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}, [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}, [libtiff-4.7.1](libtiff.md "libtiff-4.7.1"){.xref}, and [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} (to build the API documentation)
:::::

::: {.installation lang="en"}
## Installation of OpenJPEG {#installation-of-openjpeg .sect2}

Install [OpenJPEG]{.application} by running the following commands:

``` userinput
mkdir -v build &&
cd       build &&

cmake -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_PREFIX=/usr \
      -D BUILD_STATIC_LIBS=OFF ..  &&
make
```

If you wish to run the tests, some additional files are required. Download these files and run the tests using the following commands, but note that 8 tests are known to fail:

``` userinput
git clone https://github.com/uclouvain/openjpeg-data.git --depth 1 &&
OPJ_DATA_ROOT=$PWD/openjpeg-data cmake -D BUILD_TESTING=ON ..      &&
make                                                               &&
make test
```

Now, as the `root`{.systemitem} user:

``` root
make install &&
cp -rv ../doc/man -T /usr/share/man
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [opj_compress, opj_decompress, and opj_dump]{.segbody}
:::

::: seg
**Installed Libraries:** [libopenjp2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/openjpeg-2.5 and /usr/lib/openjpeg-2.5]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ ------------------------------------------------------------
  []{#opj_compress}[[**opj_compress**]{.command}]{.term}       converts various image formats to the jpeg2000 format
  []{#opj_decompress}[[**opj_decompress**]{.command}]{.term}   converts jpeg2000 images to other image types
  []{#opj_dump}[[**opj_dump**]{.command}]{.term}               reads in a jpeg2000 image and dumps the contents to stdout
  ------------------------------------------------------------ ------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](opencv.md "opencv-4.13.0"){accesskey="p"}

    opencv-4.13.0

-   [Next](pixman.md "Pixman-0.46.4"){accesskey="n"}

    Pixman-0.46.4

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
