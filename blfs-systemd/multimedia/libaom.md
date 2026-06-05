::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libao.md "Libao-1.2.0"){accesskey="p"}

    Libao-1.2.0

-   [Next](libass.md "libass-0.17.4"){accesskey="n"}

    libass-0.17.4

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libaom}libaom-3.14.1 {#libaom-3.14.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libaom {#introduction-to-libaom .sect2}

The [libaom]{.application} package contains a reference version of the Alliance for Open Media video codec. This codec is a patent free alternative to H.265, and is starting to be used throughout the internet.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://storage.googleapis.com/aom-releases/libaom-3.14.1.tar.gz](https://storage.googleapis.com/aom-releases/libaom-3.14.1.tar.gz){.ulink}

-   Download MD5 sum: 4a689bbc27ec095d253ed8d241077ad5

-   Download size: 6.1 MB

-   Estimated disk space required: 124 MB

-   Estimated build time: 0.8 SBU (with parallelism=4)
:::

### libaom Dependencies

#### Recommended

[yasm-1.3.0](../general/yasm.md "yasm-1.3.0"){.xref} (or [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref})

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libaom {#installation-of-libaom .sect2}

Prevent installing static versions of the libraries:

``` userinput
sed -i 's/aom aom_static/aom/' cmake/aom_install.cmake
```

Install [libaom]{.application} by running the following commands:

``` userinput
mkdir aom-build &&
cd    aom-build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_SHARED_LIBS=1       \
      -D ENABLE_DOCS=no            \
      -G Ninja .. &&
ninja
```

This package does not come with a working test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D BUILD_SHARED_LIBS=1`*: This switch builds shared versions of the libraries.

*`-D ENABLE_DOCS=no`*: This switch disables building the documentation because it fails due to an incompatibility with the latest version of [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}.

`-D ENABLE_NASM=yes`{.option}: Use this switch if you have both [yasm-1.3.0](../general/yasm.md "yasm-1.3.0"){.xref} and [NASM-3.01](../general/nasm.md "NASM-3.01"){.xref} installed and wish to use nasm instead of yasm.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [aomdec and aomenc]{.segbody}
:::

::: seg
**Installed Libraries:** [libaom.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/aom]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ -----------------------------------------------------------------------------
  []{#aomdec}[[**aomdec**]{.command}]{.term}       provides various decoders supported by this package, including one for AV1
  []{#aomenc}[[**aomenc**]{.command}]{.term}       provides various encoders supported by this package, including one for AV1
  []{#libaom-lib}[`libaom.so`{.filename}]{.term}   contains functions that provide a reference implementation of the AV1 codec
  ------------------------------------------------ -----------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libao.md "Libao-1.2.0"){accesskey="p"}

    Libao-1.2.0

-   [Next](libass.md "libass-0.17.4"){accesskey="n"}

    libass-0.17.4

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
