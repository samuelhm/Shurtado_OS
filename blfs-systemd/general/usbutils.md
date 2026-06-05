::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](sysmon3.md "sysmon3-3.0.3"){accesskey="p"}

    sysmon3-3.0.3

-   [Next](prog.md "Programming"){accesskey="n"}

    Programming

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#usbutils}usbutils-019 {#usbutils-019 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to USB Utils {#introduction-to-usb-utils .sect2}

The [USB Utils]{.application} package contains utilities used to display information about USB buses in the system and the devices connected to them.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://kernel.org/pub/linux/utils/usb/usbutils/usbutils-019.tar.xz](https://kernel.org/pub/linux/utils/usb/usbutils/usbutils-019.tar.xz){.ulink}

-   Download MD5 sum: 67a8eb4782540058d0648f83ecabdf6c

-   Download size: 120 KB

-   Estimated disk space required: 1.9 MB

-   Estimated build time: less than 0.1 SBU
:::

### USB Utils Dependencies

#### Required

[libusb-1.0.30](libusb.md "libusb-1.0.30"){.xref}

#### Recommended

[hwdata-0.408](hwdata.md "hwdata-0.408"){.xref} (runtime)
:::::

::: {.installation lang="en"}
## Installation of USB Utils {#installation-of-usb-utils .sect2}

Install [USB Utils]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release &&

ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

For the `usb.ids`{.filename} data file, install the [hwdata-0.408](hwdata.md "hwdata-0.408"){.xref} package.

The script [**lsusb.py**]{.command} displays information in a more easily readable form than [**lsusb**]{.command}. To find the options, use [**lsusb.py -h**]{.command}. One form of use recommended by the developer is [**lsusb.py -ciu**]{.command}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [lsusb, lsusb.py, usb-devices, and usbhid-dump]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#lsusb}[[**lsusb**]{.command}]{.term}               is a utility for displaying information about all USB buses in the system and all devices connected to them, but not in human friendly form
  []{#lsusb.py}[[**lsusb.py**]{.command}]{.term}         displays information about all USB buses in the system and all devices connected to them in reasonable human friendly form
  []{#usb-devices}[[**usb-devices**]{.command}]{.term}   is a shell script that displays details of USB buses and devices connected to them. It is designed to be used if /proc/bus/usb/devices is not available on your system
  []{#usbhid-dump}[[**usbhid-dump**]{.command}]{.term}   is used to dump report descriptors and streams from HID (human interface device) interfaces of USB devices
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](sysmon3.md "sysmon3-3.0.3"){accesskey="p"}

    sysmon3-3.0.3

-   [Next](prog.md "Programming"){accesskey="n"}

    Programming

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
