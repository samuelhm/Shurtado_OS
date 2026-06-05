::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](bogofilter.md "Bogofilter-1.2.5"){accesskey="p"}

    Bogofilter-1.2.5

-   [Next](desktop-file-utils.md "desktop-file-utils-0.28"){accesskey="n"}

    desktop-file-utils-0.28

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#compface}Compface-1.5.2 {#compface-1.5.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Compface {#introduction-to-compface .sect2}

[Compface]{.application} provides utilities and a library to convert from/to X-Face format, a 48x48 bitmap format used to carry thumbnails of email authors in a mail header.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://anduin.linuxfromscratch.org/BLFS/compface/compface-1.5.2.tar.gz](https://anduin.linuxfromscratch.org/BLFS/compface/compface-1.5.2.tar.gz){.ulink}

-   Download MD5 sum: 62f4f79c0861ad292ba3cf77b4c48319

-   Download size: 47 KB

-   Estimated disk space required: 520 KB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of Compface {#installation-of-compface .sect2}

First, fix the configure script so that it's C99 compatible:

``` userinput
autoreconf
```

Next, fix a build failure that occurs with GCC 14:

``` userinput
sed -e '/compface.h/a #include <unistd.h>' \
    -i cmain.c                             \
    -i uncmain.c
```

Install [Compface]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --mandir=/usr/share/man &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -m755 -v xbm2xface.pl /usr/bin
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [compface, uncompface and xbm2xface.pl]{.segbody}
:::

::: seg
**Installed Library:** [libcompface.a]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- -----------------------------------------------------------------------------------------------
  []{#compface-prog}[[**compface**]{.command}]{.term}   is a filter for generating highly compressed representations of 48x48x1 face image files
  []{#uncompface}[[**uncompface**]{.command}]{.term}    is an inverse filter which performs an inverse transformation with no loss of data
  []{#xbm2xface}[[**xbm2xface.pl**]{.command}]{.term}   is a script to generate xfaces
  []{#libcompface}[`libcompface.a`{.filename}]{.term}   allows the compression and decompression algorithms to be used in other programs such as MTAs
  ----------------------------------------------------- -----------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](bogofilter.md "Bogofilter-1.2.5"){accesskey="p"}

    Bogofilter-1.2.5

-   [Next](desktop-file-utils.md "desktop-file-utils-0.28"){accesskey="n"}

    desktop-file-utils-0.28

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
