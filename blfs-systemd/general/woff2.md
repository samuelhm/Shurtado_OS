::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](sassc.md "sassc-3.6.2"){accesskey="p"}

    sassc-3.6.2

-   [Next](zxing-cpp.md "zxing-cpp-3.0.2"){accesskey="n"}

    zxing-cpp-3.0.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#woff2}woff2-1.0.2 {#woff2-1.0.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to WOFF2 {#introduction-to-woff2 .sect2}

[WOFF2]{.application} is a library for converting fonts from the TTF format to the WOFF 2.0 format. It also allows decompression from WOFF 2.0 to TTF. The WOFF 2.0 format uses the Brotli compression algorithm to compress fonts suitable for downloading in CSS \@font-face rules.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/google/woff2/archive/v1.0.2/woff2-1.0.2.tar.gz](https://github.com/google/woff2/archive/v1.0.2/woff2-1.0.2.tar.gz){.ulink}

-   Download MD5 sum: 793c8844845351cb80730a74937e411b

-   Download size: 39 KB

-   Estimated disk space required: 1.6 MB

-   Estimated build time: less than 0.1 SBU
:::

### WOFF2 Dependencies

#### Required

[Brotli-1.2.0](brotli.md "brotli-1.2.0"){.xref} and [CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of WOFF2 {#installation-of-woff2 .sect2}

First, fix a problem when building with gcc-15:

``` userinput
sed -i '/output.h/i #include <cstdint>' src/woff2_out.cc
```

Install [WOFF2]{.application} by running the following commands:

``` userinput
mkdir out                                 &&
cd    out                                 &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_BUILD_TYPE=Release         \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      -D CMAKE_SKIP_INSTALL_RPATH=ON ..   &&
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

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D CMAKE_POLICY_VERSION_MINIMUM=3.5`*: This switch allows building this package with cmake-4.0 or newer.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libwoff2common.so, libwoff2dec.so and libwoff2enc.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/woff2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ ------------------------------------------------------------------------
  []{#libwoff2common}[`libwoff2common.so`{.filename}]{.term}   provides shared data used by the libwoff2dec and libwoff2enc libraries
  []{#libwoff2dec}[`libwoff2dec.so`{.filename}]{.term}         is the WOFF2 decoder library
  []{#libwoff2enc}[`libwoff2enc.so`{.filename}]{.term}         is the WOFF2 encoder library
  ------------------------------------------------------------ ------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](sassc.md "sassc-3.6.2"){accesskey="p"}

    sassc-3.6.2

-   [Next](zxing-cpp.md "zxing-cpp-3.0.2"){accesskey="n"}

    zxing-cpp-3.0.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
