::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](woff2.md "woff2-1.0.2"){accesskey="p"}

    woff2-1.0.2

-   [Next](genutils.md "General Utilities"){accesskey="n"}

    General Utilities

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#zxing-cpp}zxing-cpp-3.0.2 {#zxing-cpp-3.0.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to zxing-cpp {#introduction-to-zxing-cpp .sect2}

The [zxing-cpp]{.application} package provides an open-source, multi-format linear/matrix barcode image processing library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/zxing-cpp/zxing-cpp/releases/download/v3.0.2/zxing-cpp-3.0.2.tar.gz](https://github.com/zxing-cpp/zxing-cpp/releases/download/v3.0.2/zxing-cpp-3.0.2.tar.gz){.ulink}

-   Download MD5 sum: 7690dcbad9fd76fb4f6cacf8036f1293

-   Download size: 1.5 MB

-   Estimated disk space required: 85 MB

-   Estimated build time: 0.1 SBU (Using parallelism=4)
:::

### zxing-cpp dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Optional

[googletest](https://github.com/google/googletest){.ulink}
:::::

::: {.installation lang="en"}
## Installation of zxing-cpp {#installation-of-zxing-cpp .sect2}

Install [zxing-cpp]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D ZXING_C_API=OFF           \
      -D ZXING_EXAMPLES=OFF        \
      -D ZXING_WRITERS=BOTH        \
      -W no-dev ..                 &&
make
```

The tests require the [googletest](https://github.com/google/googletest){.ulink} package, which is not in BLFS.

Now, as the `root`{.systemitem} user:

``` root
make install
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
**Installed Libraries:** [libZXing.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/ZXing and /usr/lib/cmake/ZXing]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ --------------------------------------------------------------
  []{#libZXing}[`libZXing.so`{.filename}]{.term}   provides several API functions for processing barcode images
  ------------------------------------------------ --------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](woff2.md "woff2-1.0.2"){accesskey="p"}

    woff2-1.0.2

-   [Next](genutils.md "General Utilities"){accesskey="n"}

    General Utilities

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
