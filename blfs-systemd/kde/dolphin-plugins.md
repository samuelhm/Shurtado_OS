::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](dolphin.md "dolphin-26.04.1"){accesskey="p"}

    dolphin-26.04.1

-   [Next](kddockwidgets.md "KDDockWidgets-2.4.0"){accesskey="n"}

    KDDockWidgets-2.4.0

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dolphin-plugins}dolphin-plugins-26.04.1 {#dolphin-plugins-26.04.1 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to dolphin-plugins {#introduction-to-dolphin-plugins .sect2}

The [dolphin-plugins]{.application} package provides extra plugins for the dolphin file manager.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/dolphin-plugins-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/dolphin-plugins-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: 637868449572455b2b05b5608b9c7268

-   Download size: 332 KB

-   Estimated disk space required: 28 MB

-   Estimated build time: 0.2 SBU (using parallelism=4)
:::

### dolphin-plugins Dependencies

#### Required

[dolphin-26.04.1](dolphin.md "dolphin-26.04.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of dolphin-plugins {#installation-of-dolphin-plugins .sect2}

Install [dolphin-plugins]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -W no-dev .. &&
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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [In \$KF6_PREFIX/lib/plugins/dolphin/vcs/: fileviewsvnplugin.so, fileviewgitplugin.so, fileviewbazaarplugin.so, fileviewdropboxplugin.so, fileviewhgplugin.so, makefileactions.so, and mountisoaction.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](dolphin.md "dolphin-26.04.1"){accesskey="p"}

    dolphin-26.04.1

-   [Next](kddockwidgets.md "KDDockWidgets-2.4.0"){accesskey="n"}

    KDDockWidgets-2.4.0

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
