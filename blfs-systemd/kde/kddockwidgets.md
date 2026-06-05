::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](dolphin-plugins.md "dolphin-plugins-26.04.1"){accesskey="p"}

    dolphin-plugins-26.04.1

-   [Next](kdenlive.md "kdenlive-26.04.1"){accesskey="n"}

    kdenlive-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kddockwidgets}KDDockWidgets-2.4.0 {#kddockwidgets-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to KDDockWidgets {#introduction-to-kddockwidgets .sect2}

The [KDDockWidgets]{.application} package provides Qt dock widgets that are suitable for replacing QDockWidget and implementing advanced functionality that is missing from Qt.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/KDAB/KDDockWidgets/releases/download/v2.4.0/KDDockWidgets-2.4.0.tar.gz](https://github.com/KDAB/KDDockWidgets/releases/download/v2.4.0/KDDockWidgets-2.4.0.tar.gz){.ulink}

-   Download MD5 sum: 6ad73ca8501c207d99116210054814aa

-   Download size: 5.4 MB

-   Estimated disk space required: 117 MB

-   Estimated build time: 0.6 SBU (using parallelism=4)
:::

### KDDockWidgets Dependencies

#### Required

[fmt-12.1.0](../general/fmt.md "fmt-12.1.0"){.xref}, [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref}, and [Vulkan-Loader-1.4.350.0](../x/vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref}

#### Optional

[KDBindings](https://github.com/KDAB/KDBindings){.ulink}, [nlohmann_json](https://github.com/nlohmann/json){.ulink}, and [spdlog](https://github.com/gabime/spdlog){.ulink}
:::::

::: {.installation lang="en"}
## Installation of KDDockWidgets {#installation-of-kddockwidgets .sect2}

Install [KDDockWidgets]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -W no-dev .. &&
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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libkddockwidgets-qt6.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/cmake/KDDockWidgets-qt6, \$KF6_PREFIX/include/kddockwidgets-qt6, and \$KF6_PREFIX/share/doc/kddockwidgets]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- -----------------------------------------------
  []{#libkddockwidgets-qt6.so}[libkddockwidgets-qt6.so]{.term}   is a library containing Qt-based dock widgets
  -------------------------------------------------------------- -----------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](dolphin-plugins.md "dolphin-plugins-26.04.1"){accesskey="p"}

    dolphin-plugins-26.04.1

-   [Next](kdenlive.md "kdenlive-26.04.1"){accesskey="n"}

    kdenlive-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
