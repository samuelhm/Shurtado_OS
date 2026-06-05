::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 43. Audio Utilities

-   [Prev](pavucontrol.md "pavucontrol-6.2"){accesskey="p"}

    pavucontrol-6.2

-   [Next](vorbistools.md "vorbis-tools-1.4.3"){accesskey="n"}

    vorbis-tools-1.4.3

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pnmixer}pnmixer-0.7.2 {#pnmixer-0.7.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Pnmixer {#introduction-to-pnmixer .sect2}

The [Pnmixer]{.application} package provides a lightweight volume control with a tray icon.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/nicklan/pnmixer/releases/download/v0.7.2/pnmixer-v0.7.2.tar.gz](https://github.com/nicklan/pnmixer/releases/download/v0.7.2/pnmixer-v0.7.2.tar.gz){.ulink}

-   Download MD5 sum: e9f17f56c50de39393030a96e343427b

-   Download size: 236 KB

-   Estimated disk space required: 2.5 MB

-   Estimated build time: less than 0.1 SBU
:::

### Pnmixer Dependencies

#### Required

[alsa-utils-1.2.15.2](alsa-utils.md "alsa-utils-1.2.15.2"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, and [libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Pnmixer {#installation-of-pnmixer .sect2}

Install [Pnmixer]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5 \
      ..  &&
make
```

This package does not have a test suite.

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
**Installed Program:** [pnmixer]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/pnmixer]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- -----------------------------------------------------
  []{#pnmixer-prog}[[**pnmixer**]{.command}]{.term}   is a lightweight volume control that sits in a tray
  --------------------------------------------------- -----------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](pavucontrol.md "pavucontrol-6.2"){accesskey="p"}

    pavucontrol-6.2

-   [Next](vorbistools.md "vorbis-tools-1.4.3"){accesskey="n"}

    vorbis-tools-1.4.3

-   [Up](audioutils.md "Chapter 43. Audio Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
