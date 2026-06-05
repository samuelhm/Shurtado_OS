::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](fdk-aac.md "fdk-aac-2.0.3"){accesskey="p"}

    fdk-aac-2.0.3

-   [Next](frei0r.md "frei0r-3.1.3"){accesskey="n"}

    frei0r-3.1.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#flac}FLAC-1.5.0 {#flac-1.5.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to FLAC {#introduction-to-flac .sect2}

[FLAC]{.application} is an audio CODEC similar to MP3, but lossless, meaning that audio is compressed without losing any information.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/xiph/flac/releases/download/1.5.0/flac-1.5.0.tar.xz](https://github.com/xiph/flac/releases/download/1.5.0/flac-1.5.0.tar.xz){.ulink}

-   Download MD5 sum: 0bb45bcf74338b00efeec121fff27367

-   Download size: 1.1 MB

-   Estimated disk space required: 25 MB (additional 170 MB to run the test suite)

-   Estimated build time: 0.2 SBU (additional 0.2 SBU to run the test suite)
:::

### FLAC Dependencies

#### Optional

[libogg-1.3.6](libogg.md "libogg-1.3.6"){.xref}, [DocBook-utils-0.6.14](../pst/docbook-utils.md "DocBook-utils-0.6.14"){.xref}, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, and [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of FLAC {#installation-of-flac .sect2}

Install [FLAC]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr            \
            --disable-thorough-tests \
            --docdir=/usr/share/doc/flac-1.5.0 &&
make
```

To test the results, issue: [**make check**]{.command}. Note that if you passed the `--enable-exhaustive-tests`{.option} and `--enable-valgrind-testing`{.option} parameters to [**configure**]{.command} and then run the test suite, it will take a [*very*]{.emphasis} long time (up to 300 SBUs) and use about 375 MB of disk space.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-thorough-tests`*: This parameter is used so that the test suite will complete in a reasonable amount of time. Remove it if you desire more extensive tests.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [flac and metaflac]{.segbody}
:::

::: seg
**Installed Libraries:** [libFLAC.so and libFLAC++.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/FLAC, /usr/include/FLAC++ and /usr/share/doc/flac-1.5.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- -------------------------------------------------------------------------------------------
  []{#flac-prog}[[**flac**]{.command}]{.term}         is a command-line utility for encoding, decoding and converting FLAC files
  []{#metaflac}[[**metaflac**]{.command}]{.term}      is a program for listing, adding, removing, or editing metadata in one or more FLAC files
  []{#libflac}[`libFLAC{,++}.so`{.filename}]{.term}   these libraries provide native FLAC and Ogg FLAC C/C++ APIs for programs utilizing FLAC
  --------------------------------------------------- -------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](fdk-aac.md "fdk-aac-2.0.3"){accesskey="p"}

    fdk-aac-2.0.3

-   [Next](frei0r.md "frei0r-3.1.3"){accesskey="n"}

    frei0r-3.1.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
