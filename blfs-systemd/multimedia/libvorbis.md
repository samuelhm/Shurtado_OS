::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libva.md "libva-2.23.0"){accesskey="p"}

    libva-2.23.0

-   [Next](libvpx.md "libvpx-1.16.0"){accesskey="n"}

    libvpx-1.16.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libvorbis}libvorbis-1.3.7 {#libvorbis-1.3.7 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libvorbis {#introduction-to-libvorbis .sect2}

The [libvorbis]{.application} package contains a general purpose audio and music encoding format. This is useful for creating (encoding) and playing (decoding) sound in an open (patent free) format.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.7.tar.xz](https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.7.tar.xz){.ulink}

-   Download MD5 sum: 50902641d358135f06a8392e61c9ac77

-   Download size: 1.1 MB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.1 SBU
:::

### libvorbis Dependencies

#### Required

[libogg-1.3.6](libogg.md "libogg-1.3.6"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} and [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref}) (specifically, pdflatex and htlatex) to build the PDF documentation
:::::

::: {.installation lang="en"}
## Installation of libvorbis {#installation-of-libvorbis .sect2}

Install [libvorbis]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make -j1 check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m644 doc/Vorbis* /usr/share/doc/libvorbis-1.3.7
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--enable-docs`{.option}: This switch enables building the documentation in formats other than the supplied html.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libvorbis.so, libvorbisenc.so and libvorbisfile.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/vorbis and /usr/share/doc/libvorbis-1.3.7]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------
  []{#libvorbis-lib}[`libvorbis.so`{.filename}]{.term}   provides the functions used to read and write sound files
  ------------------------------------------------------ -----------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libva.md "libva-2.23.0"){accesskey="p"}

    libva-2.23.0

-   [Next](libvpx.md "libvpx-1.16.0"){accesskey="n"}

    libvpx-1.16.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
