::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libjxl.md "libjxl-0.11.2"){accesskey="p"}

    libjxl-0.11.2

-   [Next](libmypaint.md "libmypaint-1.6.1"){accesskey="n"}

    libmypaint-1.6.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libmng}libmng-2.0.3 {#libmng-2.0.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libmng {#introduction-to-libmng .sect2}

The [libmng]{.application} libraries are used by programs wanting to read and write Multiple-image Network Graphics (MNG) files which are the animation equivalents to PNG files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/libmng/libmng-2.0.3.tar.xz](https://downloads.sourceforge.net/libmng/libmng-2.0.3.tar.xz){.ulink}

-   Download MD5 sum: e9e899adb1b681b17f14d91e261878c5

-   Download size: 932 KB

-   Estimated disk space required: 15 MB

-   Estimated build time: 0.1 SBU
:::

### libmng Dependencies

#### Required

[libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref} and [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of libmng {#installation-of-libmng .sect2}

Install [libmng]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&

install -v -m755 -d        /usr/share/doc/libmng-2.0.3 &&
install -v -m644 doc/*.txt /usr/share/doc/libmng-2.0.3
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libmng.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/libmng-2.0.3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#libmng-lib}[`libmng.so`{.filename}]{.term}   provides functions for programs wishing to read and write MNG files which are animation files without the patent problems associated with certain other formats
  ------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libjxl.md "libjxl-0.11.2"){accesskey="p"}

    libjxl-0.11.2

-   [Next](libmypaint.md "libmypaint-1.6.1"){accesskey="n"}

    libmypaint-1.6.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
