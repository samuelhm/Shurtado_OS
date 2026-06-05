::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](popt.md "Popt-1.19"){accesskey="p"}

    Popt-1.19

-   [Next](protobuf-c.md "Protobuf-c-1.5.2"){accesskey="n"}

    Protobuf-c-1.5.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#protobuf}Protobuf-35.0 {#protobuf-35.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Protobuf {#introduction-to-protobuf .sect2}

The [Protobuf]{.application} package contains utilities and libraries for using data in Google's data interchange format.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/protocolbuffers/protobuf/releases/download/v35.0/protobuf-35.0.tar.gz](https://github.com/protocolbuffers/protobuf/releases/download/v35.0/protobuf-35.0.tar.gz){.ulink}

-   Download MD5 sum: 03885fd41e7418120ddedb683fa9404a

-   Download size: 6.9 MB

-   Estimated disk space required: 116 MB

-   Estimated build time: 1.2 SBU (with parallelism=4)
:::

### Protobuf Dependencies

#### Required

[Abseil-cpp-20260107.1](abseil-cpp.md "Abseil-cpp-20260107.1"){.xref} and [CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Optional

[gtest (for tests)](https://github.com/google/googletest){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Protobuf {#installation-of-protobuf .sect2}

Install [Protobuf]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr      \
      -D CMAKE_BUILD_TYPE=Release       \
      -D CMAKE_SKIP_INSTALL_RPATH=ON    \
      -D protobuf_BUILD_TESTS=OFF       \
      -D protobuf_BUILD_SHARED_LIBS=ON  \
      -G Ninja ..                       &&
ninja
```

This package does come with a test suite, but it requires [gtest](https://github.com/google/googletest){.ulink}, which is not part of BLFS.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D protobuf_BUILD_TESTS=OFF`*: This parameter prevents the tests from being built because [gtest](https://github.com/google/googletest){.ulink} is not part of BLFS.

*`-D protobuf_BUILD_SHARED_LIBS=ON`*: This parameter enables building shared versions of the libraries provided by this package instead of static versions.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [protoc (a symlink to protoc-35.0.0), protoc-gen-upb (a symlink to protoc-gen-upb-35.0.0), and protoc-gen-upbdefs (a symlink to protoc-gen-upbdefs-35.0.0) protoc-gen-upb_minitable(a symlink to protoc-gen-upb_minitable-35.0.0)]{.segbody}
:::

::: seg
**Installed Libraries:** [libprotobuf.so, libprotobuf-lite.so, libprotoc.so, libupb.a, libutf8_range.so, and libutf8_validity.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/google, /usr/include/upb, /usr/lib/cmake/protobuf, and /usr/lib/cmake/utf8_range]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#protoc}[[**protoc**]{.command}]{.term}                       parses protocol buffer files and generates output for several programming languages and formats
  []{#libprotobuf}[`libprotobuf.so`{.filename}]{.term}             contains functions for utilizing data in Google's data interchange format
  []{#libprotobuf-lite}[`libprotobuf-lite.so`{.filename}]{.term}   contains a simpler version of the functions for utilizing data in Google's data interchange format
  []{#libprotoc}[`libprotoc.so`{.filename}]{.term}                 contains functions used by protoc at runtime for outputting data for several programming languages and formats
  []{#libupb}[`libupb.a`{.filename}]{.term}                        is a small protobuf implementation written in C
  []{#libutf8_range}[`libutf8_range.so`{.filename}]{.term}         contains functions that allow a program to determine whether a sequence of characters is a valid UTF-8 sequence
  []{#libutf8_validity}[`libutf8_validity.so`{.filename}]{.term}   contains functions that allow a program to determine whether a sequence of bytes is a valid UTF-8 sequence, and to find what the longest valid prefix of the sequence is
  ---------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](popt.md "Popt-1.19"){accesskey="p"}

    Popt-1.19

-   [Next](protobuf-c.md "Protobuf-c-1.5.2"){accesskey="n"}

    Protobuf-c-1.5.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
