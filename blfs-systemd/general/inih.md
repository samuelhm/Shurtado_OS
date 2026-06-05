::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](icu.md "icu-78.3"){accesskey="p"}

    icu-78.3

-   [Next](jansson.md "Jansson-2.15.0"){accesskey="n"}

    Jansson-2.15.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#inih}inih-62 {#inih-62 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to inih {#introduction-to-inih .sect2}

This package is a simple .INI file parser written in C.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/benhoyt/inih/archive/r62/inih-r62.tar.gz](https://github.com/benhoyt/inih/archive/r62/inih-r62.tar.gz){.ulink}

-   Download MD5 sum: c0c6982525958a0376a3cb5bfbee14a0

-   Download size: 24 KB

-   Estimated disk space required: 2 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of inih {#installation-of-inih .sect2}

Install [inih]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libinih.so and libINIReader.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ----------------------------
  []{#libinih}[`libinih.so`{.filename}]{.term}             is the inih main library
  []{#libINIReader}[`libINIReader.so`{.filename}]{.term}   is the inih parser library
  -------------------------------------------------------- ----------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](icu.md "icu-78.3"){accesskey="p"}

    icu-78.3

-   [Next](jansson.md "Jansson-2.15.0"){accesskey="n"}

    Jansson-2.15.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
