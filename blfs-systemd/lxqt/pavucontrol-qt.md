::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 38. LXQt Applications

-   [Prev](lxqt-notificationd.md "lxqt-notificationd-2.4.0"){accesskey="p"}

    lxqt-notificationd-2.4.0

-   [Next](qps.md "qps-2.13.0"){accesskey="n"}

    qps-2.13.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pavucontrol-qt}pavucontrol-qt-2.4.0 {#pavucontrol-qt-2.4.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to pavucontrol-qt {#introduction-to-pavucontrol-qt .sect2}

[pavucontrol-qt]{.application} is the Qt port of the volume control utility pavucontrol, which is used to adjust audio levels in Pulseaudio. It is desktop environment agnostic.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lxqt/pavucontrol-qt/releases/download/2.4.0/pavucontrol-qt-2.4.0.tar.xz](https://github.com/lxqt/pavucontrol-qt/releases/download/2.4.0/pavucontrol-qt-2.4.0.tar.xz){.ulink}

-   Download MD5 sum: 79ec4eb4247001df14eca73c437a446c

-   Download size: 124 KB

-   Estimated disk space required: 7.0 MB

-   Estimated build time: 0.2 SBU
:::

### pavucontrol-qt Dependencies

#### Required

[liblxqt-2.4.0](liblxqt.md "liblxqt-2.4.0"){.xref} and [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref} (built with [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} support)
:::::

::: {.installation lang="en"}
## Installation of pavucontrol-qt {#installation-of-pavucontrol-qt .sect2}

Install [pavucontrol-qt]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_PREFIX=/usr \
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
**Installed Program:** [pavucontrol-qt]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/pavucontrol-qt]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------- ------------------------------------------------------------------------------------------
  []{#pavucontrol-qt-prog}[[**pavucontrol-qt**]{.command}]{.term}   is a Qt based GUI configuration tool for sound settings using [pulseaudio]{.application}
  ----------------------------------------------------------------- ------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](lxqt-notificationd.md "lxqt-notificationd-2.4.0"){accesskey="p"}

    lxqt-notificationd-2.4.0

-   [Next](qps.md "qps-2.13.0"){accesskey="n"}

    qps-2.13.0

-   [Up](lxqt-apps.md "Chapter 38. LXQt Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
