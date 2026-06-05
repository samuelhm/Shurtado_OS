::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 32. KDE Plasma

-   [Prev](pulseaudio-qt.md "pulseaudio-qt-1.8.1"){accesskey="p"}

    pulseaudio-qt-1.8.1

-   [Next](kquickimageeditor.md "kquickimageeditor-0.6.1"){accesskey="n"}

    kquickimageeditor-0.6.1

-   [Up](plasma.md "Chapter 32. KDE Plasma"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#qtkeychain}qtkeychain-0.16.0 {#qtkeychain-0.16.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to qtkeychain {#introduction-to-qtkeychain .sect2}

This package provides a Qt API to store passwords and other secret data securely.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/frankosterfeld/qtkeychain/archive/0.16.0/qtkeychain-0.16.0.tar.gz](https://github.com/frankosterfeld/qtkeychain/archive/0.16.0/qtkeychain-0.16.0.tar.gz){.ulink}

-   Download MD5 sum: f97ec6ec37a465abdea63c2def01f280

-   Download size: 64 KB

-   Estimated disk space required: 3.1 MB

-   Estimated build time: less than 0.1 SBU (Using parallelism=4)
:::

### qtkeychain Dependencies

#### Required

[Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of qtkeychain {#installation-of-qtkeychain .sect2}

Install [qtkeychain]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$QT6DIR \
      -D CMAKE_BUILD_TYPE=Release     \
      -D BUILD_WITH_QT6=ON            \
      -D BUILD_TESTING=OFF            \
      -W no-dev ..                    &&
make
```

This package does not come with a test suite.

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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libqt6keychain.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$QT6DIR/include/qt6keychain, \$QT6DIR/lib/cmake/Qt6Keychain, and \$QT6DIR/share/qt6keychain]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](pulseaudio-qt.md "pulseaudio-qt-1.8.1"){accesskey="p"}

    pulseaudio-qt-1.8.1

-   [Next](kquickimageeditor.md "kquickimageeditor-0.6.1"){accesskey="n"}

    kquickimageeditor-0.6.1

-   [Up](plasma.md "Chapter 32. KDE Plasma"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
