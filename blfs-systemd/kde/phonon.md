::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 29. Introduction to KDE

-   [Prev](extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){accesskey="p"}

    Extra-CMake-Modules-6.26.0

-   [Next](phonon-backend-vlc.md "Phonon-backend-vlc-0.12.0"){accesskey="n"}

    Phonon-backend-vlc-0.12.0

-   [Up](introduction.md "Chapter 29. Introduction to KDE"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#phonon}Phonon-4.12.0 {#phonon-4.12.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Phonon {#introduction-to-phonon .sect2}

[Phonon]{.application} is the multimedia API for KDE. It replaces the old [aRts]{.application} package. Phonon needs the VLC backend.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/phonon/4.12.0/phonon-4.12.0.tar.xz](https://download.kde.org/stable/phonon/4.12.0/phonon-4.12.0.tar.xz){.ulink}

-   Download MD5 sum: e80e9c73967080016bdb3c0ee514ceab

-   Download size: 400 KB

-   Estimated disk space required: 23 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### Phonon Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [Extra-CMake-Modules-6.26.0](extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref}, and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}

#### Required at runtime

[phonon-backend-vlc-0.12.0](phonon-backend-vlc.md "Phonon-backend-vlc-0.12.0"){.xref} needs to be installed afterwards for multimedia operations in [KDE]{.application} to work correctly.

#### Optional

[PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Phonon {#installation-of-phonon .sect2}

Install [Phonon]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D PHONON_BUILD_QT5=OFF      \
      -W no-dev .. &&
make
```

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply higher level of the compiler optimizations.

*`-D PHONON_BUILD_QT5=OFF`*: This switch is needed to prevent building the [Qt5]{.application} bindings, which fails if [Qt5]{.application} is not installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [phononsettings]{.segbody}
:::

::: seg
**Installed Libraries:** [libphonon4qt6.so and libphonon4qt6experimental.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/phonon4qt6, /usr/lib/cmake/phonon4qt6, and /usr/lib/plugins/designer]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#phononsettings}[[**phononsettings**]{.command}]{.term}                         provides a graphical interface to set the default audio device for several different types of playback, including for communications, games, and more
  []{#libphonon4qt6}[`libphonon4qt6.so`{.filename}]{.term}                           contains functions that provide the multimedia API used by KDE
  []{#libphonon4qt6experimental}[`libphonon4qt6experimental.so`{.filename}]{.term}   contains several experimental functions for use with KDE
  ---------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){accesskey="p"}

    Extra-CMake-Modules-6.26.0

-   [Next](phonon-backend-vlc.md "Phonon-backend-vlc-0.12.0"){accesskey="n"}

    Phonon-backend-vlc-0.12.0

-   [Up](introduction.md "Chapter 29. Introduction to KDE"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
