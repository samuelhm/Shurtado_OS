::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libpng.md "libpng-1.6.58"){accesskey="p"}

    libpng-1.6.58

-   [Next](libraw.md "libraw-0.22.1"){accesskey="n"}

    libraw-0.22.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#qrencode}libqrencode-4.1.1 {#libqrencode-4.1.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libqrencode {#introduction-to-libqrencode .sect2}

The [libqrencode]{.application} package provides a fast and compact library for encoding data in a QR Code symbol, a 2D symbology that can be scanned by handheld terminals such as a mobile phone with a CCD sensor.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/fukuchi/libqrencode/archive/v4.1.1/libqrencode-4.1.1.tar.gz](https://github.com/fukuchi/libqrencode/archive/v4.1.1/libqrencode-4.1.1.tar.gz){.ulink}

-   Download MD5 sum: 486f879d1638d3fb58a4a5d45a88c600

-   Download size: 188 KB

-   Estimated disk space required: 6.6 MB (with documentation, add 5 MB for tests)

-   Estimated build time: less than 0.1 SBU, add 0.1 SBU for tests
:::

### libqrencode Dependencies

#### Recommended

[libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} for generating documentation, and [sdl2-compat-2.32.68](../multimedia/sdl2.md "sdl2-compat-2.32.68"){.xref} for tests
:::::

::: {.installation lang="en"}
## Installation of libqrencode {#installation-of-libqrencode .sect2}

Install [libqrencode]{.application} by running the following commands:

``` userinput
sh autogen.sh             &&
./configure --prefix=/usr &&
make
```

If you have installed [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, you can build the documentation by issuing:

``` userinput
doxygen
```

The tests must be run after installing the package.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you have built the optional documentation, install it as the `root`{.systemitem} user:

``` root
install -vdm 755 /usr/share/doc/libqrencode-4.1.1 &&
mv html/*        /usr/share/doc/libqrencode-4.1.1
```

To test the results, if you have passed the `--with-tests`{.option} option to [**configure**]{.command}, issue: [**make check**]{.command}.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--with-tests`{.option}: This option allows building the test programs. It requires [sdl2-compat-2.32.68](../multimedia/sdl2.md "sdl2-compat-2.32.68"){.xref}.

`--without-tools`{.option}: This option prevents building the [**qrencode**]{.command} executable, removing the need for [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [qrencode]{.segbody}
:::

::: seg
**Installed Library:** [libqrencode.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/qrencode-4.1.1 (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------
  []{#qrencode-prog}[[**qrencode**]{.command}]{.term}    encodes input data in a QR Code and saves it as a PNG or EPS image
  []{#libqrencode}[`libqrencode.so`{.filename}]{.term}   contains functions for encoding data in a QR code symbol
  ------------------------------------------------------ --------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libpng.md "libpng-1.6.58"){accesskey="p"}

    libpng-1.6.58

-   [Next](libraw.md "libraw-0.22.1"){accesskey="n"}

    libraw-0.22.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
