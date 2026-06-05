::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](plasma-activities.md "plasma-activities-6.6.5"){accesskey="p"}

    plasma-activities-6.6.5

-   [Next](kio-extras.md "kio-extras-26.04.1"){accesskey="n"}

    kio-extras-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#plasma-activities-stats}plasma-activities-stats-6.6.5 {#plasma-activities-stats-6.6.5 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to plasma-activities-stats-6.6.5 {#introduction-to-plasma-activities-stats-6.6.5 .sect2}

The [plasma-activities-stats]{.application} package provides access to the usage data collected by the KDE Activities system. It is normally built with [Plasma-6.6.5](plasma-all.md "Building Plasma"){.xref}, but it is included here because it is needed for [kio-extras-26.04.1](kio-extras.md "kio-extras-26.04.1"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/plasma/6.6.5/plasma-activities-stats-6.6.5.tar.xz](https://download.kde.org/stable/plasma/6.6.5/plasma-activities-stats-6.6.5.tar.xz){.ulink}

-   Download MD5 sum: 0834ef652f0161d6d16dc5365a0471da

-   Download size: 84 KB

-   Estimated disk space required: 4.3 MB

-   Estimated build time: 0.1 SBU
:::

### plasma-activities Dependencies

#### Required

[plasma-activities-6.6.5](plasma-activities.md "plasma-activities-6.6.5"){.xref}
:::::

::: {.installation lang="en"}
## Installation of plasma-activities-stats {#installation-of-plasma-activities-stats .sect2}

Install [plasma-activities-stats]{.application} by running the following commands:

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
**Installed Program:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libPlasmaActivitiesStats.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/include/PlasmaActivitiesStats and \$KF6_PREFIX/lib/cmake/PlasmaActivitiesStats]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](plasma-activities.md "plasma-activities-6.6.5"){accesskey="p"}

    plasma-activities-6.6.5

-   [Next](kio-extras.md "kio-extras-26.04.1"){accesskey="n"}

    kio-extras-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
