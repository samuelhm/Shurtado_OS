::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-themes.md "lxqt-themes-2.4.0"){accesskey="p"}

    lxqt-themes-2.4.0

-   [Next](lxqt-about.md "lxqt-about-2.4.0"){accesskey="n"}

    lxqt-about-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-admin}lxqt-admin-2.4.0 {#lxqt-admin-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-admin {#introduction-to-lxqt-admin .sect2}

The [lxqt-admin]{.application} package provides two GUI tools to adjust settings of the operating system [LXQt]{.application} is running on.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-admin/releases/download/2.4.0/lxqt-admin-2.4.0.tar.xz](https://github.com/lxqt/lxqt-admin/releases/download/2.4.0/lxqt-admin-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 77a73ebdfad37f8d0948fe20011c24db

-   Download size: 160 KB

-   Estimated disk space required: 5.8 MB

-   Estimated build time: 0.3 SBU
:::

### lxqt-admin Dependencies

#### Required

[liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref} and [Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-admin {#installation-of-lxqt-admin .sect2}

Install [lxqt-admin]{.application} by running the following commands:

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
**Installed Program:** [lxqt-admin-time, lxqt-admin-user, and lxqt-admin-user-helper]{.segbody}
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

  -------------------------------------------------------------- ----------------------------------------------
  []{#lxqt-admin-time}[[**lxqt-admin-time**]{.command}]{.term}   is a GUI to adjust the current time and date
  []{#lxqt-admin-user}[[**lxqt-admin-user**]{.command}]{.term}   is a GUI to manage users and groups
  -------------------------------------------------------------- ----------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-themes.md "lxqt-themes-2.4.0"){accesskey="p"}

    lxqt-themes-2.4.0

-   [Next](lxqt-about.md "lxqt-about-2.4.0"){accesskey="n"}

    lxqt-about-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
