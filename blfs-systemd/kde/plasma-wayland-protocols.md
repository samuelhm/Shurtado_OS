::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 29. Introduction to KDE

-   [Prev](polkit-qt.md "Polkit-Qt-0.201.1"){accesskey="p"}

    Polkit-Qt-0.201.1

-   [Next](libdmtx.md "libdmtx-0.7.8"){accesskey="n"}

    libdmtx-0.7.8

-   [Up](introduction.md "Chapter 29. Introduction to KDE"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#plasma-wayland-protocols}plasma-wayland-protocols-1.21.0 {#plasma-wayland-protocols-1.21.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to the Plasma-wayland-protocols {#introduction-to-the-plasma-wayland-protocols .sect2}

This package provides a custom set of Wayland protocol definitions for KDE.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/plasma-wayland-protocols/plasma-wayland-protocols-1.21.0.tar.xz](https://download.kde.org/stable/plasma-wayland-protocols/plasma-wayland-protocols-1.21.0.tar.xz){.ulink}

-   Download MD5 sum: 9a2f58d154a6cb514f60c59311e14559

-   Download size: 52 KB

-   Estimated disk space required: 1.2 MB

-   Estimated build time: less than 0.1 SBU
:::

### Plasma-wayland-protocols Dependencies

#### Required

[Extra-CMake-Modules-6.26.0](extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Plasma-wayland-protocols {#installation-of-plasma-wayland-protocols .sect2}

Install [Plasma-wayland-protocols]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr ..
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
**Installed Libraries:** [none]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/plasma-wayland-protocols and /usr/lib/cmake/PlasmaWaylandProtocols]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](polkit-qt.md "Polkit-Qt-0.201.1"){accesskey="p"}

    Polkit-Qt-0.201.1

-   [Next](libdmtx.md "libdmtx-0.7.8"){accesskey="n"}

    libdmtx-0.7.8

-   [Up](introduction.md "Chapter 29. Introduction to KDE"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
