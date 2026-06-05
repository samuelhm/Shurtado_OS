::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](kio-extras.md "kio-extras-26.04.1"){accesskey="p"}

    kio-extras-26.04.1

-   [Next](libkdcraw.md "libkdcraw-26.04.1"){accesskey="n"}

    libkdcraw-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#okular}okular-26.04.1 {#okular-26.04.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Okular {#introduction-to-okular .sect2}

Okular is a document viewer for KDE. It can view documents of many types including PDF, PostScript, TIFF, DjVu, DVI, XPS, and ePub.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/okular-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/okular-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: b67f0b8e8bafe845a7dbf5e56326dea9

-   Download size: 7.9 MB

-   Estimated disk space required: 99 MB

-   Estimated build time: 1.1 SBU (using parallelism=4)
:::

### Okular Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref} and [plasma-activities-6.6.5](plasma-activities.md "plasma-activities-6.6.5"){.xref}

#### Recommended

[libkexiv2-26.04.1](libkexiv2.md "libkexiv2-26.04.1"){.xref}, [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}, [phonon-4.12.0](phonon.md "Phonon-4.12.0"){.xref}, and [Poppler-26.06.0](../general/poppler.md "Poppler-26.06.0"){.xref} (built with Qt6, required for PDF support)

#### Optional

[qca-2.3.10](../general/qca.md "Qca-2.3.10"){.xref}, [discount](https://www.pell.portland.or.us/~orc/Code/discount/){.ulink}, [DjVuLibre](https://djvu.sourceforge.net/){.ulink}, [libspectre](https://libspectre.freedesktop.org/){.ulink}, [libepub](https://sourceforge.net/projects/ebook-tools){.ulink}, and [LibZip](https://libzip.org){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of Okular {#installation-of-okular .sect2}

Install [Okular]{.application} by running the following commands:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If any of the optional dependencies are installed, remove the associated reference in the SKIP_OPTIONAL environment variable.
:::

``` userinput
mkdir build &&
cd    build &&

SKIP_OPTIONAL='Discount;DjVuLibre;EPub;LibSpectre;LibZip'

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -D FORCE_NOT_REQUIRED_DEPENDENCIES="$SKIP_OPTIONAL" \
      -W no-dev .. &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [okular]{.segbody}
:::

::: seg
**Installed Library:** [Okular6Core.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/include/okular, \$KF6_PREFIX/lib/cmake/Okular6, \$KF6_PREFIX/lib/plugins/okular, \$KF6_PREFIX/share/okular, and \$KF6_PREFIX/share/doc/HTML/\*/okular]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------- ------------------------------
  []{#okular-prog}[[**okular**]{.command}]{.term}   is a document viewer for KDE
  ------------------------------------------------- ------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](kio-extras.md "kio-extras-26.04.1"){accesskey="p"}

    kio-extras-26.04.1

-   [Next](libkdcraw.md "libkdcraw-26.04.1"){accesskey="n"}

    libkdcraw-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
