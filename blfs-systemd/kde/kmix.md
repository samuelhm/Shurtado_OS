::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 31. KDE Frameworks 6 Based Applications

-   [Prev](kdenlive.md "kdenlive-26.04.1"){accesskey="p"}

    kdenlive-26.04.1

-   [Next](khelpcenter.md "khelpcenter-26.04.1"){accesskey="n"}

    khelpcenter-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kmix}KMix-26.04.1 {#kmix-26.04.1 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to KMix {#introduction-to-kmix .sect2}

The [KMix]{.application} package contains a KDE Frameworks-based Sound Mixer that integrates nicely with [Plasma]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.kde.org/stable/release-service/26.04.1/src/kmix-26.04.1.tar.xz](https://download.kde.org/stable/release-service/26.04.1/src/kmix-26.04.1.tar.xz){.ulink}

-   Download MD5 sum: be4073a003b1f8d6f707549337cb158c

-   Download size: 1.1 MB

-   Estimated disk space required: 25 MB

-   Estimated build time: 0.2 SBU (using parallelism=4)
:::

### KMix Dependencies

#### Required

[KDE Frameworks-6.26.0](frameworks6.md "Building KDE Frameworks 6.26.0 (KF6)"){.xref}

#### Recommended

[alsa-lib-1.2.16](../multimedia/alsa-lib.md "alsa-lib-1.2.16"){.xref}

#### Optional

[libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref} and [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of KMix {#installation-of-kmix .sect2}

Install [KMix]{.application} by running the following commands:

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
**Installed Programs:** [kmix, kmixctrl, and kmixremote]{.segbody}
:::

::: seg
**Installed Libraries:** [libkmixcore.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$KF6_PREFIX/share/kmix and \$KF6_PREFIX/share/doc/HTML/\*/kmix]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
  []{#kmix-prog}[[**kmix**]{.command}]{.term}          is a small audio mixer for KDE that integrates into Plasma
  []{#kmixctrl}[[**kmixctrl**]{.command}]{.term}       is used to save and/or restore the settings that [**kmix**]{.command} has set
  []{#kmixremote}[[**kmixremote**]{.command}]{.term}   is a utility to mute, get, or set volume levels on the system. It can be run over SSH to adjust the volume on a remote system
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](kdenlive.md "kdenlive-26.04.1"){accesskey="p"}

    kdenlive-26.04.1

-   [Next](khelpcenter.md "khelpcenter-26.04.1"){accesskey="n"}

    khelpcenter-26.04.1

-   [Up](kf-apps.md "Chapter 31. KDE Frameworks 6 Based Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
