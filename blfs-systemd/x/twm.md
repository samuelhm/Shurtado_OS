::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](x7driver.md "Xorg Input Drivers"){accesskey="p"}

    Xorg Input Drivers

-   [Next](xterm.md "xterm-410"){accesskey="n"}

    xterm-410

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#twm}twm-1.0.13.1 {#twm-1.0.13.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to twm {#introduction-to-twm .sect2}

The [twm]{.application} package contains a very minimal window manager.

This package is provided for testing the completed Xorg installation.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/app/twm-1.0.13.1.tar.xz](https://www.x.org/pub/individual/app/twm-1.0.13.1.tar.xz){.ulink}

-   Download MD5 sum: 2a337b776c904eab5b874eddc0124d4f

-   Download size: 268 KB

-   Estimated disk space required: 3.8 MB

-   Estimated build time: less than 0.1 SBU
:::

### twm Dependencies

#### Required

[Xorg-Server-21.1.23](xorg-server.md "Xorg-Server-21.1.23"){.xref}
:::::

::: {.installation lang="en"}
## Installation of twm {#installation-of-twm .sect2}

Install [twm]{.application} by running the following commands:

``` userinput
sed -i -e '/^rcdir =/s,^\(rcdir = \).*,\1/etc/X11/app-defaults,' src/Makefile.in &&
./configure $XORG_CONFIG &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i -e '/\^rcdir =/s...**]{.command}: This command ensures the [twm]{.application} configuration file gets installed in the proper location.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [twm]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/etc/X11/app-defaults]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------ ---------------------------------------------------
  []{#twm-bin}[[**twm**]{.command}]{.term}   is the Tab Window Manager for the X Window System
  ------------------------------------------ ---------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](x7driver.md "Xorg Input Drivers"){accesskey="p"}

    Xorg Input Drivers

-   [Next](xterm.md "xterm-410"){accesskey="n"}

    xterm-410

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
