::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](x7app.md "Xorg Applications"){accesskey="p"}

    Xorg Applications

-   [Next](xcursor-themes.md "xcursor-themes-1.0.7"){accesskey="n"}

    xcursor-themes-1.0.7

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#luit}luit-20250912 {#luit-20250912 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to luit {#introduction-to-luit .sect2}

The [luit]{.application} package is a filter that can be run between an arbitrary application and a UTF-8 terminal emulator. It will convert application output from the locale’s encoding into UTF‐8, and convert terminal input from UTF‐8 into the locale’s encoding.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://invisible-mirror.net/archives/luit/luit-20250912.tgz](https://invisible-mirror.net/archives/luit/luit-20250912.tgz){.ulink}

-   Download MD5 sum: d03e636d2f919bb21e77aec16a53247d

-   Download size: 212 KB

-   Estimated disk space required: 1.8 MB

-   Estimated build time: less than 0.1 SBU
:::

### luit Dependencies

#### Required

[Xorg Applications](x7app.md "Xorg Applications"){.xref}
:::::

::: {.installation lang="en"}
## Installation of luit {#installation-of-luit .sect2}

Install [luit]{.application} by running the following commands:

``` userinput
./configure $XORG_CONFIG &&
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
**Installed Programs:** [luit]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](x7app.md "Xorg Applications"){accesskey="p"}

    Xorg Applications

-   [Next](xcursor-themes.md "xcursor-themes-1.0.7"){accesskey="n"}

    xcursor-themes-1.0.7

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
