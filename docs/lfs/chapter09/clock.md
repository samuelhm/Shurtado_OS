::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 9. System Configuration

-   [Prev](symlinks.md "Managing Devices"){accesskey="p"}

    Managing Devices

-   [Next](console.md "Configuring the Linux Console"){accesskey="n"}

    Configuring the Linux Console

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-config-clock}9.5. Configuring the System Clock {#configuring-the-system-clock .sect1}

::::: {.sect1 lang="en"}
This section discusses how to configure the [**systemd-timedated**]{.command} system service, which configures the system clock and timezone.

If you cannot remember whether or not the hardware clock is set to UTC, find out by running the **`hwclock --localtime --show`** command. This will display what the current time is according to the hardware clock. If this time matches whatever your watch says, then the hardware clock is set to local time. If the output from [**hwclock**]{.command} is not local time, chances are it is set to UTC time. Verify this by adding or subtracting the proper amount of hours for the timezone to the time shown by [**hwclock**]{.command}. For example, if you are currently in the MST timezone, which is also known as GMT -0700, add seven hours to the local time.

[**systemd-timedated**]{.command} reads `/etc/adjtime`{.filename}, and depending on the contents of the file, sets the clock to either UTC or local time.

Create the `/etc/adjtime`{.filename} file with the following contents if your hardware clock is set to local time:

``` userinput
cat > /etc/adjtime << "EOF"
0.0 0 0.0
0
LOCAL
EOF
```

If `/etc/adjtime`{.filename} isn\'t present at first boot, [**systemd-timedated**]{.command} will assume that hardware clock is set to UTC and adjust the file according to that.

You can also use the [**timedatectl**]{.command} utility to tell [**systemd-timedated**]{.command} if your hardware clock is set to UTC or local time:

``` userinput
timedatectl set-local-rtc 1
```

[**timedatectl**]{.command} can also be used to change system time and time zone.

To change your current system time, issue:

``` userinput
timedatectl set-time YYYY-MM-DD HH:MM:SS
```

The hardware clock will also be updated accordingly.

To change your current time zone, issue:

``` userinput
timedatectl set-timezone TIMEZONE
```

You can get a list of available time zones by running:

``` userinput
timedatectl list-timezones
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Please note that the [**timedatectl**]{.command} command doesn\'t work in the chroot environment. It can only be used after the LFS system is booted with systemd.
:::

::: {.sect2 lang="en"}
## 9.5.1. Network Time Synchronization {#network-time-synchronization .sect2}

Starting with version 213, systemd ships a daemon called [**systemd-timesyncd**]{.command} which can be used to synchronize the system time with remote NTP servers.

The daemon is not intended as a replacement for the well established NTP daemon, but as a client only implementation of the SNTP protocol which can be used for less advanced tasks and on resource limited systems.

Starting with systemd version 216, the [**systemd-timesyncd**]{.command} daemon is enabled by default. If you want to disable it, issue the following command:

``` userinput
systemctl disable systemd-timesyncd
```

The `/etc/systemd/timesyncd.conf`{.filename} file can be used to change the NTP servers that [**systemd-timesyncd**]{.command} synchronizes with.

Please note that when system clock is set to Local Time, [**systemd-timesyncd**]{.command} won\'t update hardware clock.
:::
:::::

::: navfooter
-   [Prev](symlinks.md "Managing Devices"){accesskey="p"}

    Managing Devices

-   [Next](console.md "Configuring the Linux Console"){accesskey="n"}

    Configuring the Linux Console

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
