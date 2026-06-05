::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](kf-apps.md "KDE Frameworks 6 Based Applications"){accesskey="p"}

    KDE Frameworks 6 Based Applications

-   [Next](dolphin.md "dolphin-26.04.1"){accesskey="n"}

    dolphin-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ark}ark-26.04.1 {#ark-26.04.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Ark {#introduction-to-ark .sect2}

The [Ark]{.application} package is a KDE Frameworks-based Archive Manager. It is a graphical front end to tar, 7zip, UnRar, and other similar tools.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/ark-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/ark-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: 69d58a69c2e812cd079b7cd6f366076a

-   Download size: 2.9 MB

-   Estimated disk space required: 45 MB

-   Estimated build time: 0.4 SBU (using parallelism=4)
:::

### Ark Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref} and [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref}

#### Recommended

[7zip-26.01](../general/7zip.md "7zip-26.01"){.xref}, [cpio-2.15](../general/cpio.md "cpio-2.15"){.xref}, [UnRar-7.2.4](../general/unrar.md "UnRar-7.2.4"){.xref}, and [Zip-3.0](../general/zip.md "Zip-3.0"){.xref}

#### Optional

[arj](https://arj.sourceforge.net/){.ulink}, [lrzip](https://github.com/ckolivas/lrzip){.ulink}, [lzop](https://www.lzop.org/){.ulink}, [rar](https://www.rarlab.com/){.ulink}, and [unar](https://theunarchiver.com/command-line){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Ark {#installation-of-ark .sect2}

Install [Ark]{.application} by running the following commands:

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
**Installed Programs:** [ark]{.segbody}
:::

::: seg
**Installed Libraries:** [libkerfuffle.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/lib/plugins/kerfuffle and \$KF6_PREFIX/share/doc/HTML/\*/ark]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------- -------------------------------------------
  []{#ark-prog}[[**ark**]{.command}]{.term}   is a KDE Frameworks-based Archive Manager
  ------------------------------------------- -------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](kf-apps.md "KDE Frameworks 6 Based Applications"){accesskey="p"}

    KDE Frameworks 6 Based Applications

-   [Next](dolphin.md "dolphin-26.04.1"){accesskey="n"}

    dolphin-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
