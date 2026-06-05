::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](kddockwidgets.md "KDDockWidgets-2.4.0"){accesskey="p"}

    KDDockWidgets-2.4.0

-   [Next](kmix.md "KMix-26.04.1"){accesskey="n"}

    KMix-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kdenlive}kdenlive-26.04.1 {#kdenlive-26.04.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Kdenlive {#introduction-to-kdenlive .sect2}

The [Kdenlive]{.application} package is a KDE Frameworks-based video editor that can handle numerous video and audio codecs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/kdenlive-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/kdenlive-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: deea1c1ea799b03f8afc43983982403d

-   Download size: 19 MB

-   Estimated disk space required: 387 MB

-   Estimated build time: 3.5 SBU (using parallelism=4)
:::

### Kdenlive Dependencies

#### Required

[git-2.54.0](../general/git.md "Git-2.54.0"){.xref}, [KDDockWidgets-2.4.0](kddockwidgets.md "KDDockWidgets-2.4.0"){.xref}, [KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}, [MLT-7.38.0](../multimedia/mlt.md "MLT-7.38.0"){.xref}, [OpenTimelineIO-0.18.1](../general/opentimelineio.md "OpenTimelineIO-0.18.1"){.xref}, and [v4l-utils-1.32.0](../multimedia/v4l-utils.md "v4l-utils-1.32.0"){.xref} (runtime)

#### Recommended

[breeze-icons-6.26.0](../x/breeze-icons.md "breeze-icons-6.26.0"){.xref}

#### Optional

[LADSPA-SDK](https://glfs-book.github.io/slfs/general/ladspa-sdk.md){.ulink}, and [Noise-Suppression](https://glfs-book.github.io/slfs/general/noise-suppression.md){.ulink}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before building this package.
:::
::::::

:::: {.installation lang="en"}
## Installation of Kdenlive {#installation-of-kdenlive .sect2}

Install [Kdenlive]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$KF6_PREFIX \
      -D CMAKE_BUILD_TYPE=Release         \
      -D BUILD_TESTING=OFF                \
      -W no-dev .. &&
make
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The build process will download a Git repository of [OpenTimelineIO]{.application}, totaling around 100 MB. Configuration will seem to hang right after [**cmake**]{.command} begins running. This is normal, it is fetching that Git repository. If it hangs for a while, it's most likely due to a poor download speed during the download process. The *`-D FETCH_OTIO`* CMake option should be omitted if you have installed the [OpenTimelineIO]{.application} package.
:::

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [kdenlive and kdenlive_render]{.segbody}
:::

::: seg
**Installed Libraries:** [mltpreview.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/share/doc/HTML/\*/kdenlive and \$KF6_PREFIX/share/kdenlive]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- ------------------------------------------------------------------------------------------
  []{#kdenlive-prog}[[**kdenlive**]{.command}]{.term}            is an open source non-linear video editor which supports numerous audio and video codecs
  []{#kdenlive_render}[[**kdenlive_render**]{.command}]{.term}   is a render program for [**kdenlive**]{.command}
  -------------------------------------------------------------- ------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](kddockwidgets.md "KDDockWidgets-2.4.0"){accesskey="p"}

    KDDockWidgets-2.4.0

-   [Next](kmix.md "KMix-26.04.1"){accesskey="n"}

    KMix-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
