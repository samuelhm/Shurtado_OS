::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](okular.md "okular-26.04.1"){accesskey="p"}

    okular-26.04.1

-   [Next](gwenview.md "gwenview-26.04.1"){accesskey="n"}

    gwenview-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libkdcraw}libkdcraw-26.04.1 {#libkdcraw-26.04.1 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libkdcraw {#introduction-to-libkdcraw .sect2}

[Libkdcraw]{.application} is a KDE wrapper around the [libraw-0.22.1](../general/libraw.md "libraw-0.22.1"){.xref} library for manipulating image metadata.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/libkdcraw-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/libkdcraw-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: 17bdcb0897ab7791f9a10db7f2e642c3

-   Download size: 40 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: less than 0.1 SBU
:::

### libkdcraw Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref} and [libraw-0.22.1](../general/libraw.md "libraw-0.22.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libkdcraw {#installation-of-libkdcraw .sect2}

Install [libkdcraw]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -D QT_MAJOR_VERSION=6               \
      -W no-dev .. &&
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
**Installed Library:** [libKDcrawQt6.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/include/KDcrawQt6 and \$KF6_PREFIX/lib/cmake/KDcrawQt6]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](okular.md "okular-26.04.1"){accesskey="p"}

    okular-26.04.1

-   [Next](gwenview.md "gwenview-26.04.1"){accesskey="n"}

    gwenview-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
