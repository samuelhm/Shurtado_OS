::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](lxqt-archiver.md "lxqt-archiver-1.4.0"){accesskey="p"}

    lxqt-archiver-1.4.0

-   [Next](pavucontrol-qt.md "pavucontrol-qt-2.4.0"){accesskey="n"}

    pavucontrol-qt-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-notificationd}lxqt-notificationd-2.4.0 {#lxqt-notificationd-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-notificationd {#introduction-to-lxqt-notificationd .sect2}

The [lxqt-notificationd]{.application} package is the [LXQt]{.application} notification daemon.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-notificationd/releases/download/2.4.0/lxqt-notificationd-2.4.0.tar.xz](https://github.com/lxqt/lxqt-notificationd/releases/download/2.4.0/lxqt-notificationd-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 053f0b2de428b53fa4ce6e2f94ff2217

-   Download size: 72 KB

-   Estimated disk space required: 6.2 MB

-   Estimated build time: 0.3 SBU
:::

### lxqt-notificationd Dependencies

#### Required

[liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-notificationd {#installation-of-lxqt-notificationd .sect2}

Install [lxqt-notificationd]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_PREFIX=/usr \
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
**Installed Programs:** [lxqt-config-notificationd and lxqt-notificationd]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/lxqt/translations/lxqt-config-notificationd and /usr/share/lxqt/translations/lxqt-notificationd]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------------- ------------------------------------------------------------------
  []{#lxqt-config-notificationd}[[**lxqt-config-notificationd**]{.command}]{.term}   is the [**lxqt-notificationd**]{.command} GUI configuration tool
  []{#lxqt-notificationd-prog}[[**lxqt-notificationd**]{.command}]{.term}            is the [LXQt]{.application} notification daemon
  ---------------------------------------------------------------------------------- ------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-archiver.md "lxqt-archiver-1.4.0"){accesskey="p"}

    lxqt-archiver-1.4.0

-   [Next](pavucontrol-qt.md "pavucontrol-qt-2.4.0"){accesskey="n"}

    pavucontrol-qt-2.4.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
