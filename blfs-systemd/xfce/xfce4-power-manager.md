::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](xfce4-appfinder.md "xfce4-appfinder-4.20.0"){accesskey="p"}

    xfce4-appfinder-4.20.0

-   [Next](xfce4-settings.md "xfce4-settings-4.20.4"){accesskey="n"}

    xfce4-settings-4.20.4

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfce4-power-manager}xfce4-power-manager-4.20.0 {#xfce4-power-manager-4.20.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Xfce4 Power Manager {#introduction-to-xfce4-power-manager .sect2}

The [Xfce4 Power Manager]{.application} is a power manager for the [Xfce]{.application} desktop, [Xfce power manager]{.application} manages the power sources on the computer and the devices that can be controlled to reduce their power consumption (such as LCD brightness level or monitor sleep). In addition, [Xfce4 Power Manager]{.application} provides a set of freedesktop-compliant [DBus]{.application} interfaces to inform other applications about current power level so that they can adjust their power consumption.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/xfce/xfce4-power-manager/4.20/xfce4-power-manager-4.20.0.tar.bz2](https://archive.xfce.org/src/xfce/xfce4-power-manager/4.20/xfce4-power-manager-4.20.0.tar.bz2){.ulink}

-   Download MD5 sum: a9e27be5dafea884fb9fbbb918062963

-   Download size: 1.5 MB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.1 SBU
:::

### Xfce4 Power Manager Dependencies

#### Required

[libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}, [UPower-1.91.2](../general/upower.md "UPower-1.91.2"){.xref}, and [xfce4-panel-4.20.7](xfce4-panel.md "xfce4-panel-4.20.7"){.xref}

#### Recommended

[Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref} (required for laptop backlight control)

#### Optional

[NetworkManager-1.56.1](../basicnet/networkmanager.md "NetworkManager-1.56.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Xfce4 Power Manager {#installation-of-xfce4-power-manager .sect2}

Install [Xfce4 Power Manager]{.application} by running the following commands:

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

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xfce4-power-manager, xfce4-power-manager-settings, xfce4-pm-helper, and xfpm-power-backlight-helper]{.segbody}
:::

::: seg
**Installed Libraries:** [libxfce4powermanager.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------
  []{#xfce4-pm-helper}[[**xfce4-pm-helper**]{.command}]{.term}                             is a helper program for the suspend and hibernate functions of [**xfce4-power-manager**]{.command}
  []{#xfce4-power-manager-prog}[[**xfce4-power-manager**]{.command}]{.term}                is the [Xfce]{.application} Power Manager
  []{#xfce4-power-manager-settings}[[**xfce4-power-manager-settings**]{.command}]{.term}   is a utility that comes with the [Xfce]{.application} Power Manager to access/change its configuration
  []{#xfpm-power-backlight-helper}[[**xfpm-power-backlight-helper**]{.command}]{.term}     is a command line utility to get or set the brightness of your screen
  ---------------------------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](xfce4-appfinder.md "xfce4-appfinder-4.20.0"){accesskey="p"}

    xfce4-appfinder-4.20.0

-   [Next](xfce4-settings.md "xfce4-settings-4.20.4"){accesskey="n"}

    xfce4-settings-4.20.4

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
