::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](libkexiv2.md "libkexiv2-26.04.1"){accesskey="p"}

    libkexiv2-26.04.1

-   [Next](plasma-activities-stats.md "plasma-activities-stats-6.6.5"){accesskey="n"}

    plasma-activities-stats-6.6.5

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#plasma-activities}plasma-activities-6.6.5 {#plasma-activities-6.6.5 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to plasma-activities-6.6.5 {#introduction-to-plasma-activities-6.6.5 .sect2}

The [plasma-activities]{.application} package provides core components for the KDE Activities system. It is normally built with [Plasma-6.6.5](plasma-all.md "Building Plasma"){.xref}, but it is included here because it is needed for [okular-26.04.1](okular.md "okular-26.04.1"){.xref} and [kio-extras-26.04.1](kio-extras.md "kio-extras-26.04.1"){.xref} if [Plasma-6.6.5](plasma-all.md "Building Plasma"){.xref} is not built yet.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/plasma/6.6.5/plasma-activities-6.6.5.tar.xz](https://download.kde.org/stable/plasma/6.6.5/plasma-activities-6.6.5.tar.xz){.ulink}

-   Download MD5 sum: 779d53a76bf71addcc9160cd778886fc

-   Download size: 64 KB

-   Estimated disk space required: 8.8 MB

-   Estimated build time: 0.2 SBU (using parallelism=4)
:::

### plasma-activities Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}
:::::

::: {.installation lang="en"}
## Installation of plasma-activities {#installation-of-plasma-activities .sect2}

Install [plasma-activities]{.application} by running the following commands:

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

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [plasma-activities-cli6]{.segbody}
:::

::: seg
**Installed Libraries:** [libPlasmaActivities.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/include/PlasmaActivities, \$KF6_PREFIX/lib/cmake/PlasmaActivities, and \$KF6_PREFIX/share/share/qlogging-categories6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------- ----------------------------------------------
  []{#plasma-activities-prog}[[**plasma-activities-cli6**]{.command}]{.term}   is the activity manager for KDE applications
  ---------------------------------------------------------------------------- ----------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libkexiv2.md "libkexiv2-26.04.1"){accesskey="p"}

    libkexiv2-26.04.1

-   [Next](plasma-activities-stats.md "plasma-activities-stats-6.6.5"){accesskey="n"}

    plasma-activities-stats-6.6.5

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
