::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](thunar.md "thunar-4.20.8"){accesskey="p"}

    thunar-4.20.8

-   [Next](tumbler.md "tumbler-4.20.1"){accesskey="n"}

    tumbler-4.20.1

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#thunar-volman}thunar-volman-4.20.0 {#thunar-volman-4.20.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to the Thunar Volume Manager {#introduction-to-the-thunar-volume-manager .sect2}

The [Thunar Volume Manager]{.application} is an extension for the [Thunar]{.application} file manager, which enables automatic management of removable drives and media.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/thunar-volman/4.20/thunar-volman-4.20.0.tar.bz2](https://archive.xfce.org/src/xfce/thunar-volman/4.20/thunar-volman-4.20.0.tar.bz2){.ulink}

-   Download MD5 sum: 34c8e0af77ea3894db7e3d164998f9bf

-   Download size: 624 KB

-   Estimated disk space required: 7.0 MB

-   Estimated build time: less than 0.1 SBU
:::

### Thunar Volume Manager Dependencies

#### Required

[Exo-4.20.0](exo.md "Exo-4.20.0"){.xref} and [libgudev-238](../general/libgudev.md "libgudev-238"){.xref}

#### Recommended

[libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}

#### Recommended Runtime Dependency

[Gvfs-1.60.0](../gnome/gvfs.md "Gvfs-1.60.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of the Thunar Volume Manager {#installation-of-the-thunar-volume-manager .sect2}

Install the [Thunar Volume Manager]{.application} by running the following commands:

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
**Installed Programs:** [thunar-volman and thunar-volman-settings]{.segbody}
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

  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------
  []{#thunar-volman-prog}[[**thunar-volman**]{.command}]{.term}                is the [Thunar]{.application} Volume Manager, a command line utility to automatically mount or unmount removable media
  []{#thunar-volman-settings}[[**thunar-volman-settings**]{.command}]{.term}   is a small [GTK+ 3]{.application} application for changing [Thunar Volume Manager]{.application} settings
  ---------------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](thunar.md "thunar-4.20.8"){accesskey="p"}

    thunar-4.20.8

-   [Next](tumbler.md "tumbler-4.20.1"){accesskey="n"}

    tumbler-4.20.1

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
