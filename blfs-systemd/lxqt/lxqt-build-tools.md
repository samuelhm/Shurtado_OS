::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](muparser.md "muparser-2.3.5"){accesskey="p"}

    muparser-2.3.5

-   [Next](libdbusmenu-lxqt.md "libdbusmenu-lxqt-0.4.0"){accesskey="n"}

    libdbusmenu-lxqt-0.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lxqt-build-tools}lxqt-build-tools-2.4.0 {#lxqt-build-tools-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lxqt-build-tools {#introduction-to-lxqt-build-tools .sect2}

The [lxqt-build-tools]{.application} package provides several tools needed to build LXQt itself as well as other components maintained by the LXQt project.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/lxqt-build-tools/releases/download/2.4.0/lxqt-build-tools-2.4.0.tar.xz](https://github.com/lxqt/lxqt-build-tools/releases/download/2.4.0/lxqt-build-tools-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: a480ab7ffadf032340d7b0a705585101

-   Download size: 28 KB

-   Estimated disk space required: 932 KB

-   Estimated build time: less than 0.1 SBU
:::

### lxqt-build-tools Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref} and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of lxqt-build-tools {#installation-of-lxqt-build-tools .sect2}

Install [lxqt-build-tools]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      .. &&

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
**Installed Program:** [lxqt2-transupdate]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/cmake/lxqt2-build-tools]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ------------------------------------------
  []{#lxqt2-transupdate}[[**lxqt2-transupdate**]{.command}]{.term}   updates translations for LXQt components
  ------------------------------------------------------------------ ------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](muparser.md "muparser-2.3.5"){accesskey="p"}

    muparser-2.3.5

-   [Next](libdbusmenu-lxqt.md "libdbusmenu-lxqt-0.4.0"){accesskey="n"}

    libdbusmenu-lxqt-0.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
