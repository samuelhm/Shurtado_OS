::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 37. LXQt Desktop

-   [Prev](libsysstat.md "libsysstat-1.1.0"){accesskey="p"}

    libsysstat-1.1.0

-   [Next](libfm-extra.md "libfm-extra-1.3.2"){accesskey="n"}

    libfm-extra-1.3.2

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#qtxdg-tools}qtxdg-tools-4.4.0 {#qtxdg-tools-4.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to qtxdg-tools {#introduction-to-qtxdg-tools .sect2}

The [qtxdg-tools]{.application} contains a CLI MIME tool for handling file associations and opening files with their default applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/qtxdg-tools/releases/download/4.4.0/qtxdg-tools-4.4.0.tar.xz](https://github.com/lxqt/qtxdg-tools/releases/download/4.4.0/qtxdg-tools-4.4.0.tar.xz){.ulink}

-   Download MD5 sum: e5d4680526ed7751eb2ee8068c14cf50

-   Download size: 20 KB

-   Estimated disk space required: 2.1 MB

-   Estimated build time: 0.1 SBU
:::

### qtxdg-tools Dependencies

#### Required

[libqtxdg-4.4.0](libqtxdg.md "libqtxdg-4.4.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of qtxdg-tools {#installation-of-qtxdg-tools .sect2}

Install [qtxdg-tools]{.application} by running the following commands:

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
**Installed Programs:** [qtxdg-mat]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/cmake/qtxdg-tools]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
  []{#qtxdg-mat}[[**qtxdg-mat**]{.command}]{.term}   queries and modifies defaults for applications, such as the default terminal, web browser, email client, and file manager
  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libsysstat.md "libsysstat-1.1.0"){accesskey="p"}

    libsysstat-1.1.0

-   [Next](libfm-extra.md "libfm-extra-1.3.2"){accesskey="n"}

    libfm-extra-1.3.2

-   [Up](lxqt-desktop.md "Chapter 37. LXQt Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
