<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](config.md "After LFS Configuration Issues")

    After LFS Configuration Issues

-   [Next](console-fonts.md "About Console Fonts")

    About Console Fonts

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Creating a Custom Boot Device {#creating-a-custom-boot-device}

<div class="sect1" lang="en">
<div class="sect2" lang="en">
## Decent Rescue Boot Device Needs {#decent-rescue-boot-device-needs}

This section is really about creating a <span class="emphasis"><em>rescue</em></span> device. As the name <span class="emphasis"><em>rescue</em></span> implies, the host system has a problem, often lost partition information or corrupted file systems, that prevents it from booting and/or operating normally. For this reason, you <span class="emphasis"><em>must not</em></span> depend on resources from the host being "rescued". To presume that any given partition or hard drive <span class="emphasis"><em>will</em></span> be available is a risky presumption.

In a modern system, there are many devices that can be used as a rescue device: floppy, cdrom, usb drive, or even a network card. Which one you use depends on your hardware and your BIOS. In the past, a rescue device was thought to be a floppy disk. Today, many systems do not even have a floppy drive.

Building a complete rescue device is a challenging task. In many ways, it is equivalent to building an entire LFS system. In addition, it would be a repetition of information already available. For these reasons, the procedures for a rescue device image are not presented here.
</div>

<div class="sect2" lang="en">
## Creating a Rescue Floppy {#creating-a-rescue-floppy}

The software of today's systems has grown large. Linux 2.6 no longer supports booting directly from a floppy. In spite of this, there are solutions available using older versions of Linux. One of the best is Tom's Root/Boot Disk available at <a class="ulink" href="http://www.toms.net/rb/">http://www.toms.net/rb/</a>. This will provide a minimal Linux system on a single floppy disk and provides the ability to customize the contents of your disk if necessary.
</div>

<div class="sect2" lang="en">
## Creating a Bootable CD-ROM {#creating-a-bootable-cd-rom}

There are several sources that can be used for a rescue CD-ROM. Just about any commercial distribution's installation CD-ROMs or DVDs will work. These include RedHat, Ubuntu, and SuSE. One very popular option is Knoppix.

Also, the LFS Community has developed its own LiveCD available at <a class="ulink" href="https://www.linuxfromscratch.org/livecd/">https://www.linuxfromscratch.org/livecd/</a>. This LiveCD, is no longer capable of building an entire LFS/BLFS system, but is still a good rescue CD-ROM. If you download the ISO image, use <span class="command"><a class="xref" href="../multimedia/libisoburn.md#xorriso"><strong>xorriso</strong></span></a> to copy the image to a CD-ROM.

The instructions for using GRUB2 to make a custom rescue CD-ROM are also available in <a class="ulink" href="../../../../lfs/view/systemd/chapter10/grub.md">LFS Chapter 10</a>.
</div>

<div class="sect2" lang="en">
## Creating a Bootable USB Drive {#creating-a-bootable-usb-drive}

A USB Pen drive, sometimes called a Thumb drive, is recognized by Linux as a SCSI device. Using one of these devices as a rescue device has the advantage that it is usually large enough to hold more than a minimal boot image. You can save critical data to the drive as well as use it to diagnose and recover a damaged system. Booting such a drive requires BIOS support, but building the system consists of formatting the drive, adding <span class="application">GRUB</span> as well as the Linux kernel and supporting files.
</div>
</div>

<div class="navfooter">
-   [Prev](config.md "After LFS Configuration Issues")

    After LFS Configuration Issues

-   [Next](console-fonts.md "About Console Fonts")

    About Console Fonts

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
