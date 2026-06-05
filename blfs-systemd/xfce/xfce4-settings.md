::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfce4-power-manager.md "xfce4-power-manager-4.20.0"){accesskey="p"}

    xfce4-power-manager-4.20.0

-   [Next](xfdesktop.md "Xfdesktop-4.20.2"){accesskey="n"}

    Xfdesktop-4.20.2

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfce4-settings}xfce4-settings-4.20.4 {#xfce4-settings-4.20.4 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xfce4 Settings {#introduction-to-xfce4-settings .sect2}

The [Xfce4 Settings]{.application} package contains a collection of programs that are useful for adjusting your [Xfce]{.application} preferences.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/xfce4-settings/4.20/xfce4-settings-4.20.4.tar.bz2](https://archive.xfce.org/src/xfce/xfce4-settings/4.20/xfce4-settings-4.20.4.tar.bz2){.ulink}

-   Download MD5 sum: 20d13ec8bfdca1824b92a68eb5d1319c

-   Download size: 2.5 MB

-   Estimated disk space required: 46 MB

-   Estimated build time: 0.3 SBU
:::

### Xfce4 Settings Dependencies

#### Required

[Exo-4.20.0](exo.md "Exo-4.20.0"){.xref} and [Garcon-4.20.0](garcon.md "Garcon-4.20.0"){.xref}

#### Required (Runtime)

[gnome-icon-theme-3.12.0](../x/gnome-icon-theme.md "gnome-icon-theme-3.12.0"){.xref} or [lxde-icon-theme-0.5.1](../x/lxde-icon-theme.md "lxde-icon-theme-0.5.1"){.xref}

#### Recommended

[libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref}, [libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref} and [libxklavier-5.4](../x/libxklavier.md "libxklavier-5.4"){.xref}

#### Optional

[colord-1.4.8](../general/colord.md "Colord-1.4.8"){.xref}, [libinput-1.31.2](../x/x7driver.md#libinput "libinput-1.31.2"){.xref}, and [UPower-1.91.2](../general/upower.md "UPower-1.91.2"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Xfce4 Settings {#installation-of-xfce4-settings .sect2}

Install [Xfce4 Settings]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --sysconfdir=/etc &&
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

`--enable-sound-settings`{.option}: Use this switch to enable sound settings in GUI.

`--enable-pluggable-dialogs`{.option}: Use this switch to enable support for embedded settings dialogs.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xfce4-accessibility-settings, xfce4-appearance-settings, xfce4-color-settings, xfce4-display-settings, xfce4-find-cursor, xfce4-keyboard-settings, xfce4-mime-helper, xfce4-mime-settings, xfce4-mouse-settings, xfce4-settings-editor, xfce4-settings-manager and xfsettingsd]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------
  []{#xfce4-accessibility-settings}[[**xfce4-accessibility-settings**]{.command}]{.term}   is a [GTK+ 3]{.application} GUI to allow you to change some of your keyboard and mouse preferences
  []{#xfce4-appearance-settings}[[**xfce4-appearance-settings**]{.command}]{.term}         is a [GTK+ 3]{.application} GUI to allow you to change some of your theme, icon and font preferences
  []{#xfce4-display-settings}[[**xfce4-display-settings**]{.command}]{.term}               is a [GTK+ 3]{.application} GUI to allow you to change some of your screen preferences
  []{#xfce4-keyboard-settings}[[**xfce4-keyboard-settings**]{.command}]{.term}             is a [GTK+ 3]{.application} GUI to allow you to change some of your keyboard preferences
  []{#xfce4-mime-settings}[[**xfce4-mime-settings**]{.command}]{.term}                     is a [GTK+ 3]{.application} GUI to allow you to change which applications are used to handle different mime types
  []{#xfce4-mouse-settings}[[**xfce4-mouse-settings**]{.command}]{.term}                   is a [GTK+ 3]{.application} GUI to allow you to change some of your mouse preferences
  []{#xfce4-settings-editor}[[**xfce4-settings-editor**]{.command}]{.term}                 is a [GTK+ 3]{.application} GUI to allow you to change your preferences stored in [Xfconf]{.application}
  []{#xfce4-settings-manager}[[**xfce4-settings-manager**]{.command}]{.term}               is a [GTK+ 3]{.application} GUI to allow you to change many of your [Xfce]{.application} preferences
  []{#xfsettingsd}[[**xfsettingsd**]{.command}]{.term}                                     is the [Xfce]{.application} settings daemon
  ---------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](xfce4-power-manager.md "xfce4-power-manager-4.20.0"){accesskey="p"}

    xfce4-power-manager-4.20.0

-   [Next](xfdesktop.md "Xfdesktop-4.20.2"){accesskey="n"}

    Xfdesktop-4.20.2

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
