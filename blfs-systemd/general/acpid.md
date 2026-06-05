::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](accountsservice.md "AccountsService-23.13.9"){accesskey="p"}

    AccountsService-23.13.9

-   [Next](at.md "at-3.2.5"){accesskey="n"}

    at-3.2.5

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#acpid}acpid-2.0.34 {#acpid-2.0.34 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to acpid {#introduction-to-acpid .sect2}

The [acpid]{.application} (Advanced Configuration and Power Interface event daemon) is a completely flexible, totally extensible daemon for delivering ACPI events. It listens on netlink interface and when an event occurs, executes programs to handle the event. The programs it executes are configured through a set of configuration files, which can be dropped into place by packages or by the user.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Some other packages may handle some ACPI events as well and they may conflict with this package. For example, [[Systemd-260.2](systemd.md "Systemd-260.2"){.xref}]{.phrase} (read the documentation for `Handle*=`{.option} in [logind.conf(5)](https://man.archlinux.org/man/logind.conf.5){.ulink} for details) and [UPower-1.91.2](upower.md "UPower-1.91.2"){.xref} (used by many desktop environments such as GNOME, KDE, and XFCE for handling ACPI events). If you've installed such a package and it's enough for your use case, this package is probably not needed. If you really need this package, you must be careful configuring it and the other packages handling ACPI events to avoid conflicts. Notably, [[Systemd-260.2](systemd.md "Systemd-260.2"){.xref}]{.phrase} handles some ACPI events by default, so the handling of these events by [[Systemd-260.2](systemd.md "Systemd-260.2"){.xref}]{.phrase} should be disabled first if handling these events with acpid (again, read [logind.conf(5)](https://man.archlinux.org/man/logind.conf.5){.ulink} for details).
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/acpid2/acpid-2.0.34.tar.xz](https://downloads.sourceforge.net/acpid2/acpid-2.0.34.tar.xz){.ulink}

-   Download MD5 sum: 988c2e3fd5ba0ea4492d3ba7273af295

-   Download size: 160 KB

-   Estimated disk space required: 1.9 MB

-   Estimated build time: less than 0.1 SBU
:::
::::::

::: {.installation lang="en"}
## Installation of acpid {#installation-of-acpid .sect2}

Install [acpid]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr \
            --docdir=/usr/share/doc/acpid-2.0.34 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install                         &&
install -v -m755 -d /etc/acpi/events &&
cp -r samples /usr/share/doc/acpid-2.0.34
```
:::

::::: {.configuration lang="en"}
## Configuring acpid {#configuring-acpid .sect2}

[acpid]{.application} is configured by user defined events. Place event files under `/etc/acpi/events`{.filename} directory. If an event occurs, [**acpid**]{.command} recurses through the event files in order to see if the regex defined after "event" matches. If they do, action is executed.

The following brief example will suspend the system when the laptop lid is closed. The example also disables the default handling of the lid close event by [[Systemd-260.2](systemd.md "Systemd-260.2"){.xref}]{.phrase} when the system is on battery and not connected to any external monitor, in order to avoid a conflict:

``` userinput
cat > /etc/acpi/events/lid << "EOF"
event=button/lid
action=/etc/acpi/lid.sh
EOF

cat > /etc/acpi/lid.sh << "EOF"
#!/bin/sh
/bin/grep -q open /proc/acpi/button/lid/LID/state && exit 0
/usr/bin/systemctl suspend
EOF
chmod +x /etc/acpi/lid.sh

mkdir -pv /etc/systemd/logind.conf.d
echo HandleLidSwitch=ignore > /etc/systemd/logind.conf.d/acpi.conf
```

Unfortunately, not every computer labels ACPI events in the same way (for example, the lid may be recognized as `LID0`{.filename} instead of `LID`{.filename}). To determine how your buttons are recognized, use the [**acpi_listen**]{.command} tool. Also, look in the `samples`{.filename} directory under `/usr/share/doc/acpid-2.0.34`{.filename} for more examples.

:::: {.sect3 lang="en"}
### []{#acpid-init} Systemd Socket {#systemd-socket .sect3}

To start the [**acpid**]{.command} daemon at boot, install the systemd unit from the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package by running the following command as the `root`{.systemitem} user:

``` root
make install-acpid
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package uses socket based activation and will be started when something needs it. No standalone unit file is provided for this package.
:::
::::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [acpid, acpi_listen, and kacpimon]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/acpi and /usr/share/doc/acpid-2.0.34]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#acpid-prog}[[**acpid**]{.command}]{.term}          is a program that listens for ACPI events and executes the rules that match the received event
  []{#acpi_listen}[[**acpi_listen**]{.command}]{.term}   is a simple tool which connects to [**acpid**]{.command} and listens for events
  []{#kacpimon}[[**kacpimon**]{.command}]{.term}         is a monitor program that connects to three sources of ACPI events (events file, netlink and input layer) and then reports on what it sees while it is connected
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](accountsservice.md "AccountsService-23.13.9"){accesskey="p"}

    AccountsService-23.13.9

-   [Next](at.md "at-3.2.5"){accesskey="n"}

    at-3.2.5

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
