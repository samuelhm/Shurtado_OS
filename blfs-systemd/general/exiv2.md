::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](babl.md "babl-0.1.126"){accesskey="p"}

    babl-0.1.126

-   [Next](freetype2.md "FreeType-2.14.3"){accesskey="n"}

    FreeType-2.14.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#exiv2}Exiv2-0.28.8 {#exiv2-0.28.8 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Exiv2 {#introduction-to-exiv2 .sect2}

[Exiv2]{.application} contains a C++ library and a command line utility for managing image and video metadata.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/Exiv2/exiv2/archive/v0.28.8/exiv2-0.28.8.tar.gz](https://github.com/Exiv2/exiv2/archive/v0.28.8/exiv2-0.28.8.tar.gz){.ulink}

-   Download MD5 sum: 3f3b2d9c3e73880ea8e6bd78c67ea56a

-   Download size: 45 MB

-   Estimated disk space required: 134 MB (with tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4, with tests)
:::

### Exiv2 dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Recommended

[Brotli-1.2.0](brotli.md "brotli-1.2.0"){.xref}, [cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, and [inih-62](inih.md "inih-62"){.xref}

#### Optional

[libssh](https://www.libssh.org/){.ulink}

#### Optional for documentation

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref}, and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Exiv2 {#installation-of-exiv2 .sect2}

Install [Exiv2]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr   \
      -D CMAKE_BUILD_TYPE=Release    \
      -D EXIV2_ENABLE_VIDEO=yes      \
      -D EXIV2_ENABLE_WEBREADY=yes   \
      -D EXIV2_ENABLE_CURL=yes       \
      -D EXIV2_BUILD_SAMPLES=no      \
      -D CMAKE_SKIP_INSTALL_RPATH=ON \
      -G Ninja ..                    &&
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

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D EXIV2_ENABLE_VIDEO=yes`*: This switch enables managing video metadata.

*`-D EXIV2_ENABLE_WEBREADY=yes`*: This switch enables managing web image metadata.

*`-D EXIV2_BUILD_SAMPLES=no`*: This switch is necessary to suppress building and installing sample programs. If the sample programs are built, 34 additional programs are installed in /usr/bin.

*`-D EXIV2_ENABLE_CURL=yes`*: This switch is necessary to enable network/http capabilities.

`-D EXIV2_ENABLE_INIH=no`{.option}: Use this switch if you have not installed [inih-62](inih.md "inih-62"){.xref}.

`-D EXIV2_ENABLE_BROTLI=no`{.option}: Use this switch if you have not installed [Brotli-1.2.0](brotli.md "brotli-1.2.0"){.xref}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [exiv2]{.segbody}
:::

::: seg
**Installed Library:** [libexiv2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/exiv2 and /usr/lib/cmake/exiv2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- -------------------------------------
  []{#exiv2-prog}[[**exiv2**]{.command}]{.term}   is a utility used to dump Exif data
  ----------------------------------------------- -------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](babl.md "babl-0.1.126"){accesskey="p"}

    babl-0.1.126

-   [Next](freetype2.md "FreeType-2.14.3"){accesskey="n"}

    FreeType-2.14.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
