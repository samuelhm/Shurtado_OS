::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 29. Introduction to KDE

-   [Prev](phonon.md "Phonon-4.12.0"){accesskey="p"}

    Phonon-4.12.0

-   [Next](polkit-qt.md "Polkit-Qt-0.201.1"){accesskey="n"}

    Polkit-Qt-0.201.1

-   [Up](introduction.md "Chapter 29. Introduction to KDE"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#phonon-backend-vlc}Phonon-backend-vlc-0.12.0 {#phonon-backend-vlc-0.12.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to the Phonon-backend-vlc {#introduction-to-the-phonon-backend-vlc .sect2}

This package provides a [Phonon]{.application} backend which utilizes the [VLC]{.application} media framework.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/phonon/phonon-backend-vlc/0.12.0/phonon-backend-vlc-0.12.0.tar.xz](https://download.kde.org/stable/phonon/phonon-backend-vlc/0.12.0/phonon-backend-vlc-0.12.0.tar.xz){.ulink}

-   Download MD5 sum: 2a27b5d249f97a15040481008fb16e1b

-   Download size: 72 KB

-   Estimated disk space required: 6.6 MB

-   Estimated build time: 0.2 SBU
:::

### Phonon-backend-vlc Dependencies

#### Required

[phonon-4.12.0](phonon.md "Phonon-4.12.0"){.xref} and [VLC-3.0.23](../multimedia/vlc.md "VLC-3.0.23"){.xref} (gui is not needed)
:::::

::: {.installation lang="en"}
## Installation of Phonon-backend-vlc {#installation-of-phonon-backend-vlc .sect2}

Install [Phonon-backend-vlc]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D PHONON_BUILD_QT5=OFF      \
      .. &&
make
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply higher level of compiler optimizations.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [none]{.segbody}
:::

::: seg
**Installed Libraries:** [phonon_vlc_qt6.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/plugins/phonon4qt6_backend]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](phonon.md "Phonon-4.12.0"){accesskey="p"}

    Phonon-4.12.0

-   [Next](polkit-qt.md "Polkit-Qt-0.201.1"){accesskey="n"}

    Polkit-Qt-0.201.1

-   [Up](introduction.md "Chapter 29. Introduction to KDE"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
