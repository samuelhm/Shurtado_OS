::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-runner.md "lxqt-runner-2.4.0"){accesskey="p"}

    lxqt-runner-2.4.0

-   [Next](lxqt-admin.md "lxqt-admin-2.4.0"){accesskey="n"}

    lxqt-admin-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-themes}lxqt-themes-2.4.0 {#lxqt-themes-2.4.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-themes {#introduction-to-lxqt-themes .sect2}

The [lxqt-themes]{.application} package provides a number of graphics files and themes for the [LXQt]{.application} desktop.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-themes/releases/download/2.4.0/lxqt-themes-2.4.0.tar.xz](https://github.com/lxqt/lxqt-themes/releases/download/2.4.0/lxqt-themes-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 5f7a80bc279fc8063ecd077653f3731b

-   Download size: 26 MB

-   Estimated disk space required: 29 MB

-   Estimated build time: less than 0.1 SBU
:::

### lxqt-themes Dependencies

#### Required

[lxqt-build-tools-2.4.0](lxqt-build-tools.md "lxqt-build-tools-2.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-themes {#installation-of-lxqt-themes .sect2}

Install [lxqt-themes]{.application} by running the following commands:

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

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/lxqt/{graphics,themes,palettes,wallpapers}]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](lxqt-runner.md "lxqt-runner-2.4.0"){accesskey="p"}

    lxqt-runner-2.4.0

-   [Next](lxqt-admin.md "lxqt-admin-2.4.0"){accesskey="n"}

    lxqt-admin-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
