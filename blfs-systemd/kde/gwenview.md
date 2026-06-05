::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](libkdcraw.md "libkdcraw-26.04.1"){accesskey="p"}

    libkdcraw-26.04.1

-   [Next](libkcddb.md "libkcddb-26.04.1"){accesskey="n"}

    libkcddb-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gwenview}gwenview-26.04.1 {#gwenview-26.04.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gwenview {#introduction-to-gwenview .sect2}

[Gwenview]{.application} is a fast and easy-to-use image viewer for KDE.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/gwenview-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/gwenview-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: faa0e54e7f7aca276dbf8f1c70682f9d

-   Download size: 6.2 MB

-   Estimated disk space required: 71 MB

-   Estimated build time: 0.7 SBU (using parallelism=4)
:::

### Gwenview Dependencies

#### Required

[Exiv2-0.28.8](../general/exiv2.md "Exiv2-0.28.8"){.xref}, [kimageannotator-0.7.2](../x/kimageannotator.md "kImageAnnotator-0.7.2"){.xref}, [KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}, and [Little CMS-2.19.1](../general/lcms2.md "Little CMS-2.19.1"){.xref}

#### Recommended

[libkdcraw-26.04.1](libkdcraw.md "libkdcraw-26.04.1"){.xref}

#### Optional

[plasma-activities-6.6.5](plasma-activities.md "plasma-activities-6.6.5"){.xref} and [CFitsio](https://heasarc.gsfc.nasa.gov/fitsio/fitsio.md){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Gwenview {#installation-of-gwenview .sect2}

Install [Gwenview]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
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

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [gwenview and gwenview_importer]{.segbody}
:::

::: seg
**Installed Libraries:** [libgwenviewlib.so and gvpart.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/share/{gwenview,doc/HTML/\*/gwenview}]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ -------------------------
  []{#gwenview-prog}[[**gwenview**]{.command}]{.term}                is the KDE image viewer
  []{#gwenview-importer}[[**gwenview_importer**]{.command}]{.term}   is a Photo importer
  ------------------------------------------------------------------ -------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libkdcraw.md "libkdcraw-26.04.1"){accesskey="p"}

    libkdcraw-26.04.1

-   [Next](libkcddb.md "libkcddb-26.04.1"){accesskey="n"}

    libkcddb-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
