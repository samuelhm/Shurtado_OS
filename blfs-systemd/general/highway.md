::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](gspell.md "gspell-1.14.3"){accesskey="p"}

    gspell-1.14.3

-   [Next](icu.md "icu-78.3"){accesskey="n"}

    icu-78.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#highway}highway-1.4.0 {#highway-1.4.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to highway {#introduction-to-highway .sect2}

The [highway]{.application} package contains a C++ library that provides portable SIMD/vector intrinsics.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/google/highway/archive/1.4.0/highway-1.4.0.tar.gz](https://github.com/google/highway/archive/1.4.0/highway-1.4.0.tar.gz){.ulink}

-   Download MD5 sum: 9d335797777e17f827c7980b8313a34b

-   Download size: 3.6 MB

-   Estimated disk space required: 41 MB

-   Estimated build time: 0.6 SBU (with parallelism=4)
:::

### highway Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of highway {#installation-of-highway .sect2}

Install [highway]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_TESTING=OFF         \
      -D BUILD_SHARED_LIBS=ON      \
      -G Ninja ..                  &&
ninja
```

This package does come with a test suite, but it requires [gtest](https://github.com/google/googletest){.ulink}, which is not in BLFS.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D BUILD_TESTING=OFF`*: This parameter disables the test suite from being built because [gtest](https://github.com/google/googletest){.ulink} is not part of BLFS. Without this parameter, CMake will download this package during the configuration process. If you wish to run the tests, install [gtest](https://github.com/google/googletest){.ulink} and then remove this parameter.

*`-D BUILD_SHARED_LIBS=ON`*: This parameter enables building shared versions of the libraries instead of static versions.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libhwy.so, libhwy_contrib.so, and libhwy_test.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/hwy and /usr/lib/cmake/hwy]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ ----------------------------------------------------------------------------------------------------------
  []{#libhwy}[`libhwy.so`{.filename}]{.term}                   contains functions that provide portable SIMD/vector intrinsics
  []{#libhwy_contrib}[`libhwy_contrib.so`{.filename}]{.term}   contains several additions to Highway, including a series of dot product, image, math, and sort routines
  []{#libhwy_test}[`libhwy_test.so`{.filename}]{.term}         contains test helpers for Highway
  ------------------------------------------------------------ ----------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gspell.md "gspell-1.14.3"){accesskey="p"}

    gspell-1.14.3

-   [Next](icu.md "icu-78.3"){accesskey="n"}

    icu-78.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
