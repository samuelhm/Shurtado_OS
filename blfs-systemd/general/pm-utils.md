::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](pax.md "Pax-20240817"){accesskey="p"}

    Pax-20240817

-   [Next](power-profiles-daemon.md "Power-profiles-daemon-0.30"){accesskey="n"}

    Power-profiles-daemon-0.30

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pm-utils}pm-utils-1.4.1 {#pm-utils-1.4.1 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to Power Management Utilities {#introduction-to-power-management-utilities .sect2}

The [Power Management Utilities]{.application} provide simple shell command line tools to suspend and hibernate the computer. They can be used to run user supplied scripts on suspend and resume.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

On a system using [systemd]{.application} as the init system, [systemd]{.application} already provides this functionality. As a result, this package is probably not needed, and it may conflict with [systemd]{.application}. Read the documentation for `suspend.target`{.filename} and `hibernate.target`{.filename} in the man page [systemd.special(7)](https://man.archlinux.org/man/systemd.special.7){.ulink} for more details.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://pm-utils.freedesktop.org/releases/pm-utils-1.4.1.tar.gz](https://pm-utils.freedesktop.org/releases/pm-utils-1.4.1.tar.gz){.ulink}

-   Download MD5 sum: 1742a556089c36c3a89eb1b957da5a60

-   Download size: 204 KB

-   Estimated disk space required: 1.6 MB

-   Estimated build time: 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/pm-utils-1.4.1-bugfixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/pm-utils-1.4.1-bugfixes-1.patch){.ulink}
:::

### Power Management Utilities Dependencies

#### Optional

[xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} (to generate man pages)

#### Optional (runtime)

[Hdparm-9.65](hdparm.md "Hdparm-9.65"){.xref}, [Wireless Tools-29](../basicnet/wireless_tools.md "Wireless Tools-29"){.xref}, [ethtool](https://www.kernel.org/pub/software/network/ethtool/){.ulink}, and [vbetool](https://ftp.debian.org/debian/pool/main/v/vbetool/){.ulink}
:::::::

::: {.kernel lang="en"}
## []{#pm-utils-kernel}Kernel Configuration {#kernel-configuration .sect2}

If needed, enable the following options in the kernel configuration and recompile the kernel:

``` screen
Power management and ACPI options --->
  [*] Suspend to RAM and standby                                       [SUSPEND]
  [*] Hibernation (aka 'suspend to disk')                          [HIBERNATION]
```

Suspend to RAM allows the system to enter sleep states in which main memory is powered and thus its contents are preserved. The method cuts power to most parts of the machine aside from the RAM. Because of the large power savings, it is advisable for laptops to automatically enter this mode when the computer is running on batteries and the lid is closed (or the user is inactive for some time).

Suspend to disk (Hibernation) saves the machine's state into swap space and completely powers off the machine. When the machine is powered on, the state is restored. Until then, there is zero power consumption. Suspend to RAM and hibernation are normally appropriate for portable devices such as laptops, but can be used on workstations. The capability is not really appropriate for servers.

To use hibernation, the kernel parameter resume=/dev/\<swap_partition\> has to be used on the kernel command line (in grub.cfg). The swap partition should be at least the size of the physical RAM on the system.
:::

::: {.installation lang="en"}
## Installation of Power Management Utilities {#installation-of-power-management-utilities .sect2}

First, fix several bugs and a couple of incompatibilities with newer kernels:

``` userinput
patch -Np1 -i ../pm-utils-1.4.1-bugfixes-1.patch
```

Install [Power Management Utilities]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/pm-utils-1.4.1 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you don't have [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref} installed, copy pregenerated man pages, as the `root`{.systemitem} user:

``` root
install -v -m644 man/*.1 /usr/share/man/man1 &&
install -v -m644 man/*.8 /usr/share/man/man8 &&
ln -sv pm-action.8 /usr/share/man/man8/pm-suspend.8 &&
ln -sv pm-action.8 /usr/share/man/man8/pm-hibernate.8 &&
ln -sv pm-action.8 /usr/share/man/man8/pm-suspend-hybrid.8
```
:::

::: {.configuration lang="en"}
## Configuring Power Management Utilities {#configuring-power-management-utilities .sect2}

Suspend or resume functionality can be easily modified by installing files into the `/etc/pm/sleep.d`{.filename} directory. These files, known as hooks, are run when the system is put into a sleep state or resumed. Default hooks are located in `/usr/lib/pm-utils/sleep.d`{.filename}, and user hooks should be put in `/etc/pm/sleep.d`{.filename}. See the [pm-action(8)](https://man.archlinux.org/man/pm-action.8){.ulink} man page for more information.

In order to use hibernation with [GRUB]{.application} and a swap partition, you need to add kernel parameter `resume=`{.literal}*`swap_partition`* (e.g. `resume=/dev/sda1`{.literal}) to the kernel line in the `/boot/grub/grub.cfg`{.filename} configuration file.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [on_ac_power, pm-hibernate, pm-is-supported, pm-powersave, pm-suspend and pm-suspend-hybrid]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/pm, /usr/lib/pm-utils and /usr/share/doc/pm-utils-1.4.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#on_ac_power}[[**on_ac_power**]{.command}]{.term}               is a script that determines whether the system is running on AC power (rather than a battery)
  []{#pm-hibernate}[[**pm-hibernate**]{.command}]{.term}             is a symlink to pm-action script that puts the computer into hibernate mode (the system is fully powered off and system state is saved to disk)
  []{#pm-is-supported}[[**pm-is-supported**]{.command}]{.term}       is a script that checks whether power management features such as suspend and hibernate are supported
  []{#pm-powersave}[[**pm-powersave**]{.command}]{.term}             is a script that puts the computer into powersaving (low power) mode
  []{#pm-suspend}[[**pm-suspend**]{.command}]{.term}                 is a symlink to pm-action script that puts the computer into suspend mode (most devices are shut down and system state is saved in RAM)
  []{#pm-suspend-hybrid}[[**pm-suspend-hybrid**]{.command}]{.term}   is a symlink to pm-action script that puts the computer into hybrid-suspend mode (the system does everything it needs to hibernate, but suspends instead of shutting down)
  ------------------------------------------------------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](pax.md "Pax-20240817"){accesskey="p"}

    Pax-20240817

-   [Next](power-profiles-daemon.md "Power-profiles-daemon-0.30"){accesskey="n"}

    Power-profiles-daemon-0.30

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
