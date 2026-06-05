::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 36. Xfce Applications

-   [Prev](xfce4-notifyd.md "xfce4-notifyd-0.9.7"){accesskey="p"}

    xfce4-notifyd-0.9.7

-   [Next](../lxqt/lxqt.md "LXQt"){accesskey="n"}

    LXQt

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfce4-pulseaudio-plugin}xfce4-pulseaudio-plugin-0.5.1 {#xfce4-pulseaudio-plugin-0.5.1 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to the Xfce4 Pulseaudio Plugin {#introduction-to-the-xfce4-pulseaudio-plugin .sect2}

The [Xfce4 Pulseaudio Plugin]{.application} is a plugin for the Xfce panel which provides a convenient way to adjust the audio volume of the PulseAudio sound system and to an auto mixer tool like pavucontrol. It can optionally handle multimedia keys for controlling the audio volume.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/panel-plugins/xfce4-pulseaudio-plugin/0.5/xfce4-pulseaudio-plugin-0.5.1.tar.xz](https://archive.xfce.org/src/panel-plugins/xfce4-pulseaudio-plugin/0.5/xfce4-pulseaudio-plugin-0.5.1.tar.xz){.ulink}

-   Download MD5 sum: 186a097794ced3612713c2098ec0b51c

-   Download size: 120 KB

-   Estimated disk space required: 3.4 MB

-   Estimated build time: less than 0.1 SBU
:::

### Xfce4 Pulseaudio Plugin Dependencies

#### Required

[libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}, [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}, and [xfce4-panel-4.20.7](xfce4-panel.md "xfce4-panel-4.20.7"){.xref}

#### Recommended

[keybinder-3.0-0.3.2](../x/keybinder-3.md "keybinder-3.0-0.3.2"){.xref}, [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref}, [libxfce4windowing-4.20.6](libxfce4windowing.md "libxfce4windowing-4.20.6"){.xref}, and [pavucontrol-6.2](../multimedia/pavucontrol.md "pavucontrol-6.2"){.xref} (runtime)

#### Optional

[mpris2](https://github.com/hugosenari/mpris2){.ulink}
:::::

::: {.installation lang="en"}
## Installation of the Xfce4 Pulseaudio Plugin {#installation-of-the-xfce4-pulseaudio-plugin .sect2}

Install the [Xfce4 Pulseaudio Plugin]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup  --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
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
**Installed Libraries:** [libpulseaudio-plugin.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](xfce4-notifyd.md "xfce4-notifyd-0.9.7"){accesskey="p"}

    xfce4-notifyd-0.9.7

-   [Next](../lxqt/lxqt.md "LXQt"){accesskey="n"}

    LXQt

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
