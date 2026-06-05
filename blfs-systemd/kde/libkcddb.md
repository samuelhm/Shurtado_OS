::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](gwenview.md "gwenview-26.04.1"){accesskey="p"}

    gwenview-26.04.1

-   [Next](k3b.md "k3b-26.04.1"){accesskey="n"}

    k3b-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libkcddb}libkcddb-26.04.1 {#libkcddb-26.04.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libkcddb {#introduction-to-libkcddb .sect2}

The [libkcddb]{.application} package contains a library used to retrieve audio CD meta data from the internet.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/libkcddb-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/libkcddb-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: b84581fa45d611ec719c51aaf00687d3

-   Download size: 440 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.3 SBU
:::

### libkcddb Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}

#### Recommended

[libmusicbrainz-5.1.0](../multimedia/libmusicbrainz5.md "libmusicbrainz-5.1.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libkcddb {#installation-of-libkcddb .sect2}

Install [libkcddb]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -D QT_MAJOR_VERSION=6               \
      -W no-dev ..                        &&
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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libKCddb6.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/include/KCddb6 \$KF6_PREFIX/lib/cmake/KCddb6 \$KF6_PREFIX/share/doc/HTML/\*/kcontrol]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- --------------------------------------------------------------------------
  []{#libkcddb-lib}[`libKCddb6.so`{.filename}]{.term}   contains functions used to retrieve audio CD meta data from the internet
  ----------------------------------------------------- --------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](gwenview.md "gwenview-26.04.1"){accesskey="p"}

    gwenview-26.04.1

-   [Next](k3b.md "k3b-26.04.1"){accesskey="n"}

    k3b-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
