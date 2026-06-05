::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](konversation.md "konversation-26.04.1"){accesskey="p"}

    konversation-26.04.1

-   [Next](plasma-activities.md "plasma-activities-6.6.5"){accesskey="n"}

    plasma-activities-6.6.5

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libkexiv2}libkexiv2-26.04.1 {#libkexiv2-26.04.1 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libkexiv2 {#introduction-to-libkexiv2 .sect2}

[Libkexiv2]{.application} is a KDE wrapper around the Exiv2 library for manipulating image metadata.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/libkexiv2-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/libkexiv2-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: 48b16a4071fe5319923dbad9b94749d1

-   Download size: 52 KB

-   Estimated disk space required: 4.1 MB

-   Estimated build time: 0.2 SBU
:::

### libkexiv2 Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref} and [Exiv2-0.28.8](../general/exiv2.md "Exiv2-0.28.8"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libkexiv2 {#installation-of-libkexiv2 .sect2}

Install [libkexiv2]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_WITH_QT6=ON                \
      -D BUILD_TESTING=OFF                \
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
**Installed Library:** [libKExiv2Qt6.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/include/KExiv2Qt6 and \$KF6_PREFIX/lib/cmake/KExiv2Qt6]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](konversation.md "konversation-26.04.1"){accesskey="p"}

    konversation-26.04.1

-   [Next](plasma-activities.md "plasma-activities-6.6.5"){accesskey="n"}

    plasma-activities-6.6.5

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
