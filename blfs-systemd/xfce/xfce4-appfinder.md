::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](tumbler.md "tumbler-4.20.1"){accesskey="p"}

    tumbler-4.20.1

-   [Next](xfce4-power-manager.md "xfce4-power-manager-4.20.0"){accesskey="n"}

    xfce4-power-manager-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfce4-appfinder}xfce4-appfinder-4.20.0 {#xfce4-appfinder-4.20.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xfce4 Appfinder {#introduction-to-xfce4-appfinder .sect2}

[Xfce4 Appfinder]{.application} is a tool to find and launch installed applications by searching the .desktop files installed on your system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/xfce4-appfinder/4.20/xfce4-appfinder-4.20.0.tar.bz2](https://archive.xfce.org/src/xfce/xfce4-appfinder/4.20/xfce4-appfinder-4.20.0.tar.bz2){.ulink}

-   Download MD5 sum: e60f6c2521a985c6cfe09057d4fb2d69

-   Download size: 716 KB

-   Estimated disk space required: 7.3 MB

-   Estimated build time: less than 0.1 SBU
:::

### Xfce4 Appfinder Dependencies

#### Required

[Garcon-4.20.0](garcon.md "Garcon-4.20.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Xfce4 Appfinder {#installation-of-xfce4-appfinder .sect2}

Install [Xfce4 Appfinder]{.application} by running the following commands:

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

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xfce4-appfinder and xfrun4 (symlink)]{.segbody}
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

  ------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#xfce4-appfinder-prog}[[**xfce4-appfinder**]{.command}]{.term}   Is a [GTK+ 3]{.application} application that enables you to quickly search through the .desktop files installed on your system looking for an application
  ------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](tumbler.md "tumbler-4.20.1"){accesskey="p"}

    tumbler-4.20.1

-   [Next](xfce4-power-manager.md "xfce4-power-manager-4.20.0"){accesskey="n"}

    xfce4-power-manager-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
