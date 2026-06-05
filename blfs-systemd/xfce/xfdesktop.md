::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfce4-settings.md "xfce4-settings-4.20.4"){accesskey="p"}

    xfce4-settings-4.20.4

-   [Next](xfwm4.md "Xfwm4-4.20.0"){accesskey="n"}

    Xfwm4-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfdesktop}Xfdesktop-4.20.2 {#xfdesktop-4.20.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xfdesktop {#introduction-to-xfdesktop .sect2}

[Xfdesktop]{.application} is a desktop manager for the [Xfce]{.application} Desktop Environment. [Xfdesktop]{.application} sets the background image / color, creates the right click menu and window list and displays the file icons on the desktop using [Thunar]{.application} libraries.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/xfdesktop/4.20/xfdesktop-4.20.2.tar.bz2](https://archive.xfce.org/src/xfce/xfdesktop/4.20/xfdesktop-4.20.2.tar.bz2){.ulink}

-   Download MD5 sum: 8789870145b82f5ba4f35c8a6522db2e

-   Download size: 2.5 MB

-   Estimated disk space required: 35 MB

-   Estimated build time: 0.2 SBU
:::

### Xfdesktop Dependencies

#### Required

[Exo-4.20.0](exo.md "Exo-4.20.0"){.xref}, [libxfce4windowing-4.20.6](libxfce4windowing.md "libxfce4windowing-4.20.6"){.xref}, and [libwnck-43.3](libwnck.md "libwnck-43.3"){.xref}

#### Recommended

[libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}, [startup-notification-0.12](../x/startup-notification.md "startup-notification-0.12"){.xref} and [thunar-4.20.8](thunar.md "thunar-4.20.8"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Xfdesktop {#installation-of-xfdesktop .sect2}

Install [Xfdesktop]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
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
**Installed Programs:** [xfdesktop and xfdesktop-settings]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/backgrounds/xfce and /usr/share/pixmaps/xfdesktop]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#xfdesktop-prog}[[**xfdesktop**]{.command}]{.term}                is the [Xfce]{.application} Desktop Environment's desktop manager
  []{#xfdesktop-settings}[[**xfdesktop-settings**]{.command}]{.term}   is a [GTK+ 3]{.application} application that allows you to change your desktop background, some preferences for the right click menu and what icons are displayed on the desktop
  -------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](xfce4-settings.md "xfce4-settings-4.20.4"){accesskey="p"}

    xfce4-settings-4.20.4

-   [Next](xfwm4.md "Xfwm4-4.20.0"){accesskey="n"}

    Xfwm4-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
