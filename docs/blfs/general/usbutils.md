<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](sysmon3.md "sysmon3-3.0.3")

    sysmon3-3.0.3

-   [Next](prog.md "Programming")

    Programming

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# usbutils-019 {#usbutils-019}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to USB Utils {#introduction-to-usb-utils}

The <span class="application">USB Utils</span> package contains utilities used to display information about USB buses in the system and the devices connected to them.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://kernel.org/pub/linux/utils/usb/usbutils/usbutils-019.tar.xz">https://kernel.org/pub/linux/utils/usb/usbutils/usbutils-019.tar.xz</a>

-   Download MD5 sum: 67a8eb4782540058d0648f83ecabdf6c

-   Download size: 120 KB

-   Estimated disk space required: 1.9 MB

-   Estimated build time: less than 0.1 SBU
</div>

### USB Utils Dependencies

#### Required

<a class="xref" href="libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>

#### Recommended

<a class="xref" href="hwdata.md" title="hwdata-0.408">hwdata-0.408</a> (runtime)
</div>

<div class="installation" lang="en">
## Installation of USB Utils {#installation-of-usb-utils}

Install <span class="application">USB Utils</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release &&

ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

For the <code class="filename">usb.ids</code> data file, install the <a class="xref" href="hwdata.md" title="hwdata-0.408">hwdata-0.408</a> package.

The script <span class="command"><strong>lsusb.py</strong></span> displays information in a more easily readable form than <span class="command"><strong>lsusb</strong></span>. To find the options, use <span class="command"><strong>lsusb.py -h</strong></span>. One form of use recommended by the developer is <span class="command"><strong>lsusb.py -ciu</strong></span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">lsusb, lsusb.py, usb-devices, and usbhid-dump</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="lsusb"></a><span class="command"><span class="term"><strong>lsusb</strong></span></span>               is a utility for displaying information about all USB buses in the system and all devices connected to them, but not in human friendly form
  <a id="lsusb.py"></a><span class="command"><span class="term"><strong>lsusb.py</strong></span></span>         displays information about all USB buses in the system and all devices connected to them in reasonable human friendly form
  <a id="usb-devices"></a><span class="command"><span class="term"><strong>usb-devices</strong></span></span>   is a shell script that displays details of USB buses and devices connected to them. It is designed to be used if /proc/bus/usb/devices is not available on your system
  <a id="usbhid-dump"></a><span class="command"><span class="term"><strong>usbhid-dump</strong></span></span>   is used to dump report descriptors and streams from HID (human interface device) interfaces of USB devices
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sysmon3.md "sysmon3-3.0.3")

    sysmon3-3.0.3

-   [Next](prog.md "Programming")

    Programming

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
