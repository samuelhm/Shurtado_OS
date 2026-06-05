::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](pcmanfm-qt.md "pcmanfm-qt-2.4.0"){accesskey="p"}

    pcmanfm-qt-2.4.0

-   [Next](lxqt-runner.md "lxqt-runner-2.4.0"){accesskey="n"}

    lxqt-runner-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-powermanagement}lxqt-powermanagement-2.4.0 {#lxqt-powermanagement-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-powermanagement {#introduction-to-lxqt-powermanagement .sect2}

The [lxqt-powermanagement]{.application} package provides the power management module for [LXQt]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-powermanagement/releases/download/2.4.0/lxqt-powermanagement-2.4.0.tar.xz](https://github.com/lxqt/lxqt-powermanagement/releases/download/2.4.0/lxqt-powermanagement-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 3a2ed6c122e16e9c16b92009395ac397

-   Download size: 116 KB

-   Estimated disk space required: 9.8 MB

-   Estimated build time: 0.5 SBU
:::

### lxqt-powermanagement Dependencies

#### Required

[liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}, [kidletime-6.26.0 for lxqt](lxqt-kidletime.md "kidletime-6.26.0 for lxqt"){.xref}, [solid-6.26.0 for lxqt](lxqt-solid.md "solid-6.26.0 for lxqt"){.xref}, and [UPower-1.91.2](../general/upower.md "UPower-1.91.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-powermanagement {#installation-of-lxqt-powermanagement .sect2}

Install [lxqt-powermanagement]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&
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
**Installed Programs:** [lxqt-config-powermanagement and lxqt-powermanagement]{.segbody}
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

  -------------------------------------------------------------------------------------- --------------------------------------------------------------------
  []{#lxqt-config-powermanagement}[[**lxqt-config-powermanagement**]{.command}]{.term}   is the [**lxqt-powermanagement**]{.command} GUI configuration tool
  []{#lxqt-powermanagement-prog}[[**lxqt-powermanagement**]{.command}]{.term}            is the [LXQt]{.application} power management module
  -------------------------------------------------------------------------------------- --------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](pcmanfm-qt.md "pcmanfm-qt-2.4.0"){accesskey="p"}

    pcmanfm-qt-2.4.0

-   [Next](lxqt-runner.md "lxqt-runner-2.4.0"){accesskey="n"}

    lxqt-runner-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
