::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](imath.md "Imath-3.2.2"){accesskey="p"}

    Imath-3.2.2

-   [Next](lcms2.md "Little CMS-2.19.1"){accesskey="n"}

    Little CMS-2.19.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#jasper}jasper-4.2.9 {#jasper-4.2.9 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to jasper {#introduction-to-jasper .sect2}

The [jasper]{.application} Project is an open-source initiative to provide a free software-based reference implementation of the JPEG-2000 codec.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/jasper-software/jasper/archive/version-4.2.9/jasper-version-4.2.9.tar.gz](https://github.com/jasper-software/jasper/archive/version-4.2.9/jasper-version-4.2.9.tar.gz){.ulink}

-   Download MD5 sum: 5c84b0c41b6b3363124f8bc7f8881f53

-   Download size: 1.9 MB

-   Estimated disk space required: 10 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests)
:::

### jasper Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Recommended

[libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}

#### Optional

[Freeglut-3.8.0](../x/freeglut.md "Freeglut-3.8.0"){.xref} (required for [**jiv**]{.command}), [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} (needed for generating html documentation), and [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (needed to regenerate the pdf documentation)
:::::

::: {.installation lang="en"}
## Installation of jasper {#installation-of-jasper .sect2}

Install [jasper]{.application} by running the following commands:

``` userinput
mkdir BUILD &&
cd    BUILD &&

cmake -D CMAKE_INSTALL_PREFIX=/usr    \
      -D CMAKE_BUILD_TYPE=Release     \
      -D CMAKE_SKIP_INSTALL_RPATH=ON  \
      -D JAS_ENABLE_DOC=NO            \
      -D ALLOW_IN_SOURCE_BUILD=YES    \
      -D CMAKE_INSTALL_DOCDIR=/usr/share/doc/jasper-4.2.9 \
      ..  &&
make
```

To test the results, issue: [**make test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D JAS_ENABLE_DOC=NO`*: This option disables rebuilding the pdf documentation if [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} is installed.

*`-D ALLOW_IN_SOURCE_BUILD=YES`*: This switch allows building from within the source tree. In our case, this is needed to allow us to build inside of the BUILD directory instead of needing to create another directory outside of the source tree.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [imgcmp, imginfo, jasper, and jiv]{.segbody}
:::

::: seg
**Installed Library:** [libjasper.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/jasper and /usr/share/doc/jasper-4.2.9]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------------------------
  []{#imgcmp}[[**imgcmp**]{.command}]{.term}           compares two images of the same geometry
  []{#imginfo}[[**imginfo**]{.command}]{.term}         displays information about an image
  []{#jasper-command}[[**jasper**]{.command}]{.term}   converts images between formats (BMP, JPS, JPC, JPG, PGX, PNM, MIF, and RAS)
  []{#jiv}[[**jiv**]{.command}]{.term}                 displays images
  []{#jasper-lib}[`libjasper.so`{.filename}]{.term}    is a library used by programs for reading and writing JPEG2000 format files
  ---------------------------------------------------- ------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](imath.md "Imath-3.2.2"){accesskey="p"}

    Imath-3.2.2

-   [Next](lcms2.md "Little CMS-2.19.1"){accesskey="n"}

    Little CMS-2.19.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
