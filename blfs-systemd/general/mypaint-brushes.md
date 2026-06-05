::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libwebp.md "libwebp-1.6.0"){accesskey="p"}

    libwebp-1.6.0

-   [Next](newt.md "newt-0.52.25"){accesskey="n"}

    newt-0.52.25

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mypaint-brushes}mypaint-brushes-2.0.2 {#mypaint-brushes-2.0.2 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to mypaint-brushes {#introduction-to-mypaint-brushes .sect2}

The [mypaint-brushes]{.application} package contains brushes used by packages which use libmypaint.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/mypaint/mypaint-brushes/releases/download/v2.0.2/mypaint-brushes-2.0.2.tar.xz](https://github.com/mypaint/mypaint-brushes/releases/download/v2.0.2/mypaint-brushes-2.0.2.tar.xz){.ulink}

-   Download MD5 sum: ce965cd5d75947b7beca5ed3ee4521d2

-   Download size: 1.5 MB

-   Estimated disk space required: 4.1 MB

-   Estimated build time: less than 0.1 SBU
:::

### mypaint-brushes Dependencies

#### Required at runtime

[libmypaint-1.6.1](libmypaint.md "libmypaint-1.6.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of mypaint-brushes {#installation-of-mypaint-brushes .sect2}

Install [mypaint-brushes]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
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
**Installed Programs:** [None.]{.segbody}
:::

::: seg
**Installed Libraries:** [None.]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/mypaint-data.]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](libwebp.md "libwebp-1.6.0"){accesskey="p"}

    libwebp-1.6.0

-   [Next](newt.md "newt-0.52.25"){accesskey="n"}

    newt-0.52.25

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
