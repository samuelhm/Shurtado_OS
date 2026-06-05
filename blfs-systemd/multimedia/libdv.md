::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libdvdnav.md "libdvdnav-7.0.0"){accesskey="p"}

    libdvdnav-7.0.0

-   [Next](libmad.md "libmad-0.15.1b"){accesskey="n"}

    libmad-0.15.1b

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libdv}Libdv-1.0.0 {#libdv-1.0.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Libdv {#introduction-to-libdv .sect2}

The Quasar DV Codec ([libdv]{.application}) is a software CODEC for DV video, the encoding format used by most digital camcorders. It can be used to copy videos from camcorders using a firewire (IEEE 1394) connection.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/libdv/libdv-1.0.0.tar.gz](https://downloads.sourceforge.net/libdv/libdv-1.0.0.tar.gz){.ulink}

-   Download MD5 sum: f895162161cfa4bb4a94c070a7caa6c7

-   Download size: 574 KB

-   Estimated disk space required: 6.0 MB

-   Estimated build time: 0.2 SBU
:::

### Libdv Dependencies

#### Optional

[popt-1.19](../general/popt.md "Popt-1.19"){.xref}, [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}, and [SDL1](https://github.com/libsdl-org/sdl12-compat){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Libdv {#installation-of-libdv .sect2}

Install [libdv]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-xv     \
            --disable-static &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m755 -d      /usr/share/doc/libdv-1.0.0 &&
install -v -m644 README* /usr/share/doc/libdv-1.0.0
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-xv`*: This parameter is required if an [X Window System]{.application} is not installed. It also prevents [**configure**]{.command} testing for `libXv`{.filename} which is only used for an obsolete program [**playdv**]{.command} that will not be built with current [linux]{.application} headers and would also need other obsolete dependencies.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [dubdv, dvconnect, and encodedv]{.segbody}
:::

::: seg
**Installed Library:** [libdv.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libdv and /usr/share/doc/libdv-1.0.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------------
  []{#dubdv}[[**dubdv**]{.command}]{.term}           inserts audio into a digital video stream
  []{#dvconnect}[[**dvconnect**]{.command}]{.term}   is a small utility to send or capture raw data from and to the camcorder
  []{#encodedv}[[**encodedv**]{.command}]{.term}     encodes a series of images to a digital video stream
  []{#libdv-lib}[`libdv.so`{.filename}]{.term}       provides functions for programs interacting with the Quasar DV CODEC
  -------------------------------------------------- --------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libdvdnav.md "libdvdnav-7.0.0"){accesskey="p"}

    libdvdnav-7.0.0

-   [Next](libmad.md "libmad-0.15.1b"){accesskey="n"}

    libmad-0.15.1b

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
