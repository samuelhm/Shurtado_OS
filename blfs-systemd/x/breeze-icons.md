::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](adwaita-icon-theme.md "adwaita-icon-theme-50.0"){accesskey="p"}

    adwaita-icon-theme-50.0

-   [Next](gnome-icon-theme.md "gnome-icon-theme-3.12.0"){accesskey="n"}

    gnome-icon-theme-3.12.0

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#breeze-icons}breeze-icons-6.26.0 {#breeze-icons-6.26.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Breeze Icons {#introduction-to-breeze-icons .sect2}

The [Breeze Icons]{.application} package contains the default icons for [KDE Plasma]{.application} applications, but it can be used for other window environments.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/frameworks/6.26/breeze-icons-6.26.0.tar.xz](https://download.kde.org/stable/frameworks/6.26/breeze-icons-6.26.0.tar.xz){.ulink}

-   Download MD5 sum: 0a8a87904eab97f3f3c8dffb82756db1

-   Download size: 2.0 MB

-   Estimated disk space required: 141 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### Breeze Icons Dependencies

#### Required

[Extra-CMake-Modules-6.26.0](../kde/extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref} and [Qt-6.11.1](qt6.md "Qt-6.11.1"){.xref}

#### Optional

[KDE Frameworks-6.26.0](../kde/frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, and [lxml-6.1.1](../general/python-modules.md#lxml "lxml-6.1.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Breeze Icons {#installation-of-breeze-icons .sect2}

Install [Breeze Icons]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D BUILD_TESTING=OFF         \
      -D WITH_ICON_GENERATION=OFF  \
      -W no-dev ..                 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D BUILD_TESTING=OFF`*: This parameter disables building the testing framework, which requires some modules from [KDE Frameworks-6.26.0](../kde/frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}.

*`-D WITH_ICON_GENERATION=OFF`*: This parameter disables generation of 24x24 dark icons, which requires the [lxml-6.1.1](../general/python-modules.md#lxml "lxml-6.1.1"){.xref} python module. This parameter can be removed if [lxml-6.1.1](../general/python-modules.md#lxml "lxml-6.1.1"){.xref} is installed.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libKF6BreezeIcons.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/KF6/BreezeIcons, /usr/lib/cmake/KF6BreezeIcons, and /usr/share/icons/breeze{,-dark}]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](adwaita-icon-theme.md "adwaita-icon-theme-50.0"){accesskey="p"}

    adwaita-icon-theme-50.0

-   [Next](gnome-icon-theme.md "gnome-icon-theme-3.12.0"){accesskey="n"}

    gnome-icon-theme-3.12.0

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
