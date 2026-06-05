::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 32. KDE Plasma

-   [Prev](qtkeychain.md "qtkeychain-0.16.0"){accesskey="p"}

    qtkeychain-0.16.0

-   [Next](bolt.md "bolt-0.9.11"){accesskey="n"}

    bolt-0.9.11

-   [Up](plasma.md "Chapter 32. KDE Plasma"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kquickimageeditor}kquickimageeditor-0.6.1 {#kquickimageeditor-0.6.1 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to kquickimageeditor {#introduction-to-kquickimageeditor .sect2}

This package provides a set of QtQuick components providing basic image editing capabilities.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/KDE/kquickimageeditor/archive/v0.6.1/kquickimageeditor-0.6.1.tar.gz](https://github.com/KDE/kquickimageeditor/archive/v0.6.1/kquickimageeditor-0.6.1.tar.gz){.ulink}

-   Download MD5 sum: 26e15ed5f8da5b938c8db52b63830588

-   Download size: 4.3 MB

-   Estimated disk space required: 22 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### kquickimageeditor Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}

#### Optional

[opencv-4.13.0](../general/opencv.md "opencv-4.13.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of kquickimageeditor {#installation-of-kquickimageeditor .sect2}

Install [kquickimageeditor]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -W no-dev ..                        &&
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
**Installed Libraries:** [libKQuickImageEditor.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/include/KQuickImageEditor, \$KF6_PREFIX/include/kquickimageeditor, \$KF6_PREFIX/lib/cmake/KQuickImageEditor, and \$KF6_PREFIX/lib/qml/org/kde/kquickimageeditor]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](qtkeychain.md "qtkeychain-0.16.0"){accesskey="p"}

    qtkeychain-0.16.0

-   [Next](bolt.md "bolt-0.9.11"){accesskey="n"}

    bolt-0.9.11

-   [Up](plasma.md "Chapter 32. KDE Plasma"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
