::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 9. System Configuration

-   [Prev](udev.md "Overview of Device and Module Handling"){accesskey="p"}

    Overview of Device and Module Handling

-   [Next](clock.md "Configuring the System Clock"){accesskey="n"}

    Configuring the System Clock

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-config-symlinks}9.4. Managing Devices {#managing-devices .sect1}

:::: {.sect1 lang="en"}
::: {.sect2 lang="en"}
## 9.4.1. Dealing with Duplicate Devices {#dealing-with-duplicate-devices .sect2}

As explained in [Section 9.3, "Overview of Device and Module Handling,"](udev.md "9.3. Overview of Device and Module Handling"){.xref} the order in which devices with the same function appear in `/dev`{.filename} is essentially random. E.g., if you have a USB web camera and a TV tuner, sometimes `/dev/video0`{.filename} refers to the camera and `/dev/video1`{.filename} refers to the tuner, and sometimes after a reboot the order changes. For all classes of hardware except sound cards and network cards, this is fixable by creating udev rules to create persistent symlinks. The case of network cards is covered separately in [Section 9.2, "General Network Configuration,"](network.md "9.2. General Network Configuration"){.xref} and sound card configuration can be found in [BLFS](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/devices.html){.ulink}.

For each of your devices that is likely to have this problem (even if the problem doesn\'t exist in your current Linux distribution), find the corresponding directory under `/sys/class`{.filename} or `/sys/block`{.filename}. For video devices, this may be `/sys/class/video4linux/video`{.filename}*`X`*. Figure out the attributes that identify the device uniquely (usually, vendor and product IDs and/or serial numbers work):

``` userinput
udevadm info -a -p /sys/class/video4linux/video0
```

Then write rules that create the symlinks, e.g.:

``` userinput
cat > /etc/udev/rules.d/83-duplicate_devs.rules << "EOF"

# Persistent symlinks for webcam and tuner
KERNEL=="video*", ATTRS{idProduct}=="1910", ATTRS{idVendor}=="0d81", SYMLINK+="webcam"
KERNEL=="video*", ATTRS{device}=="0x036f",  ATTRS{vendor}=="0x109e", SYMLINK+="tvtuner"

EOF
```

The result is that `/dev/video0`{.filename} and `/dev/video1`{.filename} devices still refer randomly to the tuner and the web camera (and thus should never be used directly), but there are symlinks `/dev/tvtuner`{.filename} and `/dev/webcam`{.filename} that always point to the correct device.
:::
::::

::: navfooter
-   [Prev](udev.md "Overview of Device and Module Handling"){accesskey="p"}

    Overview of Device and Module Handling

-   [Next](clock.md "Configuring the System Clock"){accesskey="n"}

    Configuring the System Clock

-   [Up](chapter09.md "Chapter 9. System Configuration"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
