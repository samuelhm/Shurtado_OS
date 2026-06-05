::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 28. Icons

-   [Prev](lxde-icon-theme.md "lxde-icon-theme-0.5.1"){accesskey="p"}

    lxde-icon-theme-0.5.1

-   [Next](../kde/kde.md "KDE"){accesskey="n"}

    KDE

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#oxygen-icons}oxygen-icons-6.1.0 {#oxygen-icons-6.1.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to oxygen-icons {#introduction-to-oxygen-icons .sect2}

The oxygen icons theme is a photo-realistic icon style, with a high standard of graphics quality.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/oxygen-icons/oxygen-icons-6.1.0.tar.xz](https://download.kde.org/stable/oxygen-icons/oxygen-icons-6.1.0.tar.xz){.ulink}

-   Download MD5 sum: b04f533b89d0412e9583ce70229c7077

-   Download size: 233 MB

-   Estimated disk space required: 454 MB

-   Estimated build time: less than 0.1 SBU
:::

### oxygen-icons Dependencies

#### Required

[Extra-CMake-Modules-6.26.0](../kde/extra-cmake-modules.md "Extra-CMake-Modules-6.26.0"){.xref} and [Qt-6.11.1](qt6.md "Qt-6.11.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of oxygen-icons {#installation-of-oxygen-icons .sect2}

First, enable scalable icons:

``` userinput
sed -i '/( oxygen/ s/)/scalable )/' CMakeLists.txt
```

Install [oxygen-icons]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr -W no-dev ..
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
**Installed Programs:** [none]{.segbody}
:::

::: seg
**Installed Libraries:** [none]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/icons/oxygen]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](lxde-icon-theme.md "lxde-icon-theme-0.5.1"){accesskey="p"}

    lxde-icon-theme-0.5.1

-   [Next](../kde/kde.md "KDE"){accesskey="n"}

    KDE

-   [Up](icons.md "Chapter 28. Icons"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
