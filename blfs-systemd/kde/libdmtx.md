::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 29. Introduction to KDE

-   [Prev](plasma-wayland-protocols.md "plasma-wayland-protocols-1.21.0"){accesskey="p"}

    plasma-wayland-protocols-1.21.0

-   [Next](kf6.md "KDE Frameworks 6"){accesskey="n"}

    KDE Frameworks 6

-   [Up](introduction.md "Chapter 29. Introduction to KDE"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libdmtx}libdmtx-0.7.8 {#libdmtx-0.7.8 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to the Plasma-wayland-protocols {#introduction-to-the-plasma-wayland-protocols .sect2}

This package is a software library that enables programs to read and write Data Matrix barcodes.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/dmtx/libdmtx/archive/v0.7.8/libdmtx-0.7.8.tar.gz](https://github.com/dmtx/libdmtx/archive/v0.7.8/libdmtx-0.7.8.tar.gz){.ulink}

-   Download MD5 sum: 2b4329190b65e2f8b23e4a329ec7d792

-   Download size: 780 KB

-   Estimated disk space required: 2.9 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of libdmtx {#installation-of-libdmtx .sect2}

First, fix a minor cmake issue:

``` userinput
sed -i 's/3.5/3.10/' CMakeLists.txt
```

Install [libdmtx]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr .. &&
make
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [none]{.segbody}
:::

::: seg
**Installed Libraries:** [libdmtx.so]{.segbody}
:::

::: seg
**Installed Directories:** [none]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](plasma-wayland-protocols.md "plasma-wayland-protocols-1.21.0"){accesskey="p"}

    plasma-wayland-protocols-1.21.0

-   [Next](kf6.md "KDE Frameworks 6"){accesskey="n"}

    KDE Frameworks 6

-   [Up](introduction.md "Chapter 29. Introduction to KDE"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
