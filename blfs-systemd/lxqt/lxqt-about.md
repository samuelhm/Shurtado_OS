::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-admin.md "lxqt-admin-2.4.0"){accesskey="p"}

    lxqt-admin-2.4.0

-   [Next](lxqt-config.md "lxqt-config-2.4.0"){accesskey="n"}

    lxqt-config-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-about}lxqt-about-2.4.0 {#lxqt-about-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-about {#introduction-to-lxqt-about .sect2}

The [lxqt-about]{.application} package provides the standalone [LXQt]{.application} [“[About]{.quote}”]{.quote} dialog.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-about/releases/download/2.4.0/lxqt-about-2.4.0.tar.xz](https://github.com/lxqt/lxqt-about/releases/download/2.4.0/lxqt-about-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 12336bf5f198694c8a9736c4565c9a80

-   Download size: 52 KB

-   Estimated disk space required: 4.1 MB

-   Estimated build time: 0.1 SBU
:::

### lxqt-about Dependencies

#### Required

[liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-about {#installation-of-lxqt-about .sect2}

Install [lxqt-about]{.application} by running the following commands:

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
**Installed Program:** [lxqt-about]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- ----------------------------------------------------------------
  []{#lxqt-about-prog}[[**lxqt-about**]{.command}]{.term}   is the [LXQt]{.application} [“[About]{.quote}”]{.quote} dialog
  --------------------------------------------------------- ----------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-admin.md "lxqt-admin-2.4.0"){accesskey="p"}

    lxqt-admin-2.4.0

-   [Next](lxqt-config.md "lxqt-config-2.4.0"){accesskey="n"}

    lxqt-config-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
