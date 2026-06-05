::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libde265.md "libde265-1.1.0"){accesskey="p"}

    libde265-1.1.0

-   [Next](libdvdread.md "libdvdread-7.0.1"){accesskey="n"}

    libdvdread-7.0.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libdvdcss}libdvdcss-1.5.0 {#libdvdcss-1.5.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libdvdcss {#introduction-to-libdvdcss .sect2}

[libdvdcss]{.application} is a simple library designed for accessing DVDs as a block device without having to bother about the decryption.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://get.videolan.org/libdvdcss/1.5.0/libdvdcss-1.5.0.tar.xz](https://get.videolan.org/libdvdcss/1.5.0/libdvdcss-1.5.0.tar.xz){.ulink}

-   Download MD5 sum: ebfde11e35a0975d900bfb03f0297fc7

-   Download size: 80 KB

-   Estimated disk space required: 1.0 MB

-   Estimated build time: less than 0.1 SBU
:::

### libdvdcss Dependencies

#### Optional (to Create Documentation)

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libdvdcss {#installation-of-libdvdcss .sect2}

Install [libdvdcss]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install &&
rm -fv /usr/lib/libdvdcss.a
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
**Installed Library:** [libdvdcss.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/dvdcss]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------------------------------
  []{#libdvdcss-lib}[`libdvdcss.so`{.filename}]{.term}   provides the functionality that is required for transparent DVD access with CSS decryption
  ------------------------------------------------------ --------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libde265.md "libde265-1.1.0"){accesskey="p"}

    libde265-1.1.0

-   [Next](libdvdread.md "libdvdread-7.0.1"){accesskey="n"}

    libdvdread-7.0.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
