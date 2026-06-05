::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](intltool.md "Intltool-0.51.0"){accesskey="p"}

    Intltool-0.51.0

-   [Next](lsof.md "lsof-4.99.6"){accesskey="n"}

    lsof-4.99.6

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#iso-codes}ISO Codes-4.20.1 {#iso-codes-4.20.1 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to ISO Codes {#introduction-to-iso-codes .sect2}

The [ISO Codes]{.application} package contains a list of country, language and currency names and it is used as a central database for accessing this data.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://salsa.debian.org/iso-codes-team/iso-codes/-/archive/v4.20.1/iso-codes-v4.20.1.tar.gz](https://salsa.debian.org/iso-codes-team/iso-codes/-/archive/v4.20.1/iso-codes-v4.20.1.tar.gz){.ulink}

-   Download MD5 sum: a8f16a62662ec13e55ca255a7c036ee3

-   Download size: 16 MB

-   Estimated disk space required: 114 MB

-   Estimated build time: less than 0.1 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of ISO Codes {#installation-of-iso-codes .sect2}

Install [ISO Codes]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
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
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/iso-codes, /usr/share/xml/iso-codes]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](intltool.md "Intltool-0.51.0"){accesskey="p"}

    Intltool-0.51.0

-   [Next](lsof.md "lsof-4.99.6"){accesskey="n"}

    lsof-4.99.6

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
