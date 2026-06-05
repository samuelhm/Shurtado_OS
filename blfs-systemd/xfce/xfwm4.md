::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfdesktop.md "Xfdesktop-4.20.2"){accesskey="p"}

    Xfdesktop-4.20.2

-   [Next](xfce4-session.md "xfce4-session-4.20.4"){accesskey="n"}

    xfce4-session-4.20.4

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfwm4}Xfwm4-4.20.0 {#xfwm4-4.20.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xfwm4 {#introduction-to-xfwm4 .sect2}

[Xfwm4]{.application} is the window manager for [Xfce]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/xfwm4/4.20/xfwm4-4.20.0.tar.bz2](https://archive.xfce.org/src/xfce/xfwm4/4.20/xfwm4-4.20.0.tar.bz2){.ulink}

-   Download MD5 sum: e74cfb30b6e9ebf9cbaac0827dd534e3

-   Download size: 1.4 MB

-   Estimated disk space required: 26 MB

-   Estimated build time: 0.2 SBU
:::

### Xfwm4 Dependencies

#### Required

[libwnck-43.3](libwnck.md "libwnck-43.3"){.xref} and [libxfce4ui-4.20.2](libxfce4ui.md "libxfce4ui-4.20.2"){.xref}

#### Recommended

[startup-notification-0.12](../x/startup-notification.md "startup-notification-0.12"){.xref}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/xfwm4](https://wiki.linuxfromscratch.org/blfs/wiki/xfwm4){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Xfwm4 {#installation-of-xfwm4 .sect2}

Install [Xfwm4]{.application} by running the following commands:

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
**Installed Programs:** [xfwm4, xfwm4-settings, xfwm4-tweaks-settings and xfwm4-workspace-settings]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/xfce4/xfwm4, /usr/share/themes/{Daloa,Default{,-hdpi,-xhdpi},Kokodi,Moheli}, and /usr/share/xfwm4]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
  []{#xfwm4-prog}[[**xfwm4**]{.command}]{.term}                                    is the [Xfce]{.application} window manager
  []{#xfwm4-settings}[[**xfwm4-settings**]{.command}]{.term}                       is a [GTK+ 3]{.application} application that allows setting some preferences such as your theme, keyboard shortcuts and mouse focus behavior
  []{#xfwm4-tweaks-settings}[[**xfwm4-tweaks-settings**]{.command}]{.term}         is a [GTK+ 3]{.application} application that allows setting some more preferences for [Xfwm4]{.application}
  []{#xfwm4-workspace-settings}[[**xfwm4-workspace-settings**]{.command}]{.term}   is a [GTK+ 3]{.application} application that allows setting your workspace preferences
  -------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](xfdesktop.md "Xfdesktop-4.20.2"){accesskey="p"}

    Xfdesktop-4.20.2

-   [Next](xfce4-session.md "xfce4-session-4.20.4"){accesskey="n"}

    xfce4-session-4.20.4

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
