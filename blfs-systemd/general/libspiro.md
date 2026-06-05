::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](librsvg.md "librsvg-2.62.3"){accesskey="p"}

    librsvg-2.62.3

-   [Next](libtiff.md "libtiff-4.7.1"){accesskey="n"}

    libtiff-4.7.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libspiro}Libspiro-20220722 {#libspiro-20220722 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libspiro {#introduction-to-libspiro .sect2}

[Libspiro]{.application} will take an array of spiro control points and convert them into a series of bezier splines which can then be used in the myriad of ways the world has come to use beziers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/fontforge/libspiro/releases/download/20220722/libspiro-dist-20220722.tar.gz](https://github.com/fontforge/libspiro/releases/download/20220722/libspiro-dist-20220722.tar.gz){.ulink}

-   Download MD5 sum: c21f86e6c1ad65ed4cb1f754f6d7563c

-   Download size: 428 KB

-   Estimated disk space required: 5.1 MB (add 1.3 MB if running the tests)

-   Estimated build time: 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of libspiro {#installation-of-libspiro .sect2}

Install [libspiro]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
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
**Installed Library:** [libspiro.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------------------------------------
  []{#libspiro-lib}[`libspiro.so`{.filename}]{.term}   is a shareable library that can be used by programs to do the Spiro computations for you
  ---------------------------------------------------- ------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](librsvg.md "librsvg-2.62.3"){accesskey="p"}

    librsvg-2.62.3

-   [Next](libtiff.md "libtiff-4.7.1"){accesskey="n"}

    libtiff-4.7.1

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
