::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 36. Xfce Applications

-   [Prev](ristretto.md "ristretto-0.14.0"){accesskey="p"}

    ristretto-0.14.0

-   [Next](xfce4-pulseaudio-plugin.md "xfce4-pulseaudio-plugin-0.5.1"){accesskey="n"}

    xfce4-pulseaudio-plugin-0.5.1

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfce4-notifyd}xfce4-notifyd-0.9.7 {#xfce4-notifyd-0.9.7 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to the Xfce4 Notification Daemon {#introduction-to-the-xfce4-notification-daemon .sect2}

The [Xfce4 Notification Daemon]{.application} is a small program that implements the "server-side" portion of the Freedesktop desktop notifications specification. Applications that wish to pop up a notification bubble in a standard way can use [Xfce4-Notifyd]{.application} to do so by sending standard messages over [D-Bus]{.application} using the org.freedesktop.Notifications interface.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.xfce.org/src/apps/xfce4-notifyd/0.9/xfce4-notifyd-0.9.7.tar.bz2](https://archive.xfce.org/src/apps/xfce4-notifyd/0.9/xfce4-notifyd-0.9.7.tar.bz2){.ulink}

-   Download MD5 sum: d5bfe1fd8e8da9d64367a1f520d88633

-   Download size: 752 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.1 SBU
:::

### The Xfce4 Notification Daemon Dependencies

#### Required

[libnotify-0.8.8](../x/libnotify.md "libnotify-0.8.8"){.xref}, [libxfce4ui-4.20.2](libxfce4ui.md "libxfce4ui-4.20.2"){.xref}, [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref}, [xfce4-dev-tools-4.20.0](xfce4-dev-tools.md "xfce4-dev-tools-4.20.0"){.xref}, and [xfce4-panel-4.20.7](xfce4-panel.md "xfce4-panel-4.20.7"){.xref}
:::::

::: {.installation lang="en"}
## Installation of the Xfce4 Notification Daemon {#installation-of-the-xfce4-notification-daemon .sect2}

Install the [Xfce4 Notification Daemon]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --sysconfdir=/etc &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

You can test the notification daemon with the command [**notify-send**]{.command}, to be run in a graphical environment. But first, the daemon should be started:

``` userinput
/usr/lib/xfce4/notifyd/xfce4-notifyd &
notify-send -i info Information "Hi ${USER}, This is a Test"
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [xfce4-notifyd-config]{.segbody}
:::

::: seg
**Installed Libraries:** [libnotification-plugin.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/themes/Bright/xfce-notify-4.0, /usr/share/themes/Default/xfce-notify-4.0, /usr/share/themes/Retro/xfce-notify-4.0, /usr/share/themes/Smoke/xfce-notify-4.0 and /usr/share/themes/ZOMG-PONIES!/xfce-notify-4.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#xfce4-notifyd-config}[[**xfce4-notifyd-config**]{.command}]{.term}   is a [GTK+]{.application} GUI that allows you to change some of your preferences (theme and screen position) for the notifications that the [Xfce4 Notification Daemon]{.application} displays
  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](ristretto.md "ristretto-0.14.0"){accesskey="p"}

    ristretto-0.14.0

-   [Next](xfce4-pulseaudio-plugin.md "xfce4-pulseaudio-plugin-0.5.1"){accesskey="n"}

    xfce4-pulseaudio-plugin-0.5.1

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
