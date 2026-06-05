::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 29. Introduction to KDE

-   [Prev](phonon-backend-vlc.md "Phonon-backend-vlc-0.12.0"){accesskey="p"}

    Phonon-backend-vlc-0.12.0

-   [Next](plasma-wayland-protocols.md "plasma-wayland-protocols-1.21.0"){accesskey="n"}

    plasma-wayland-protocols-1.21.0

-   [Up](introduction.md "Chapter 29. Introduction to KDE"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#polkit-qt}Polkit-Qt-0.201.1 {#polkit-qt-0.201.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Polkit-Qt {#introduction-to-polkit-qt .sect2}

[Polkit-Qt]{.application} provides an API to PolicyKit in the Qt environment.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/polkit-qt-1/polkit-qt-1-0.201.1.tar.xz](https://download.kde.org/stable/polkit-qt-1/polkit-qt-1-0.201.1.tar.xz){.ulink}

-   Download MD5 sum: 0b255fb033de543c3010ebec33f4d233

-   Download size: 58 KB

-   Estimated disk space required: 5.2 MB

-   Estimated build time: 0.1 SBU
:::

### Polkit-Qt Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref}, and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Polkit-Qt {#installation-of-polkit-qt .sect2}

Install [Polkit-Qt]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D QT_MAJOR_VERSION=6        \
      -W no-dev .. &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply higher level of the compiler optimizations.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [none]{.segbody}
:::

::: seg
**Installed Libraries:** [libpolkit-qt6-agent-1.so, libpolkit-qt6-core-1.so, and libpolkit-qt6-gui-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/polkit-qt6-1 and /usr/lib/cmake/PolkitQt6-1]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](phonon-backend-vlc.md "Phonon-backend-vlc-0.12.0"){accesskey="p"}

    Phonon-backend-vlc-0.12.0

-   [Next](plasma-wayland-protocols.md "plasma-wayland-protocols-1.21.0"){accesskey="n"}

    plasma-wayland-protocols-1.21.0

-   [Up](introduction.md "Chapter 29. Introduction to KDE"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
