::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xclock.md "xclock-1.1.1"){accesskey="p"}

    xclock-1.1.1

-   [Next](xorg-config.md "Xorg-7 Testing and Configuration"){accesskey="n"}

    Xorg-7 Testing and Configuration

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xinit}xinit-1.4.4 {#xinit-1.4.4 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xinit {#introduction-to-xinit .sect2}

The [xinit]{.application} package contains a usable script to start the xserver.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/app/xinit-1.4.4.tar.xz](https://www.x.org/pub/individual/app/xinit-1.4.4.tar.xz){.ulink}

-   Download MD5 sum: e7430a710261c9129b1280f26cb159a5

-   Download size: 160 KB

-   Estimated disk space required: 1.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### xinit Dependencies

#### Required

[Xorg Libraries](x7lib.md "Xorg Libraries"){.xref}

#### Recommended (runtime only)

[twm-1.0.13.1](twm.md "twm-1.0.13.1"){.xref}, [xclock-1.1.1](xclock.md "xclock-1.1.1"){.xref}, and [xterm-410](xterm.md "xterm-410"){.xref} (used in the default `xinitrc`{.filename} file)
:::::

::: {.installation lang="en"}
## Installation of xinit {#installation-of-xinit .sect2}

Install [xinit]{.application} by running the following commands:

``` userinput
./configure $XORG_CONFIG --with-xinitdir=/etc/X11/app-defaults &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&
ldconfig
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xinit and startx]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- ------------------------------------
  []{#startx}[[**startx**]{.command}]{.term}     initializes an X session
  []{#xinit-bin}[[**xinit**]{.command}]{.term}   is the X Window System initializer
  ---------------------------------------------- ------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](xclock.md "xclock-1.1.1"){accesskey="p"}

    xclock-1.1.1

-   [Next](xorg-config.md "Xorg-7 Testing and Configuration"){accesskey="n"}

    Xorg-7 Testing and Configuration

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
