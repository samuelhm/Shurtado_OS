::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](ModemManager.md "ModemManager-1.24.2"){accesskey="p"}

    ModemManager-1.24.2

-   [Next](pax.md "Pax-20240817"){accesskey="n"}

    Pax-20240817

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#notification-daemon}notification-daemon-3.20.0 {#notification-daemon-3.20.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Notification Daemon {#introduction-to-notification-daemon .sect2}

The [Notification Daemon]{.application} package contains a daemon that displays passive pop-up notifications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/notification-daemon/3.20/notification-daemon-3.20.0.tar.xz](https://download.gnome.org/sources/notification-daemon/3.20/notification-daemon-3.20.0.tar.xz){.ulink}

-   Download MD5 sum: 2de7f4075352831f1d98d8851b642124

-   Download size: 336 KB

-   Estimated disk space required: 4.1 MB

-   Estimated build time: less than 0.1 SBU
:::

### Notification Daemon Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} and [libcanberra-0.30](../multimedia/libcanberra.md "libcanberra-0.30"){.xref} (Built with [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} support).
:::::

::: {.installation lang="en"}
## Installation of Notification Daemon {#installation-of-notification-daemon .sect2}

Install [Notification Daemon]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

You can test the notification daemon with the command [**notify-send**]{.command}:

``` userinput
pgrep -l notification-da &&
notify-send -i info Information "Hi ${USER}, This is a Test"
```

The command [**pgrep -l notification-da**]{.command} is added to assure that it is the daemon of this package that is running, not another one, e.g. the daemon from [xfce4-notifyd-0.9.7](../xfce/xfce4-notifyd.md "xfce4-notifyd-0.9.7"){.xref}.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [none]{.segbody}
:::

::: seg
**Installed Libraries:** [none]{.segbody}
:::

::: seg
**Installed Directory:** [none]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](ModemManager.md "ModemManager-1.24.2"){accesskey="p"}

    ModemManager-1.24.2

-   [Next](pax.md "Pax-20240817"){accesskey="n"}

    Pax-20240817

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
