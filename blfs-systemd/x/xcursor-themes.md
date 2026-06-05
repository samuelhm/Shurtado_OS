::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](luit.md "luit-20250912"){accesskey="p"}

    luit-20250912

-   [Next](x7font.md "Xorg Fonts"){accesskey="n"}

    Xorg Fonts

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xcursor-themes}xcursor-themes-1.0.7 {#xcursor-themes-1.0.7 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xcursor-themes {#introduction-to-xcursor-themes .sect2}

The [xcursor-themes]{.application} package contains the redglass and whiteglass animated cursor themes.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/data/xcursor-themes-1.0.7.tar.xz](https://www.x.org/pub/individual/data/xcursor-themes-1.0.7.tar.xz){.ulink}

-   Download MD5 sum: 070993be1f010b09447ea24bab2c9846

-   Download size: 1.4 MB

-   Estimated disk space required: 15 MB

-   Estimated build time: less than 0.1 SBU
:::

### xcursor-themes Dependencies

#### Required

[Xorg Applications](x7app.md "Xorg Applications"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of xcursor-themes {#installation-of-xcursor-themes .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

We explicitly install the cursor themes in /usr instead of `$XORG_PREFIX`{.envar} so non-Xorg desktop environments can find them.
:::

Install [xcursor-themes]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::

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
**Installed Directories:** [/usr/share/icons/handhelds, /usr/share/icons/redglass, and /usr/share/icons/whiteglass]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](luit.md "luit-20250912"){accesskey="p"}

    luit-20250912

-   [Next](x7font.md "Xorg Fonts"){accesskey="n"}

    Xorg Fonts

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
