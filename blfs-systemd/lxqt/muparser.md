::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](lxqt-layer-shell-qt.md "layer-shell-qt-6.6.5 for lxqt"){accesskey="p"}

    layer-shell-qt-6.6.5 for lxqt

-   [Next](lxqt-build-tools.md "lxqt-build-tools-2.4.0"){accesskey="n"}

    lxqt-build-tools-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#muparser}muparser-2.3.5 {#muparser-2.3.5 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to muparser {#introduction-to-muparser .sect2}

The [muparser]{.application} package is a fast math parser library for C and C++.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/beltoforion/muparser/archive/v2.3.5/muparser-2.3.5.tar.gz](https://github.com/beltoforion/muparser/archive/v2.3.5/muparser-2.3.5.tar.gz){.ulink}

-   Download MD5 sum: 04d4224cb01712207b85af05a255b6fc

-   Download size: 116 KB

-   Estimated disk space required: 4.6 MB

-   Estimated build time: 0.1 SBU
:::

### muparser Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of muparser {#installation-of-muparser .sect2}

Install [muparser]{.application} by running the following commands:

``` userinput
mkdir -v build &&
cd       build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      ..                           &&
make
```

To test the results, issue: [**make test**]{.command}.

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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libmuparser.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/cmake/muparser]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ---------------------------------------------------
  []{#muparser-lib}[`muparser.so`{.filename}]{.term}   provides a fast math parser library for C and C++
  ---------------------------------------------------- ---------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-layer-shell-qt.md "layer-shell-qt-6.6.5 for lxqt"){accesskey="p"}

    layer-shell-qt-6.6.5 for lxqt

-   [Next](lxqt-build-tools.md "lxqt-build-tools-2.4.0"){accesskey="n"}

    lxqt-build-tools-2.4.0

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
