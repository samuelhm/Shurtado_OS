::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](firmware.md "About Firmware"){accesskey="p"}

    About Firmware

-   [Next](skel.md "Configuring for Adding Users"){accesskey="n"}

    Configuring for Adding Users

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#postlfs-devices}About Devices {#about-devices .sect1}

:::::::: {.sect1 lang="en"}
Although most devices needed by packages in BLFS and beyond are set up properly by [udev]{.application} using the default rules installed by LFS in `/etc/udev/rules.d`{.filename}, there are cases where the rules must be modified or augmented.

::: {.sect2 lang="en"}
## Multiple Sound Cards {#multiple-sound-cards .sect2}

If there are multiple sound cards in a system, the "default" sound card becomes random. The method to establish sound card order depends on whether the drivers are modules or not. If the sound card drivers are compiled into the kernel, control is via kernel command line parameters in `/boot/grub/grub.cfg`{.filename}. For example, if a system has both an FM801 card and a SoundBlaster PCI card, the following can be appended to the command line:

``` screen
snd-fm801.index=0 snd-ens1371.index=1
```

If the sound card drivers are built as modules, the order can be established in the `/etc/modprobe.conf`{.filename} file with:

``` screen
options snd-fm801 index=0
options snd-ens1371 index=1
```
:::

::: {.sect2 lang="en"}
## []{#usb-device-issues}USB Device Issues {#usb-device-issues .sect2}

USB devices usually have two kinds of device nodes associated with them.

The first kind is created by device-specific drivers (e.g., usb_storage/sd_mod or usblp) in the kernel. For example, a USB mass storage device would be /dev/sdb, and a USB printer would be /dev/usb/lp0. These device nodes exist only when the device-specific driver is loaded.

The second kind of device nodes (/dev/bus/usb/BBB/DDD, where BBB is the bus number and DDD is the device number) are created even if the device doesn't have a kernel driver. By using these "raw" USB device nodes, an application can exchange arbitrary USB packets with the device, i.e., bypass the possibly-existing kernel driver.

Access to raw USB device nodes is needed when a userspace program is acting as a device driver. However, for the program to open the device successfully, the permissions have to be set correctly. By default, due to security concerns, all raw USB devices are owned by user root and group root, and have 0664 permissions (the read access is needed, e.g., for lsusb to work and for programs to access USB hubs). Packages (such as SANE and libgphoto2) containing userspace USB device drivers also ship udev rules that change the permissions of the controlled raw USB devices. That is, rules installed by SANE change permissions for known scanners, but not printers. If a package maintainer forgot to write a rule for your device, report a bug to both BLFS (if the package is there) and upstream, and you will need to write your own rule.

Before Linux-2.6.15, raw USB device access was performed not with /dev/bus/usb/BBB/DDD device nodes, but with /proc/bus/usb/BBB/DDD pseudofiles. Some applications still use only this deprecated technique and can't use the new device nodes. They cannot work with Linux kernel version 3.5 or newer. If you need to run such an application, contact the developer of it for a fix.
:::

:::: {.sect2 lang="en"}
## Udev Device Attributes {#udev-device-attributes .sect2}

Fine-tuning of device attributes such as group name and permissions is possible by creating extra [udev]{.application} rules, matching on something like this. The vendor and product can be found by searching the `/sys/devices`{.filename} directory entries or using [**udevadm info**]{.command} after the device has been attached. See the documentation in the current [udev]{.application} directory of `/usr/share/doc`{.filename} for details.

``` screen
SUBSYSTEM=="usb_device", SYSFS{idVendor}=="05d8", SYSFS{idProduct}=="4002", \
  GROUP:="scanner", MODE:="0660"
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The above line is used for descriptive purposes only. The scanner [udev]{.application} rules are put into place when installing [SANE-1.4.0](../pst/sane.md "SANE-1.4.0"){.xref}.
:::
::::

::: {.sect2 lang="en"}
## []{#dev-dvd}Devices for DVD Drives {#devices-for-dvd-drives .sect2}

If the initial boot process does not set up the `/dev/dvd`{.systemitem} device properly, it can be installed using the following modification to the default udev rules. As the `root`{.systemitem} user, run:

``` userinput
sed '1d;/SYMLINK.*cdrom/ a\
KERNEL=="sr0", ENV{ID_CDROM_DVD}=="1", SYMLINK+="dvd", OPTIONS+="link_priority=-100"' \
/lib/udev/rules.d/60-cdrom_id.rules > /etc/udev/rules.d/60-cdrom_id.rules
```
:::
::::::::

::: navfooter
-   [Prev](firmware.md "About Firmware"){accesskey="p"}

    About Firmware

-   [Next](skel.md "Configuring for Adding Users"){accesskey="n"}

    Configuring for Adding Users

-   [Up](config.md "Chapter 3. After LFS Configuration Issues"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
