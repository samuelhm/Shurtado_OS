::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libdvdcss.md "libdvdcss-1.5.0"){accesskey="p"}

    libdvdcss-1.5.0

-   [Next](libdvdnav.md "libdvdnav-7.0.0"){accesskey="n"}

    libdvdnav-7.0.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libdvdread}libdvdread-7.0.1 {#libdvdread-7.0.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Libdvdread {#introduction-to-libdvdread .sect2}

[libdvdread]{.application} is a library which provides a simple foundation for reading DVDs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://get.videolan.org/libdvdread/7.0.1/libdvdread-7.0.1.tar.xz](https://get.videolan.org/libdvdread/7.0.1/libdvdread-7.0.1.tar.xz){.ulink}

-   Download MD5 sum: 3e2977ccc1f7a9639f7a88e93d04fbd6

-   Download size: 92 KB

-   Estimated disk space required: 1.6 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of Libdvdread {#installation-of-libdvdread .sect2}

First, install the documentation in a versioned directory:

``` userinput
sed -i "/get_option/s/libdvdread/&-7.0.1/" meson.build
```

Install [libdvdread]{.application} by running the following commands:

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
rm -fv /usr/lib/libdvdread.a
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
**Installed Library:** [libdvdread.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/dvdread and /usr/share/doc/libdvdread-7.0.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------
  []{#libdvdread-lib}[`libdvdread.so`{.filename}]{.term}   provides functionality required to access DVDs
  -------------------------------------------------------- ------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libdvdcss.md "libdvdcss-1.5.0"){accesskey="p"}

    libdvdcss-1.5.0

-   [Next](libdvdnav.md "libdvdnav-7.0.0"){accesskey="n"}

    libdvdnav-7.0.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
