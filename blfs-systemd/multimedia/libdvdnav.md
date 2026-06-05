::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libdvdread.md "libdvdread-7.0.1"){accesskey="p"}

    libdvdread-7.0.1

-   [Next](libdv.md "Libdv-1.0.0"){accesskey="n"}

    Libdv-1.0.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libdvdnav}libdvdnav-7.0.0 {#libdvdnav-7.0.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Libdvdnav {#introduction-to-libdvdnav .sect2}

[libdvdnav]{.application} is a library that allows easy usage of sophisticated DVD navigation features including DVD menus, multiangle playback, and even interactive DVD games.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://get.videolan.org/libdvdnav/7.0.0/libdvdnav-7.0.0.tar.xz](https://get.videolan.org/libdvdnav/7.0.0/libdvdnav-7.0.0.tar.xz){.ulink}

-   Download MD5 sum: e9e9f137cdd52828abc0c61b727ea579

-   Download size: 84 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### Libdvdnav Dependencies

#### Required

[libdvdread-7.0.1](libdvdread.md "libdvdread-7.0.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libdvdnav {#installation-of-libdvdnav .sect2}

First, install the documentation in a versioned directory:

``` userinput
sed -i "/get_option/s/libdvdnav/&-7.0.0/" meson.build
```

Install [libdvdnav]{.application} by running the following commands:

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
rm -fv /usr/lib/libdvdnav.a
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
**Installed Library:** [libdvdnav.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/dvdnav and /usr/share/doc/libdvdnav-7.0.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -------------------------------
  []{#libdvdnav-lib}[`libdvdnav.so`{.filename}]{.term}   is the DVD navigation library
  ------------------------------------------------------ -------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libdvdread.md "libdvdread-7.0.1"){accesskey="p"}

    libdvdread-7.0.1

-   [Next](libdv.md "Libdv-1.0.0"){accesskey="n"}

    Libdv-1.0.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
