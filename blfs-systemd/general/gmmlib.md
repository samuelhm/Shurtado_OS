::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](gmime3.md "GMime-3.2.15"){accesskey="p"}

    GMime-3.2.15

-   [Next](gsl.md "gsl-2.8"){accesskey="n"}

    gsl-2.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gmmlib}gmmlib-22.10.0 {#gmmlib-22.10.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to gmmlib {#introduction-to-gmmlib .sect2}

The [gmmlib]{.application} package contains the Intel Graphics Memory Management Library, which provides device specific memory and buffer management functions for the Intel Media Driver for VAAPI and the Intel Graphics Computer Runtime for OpenCL (TM).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lfs-book/gmmlib/archive/v22.10.0/gmmlib-22.10.0.tar.gz](https://github.com/lfs-book/gmmlib/archive/v22.10.0/gmmlib-22.10.0.tar.gz){.ulink}

-   Download MD5 sum: f94f6903e7df944c7a064f85b1b4a99b

-   Download size: 868 KB

-   Estimated disk space required: 59 MB

-   Estimated build time: 0.7 SBU
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

On GitHub we've forked the upstream repository into our own `lfs-book`{.literal} namespace and recreated a tag for the release. This is done to ensure the downloaded tarball file name to be correct and consistent (i.e. it shouldn't change when using the browser instead of a tool like [**wget**]{.command}). Our tag and the upstream release tag are on the same commit, so we've not introduced any change to the tarball content except the name of its top-level directory (that Git does not track).
:::

### gmmlib Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}
::::::

::: {.installation lang="en"}
## Installation of gmmlib {#installation-of-gmmlib .sect2}

Install [gmmlib]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D BUILD_TYPE=Release        \
      -G Ninja                     \
      -W no-dev ..                 &&
ninja
```

The test suite is normally run by [**ninja**]{.command} unless -D RUN_TEST_SUITE=NO is passed to cmake.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libigdgmm.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/igdgmm]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------------------------
  []{#libigdgmm}[`libigdgmm.so`{.filename}]{.term}   contains functions that provide Memory Management functions for Intel Graphics Drivers
  -------------------------------------------------- ----------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gmime3.md "GMime-3.2.15"){accesskey="p"}

    GMime-3.2.15

-   [Next](gsl.md "gsl-2.8"){accesskey="n"}

    gsl-2.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
