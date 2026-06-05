<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 3. After LFS Configuration Issues

-   [Prev](firmware.md "About Firmware")

    About Firmware

-   [Next](skel.md "Configuring for Adding Users")

    Configuring for Adding Users

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# About Devices {#about-devices}

<div class="sect1" lang="en">
Although most devices needed by packages in BLFS and beyond are set up properly by <span class="application">udev</span> using the default rules installed by LFS in <code class="filename">/etc/udev/rules.d</code>, there are cases where the rules must be modified or augmented.

<div class="sect2" lang="en">
## Multiple Sound Cards {#multiple-sound-cards}

If there are multiple sound cards in a system, the "default" sound card becomes random. The method to establish sound card order depends on whether the drivers are modules or not. If the sound card drivers are compiled into the kernel, control is via kernel command line parameters in <code class="filename">/boot/grub/grub.cfg</code>. For example, if a system has both an FM801 card and a SoundBlaster PCI card, the following can be appended to the command line:

```console
snd-fm801.index=0 snd-ens1371.index=1
```

If the sound card drivers are built as modules, the order can be established in the <code class="filename">/etc/modprobe.conf</code> file with:

```console
options snd-fm801 index=0
options snd-ens1371 index=1
```
</div>

<div class="sect2" lang="en">
## USB Device Issues {#usb-device-issues}

USB devices usually have two kinds of device nodes associated with them.

The first kind is created by device-specific drivers (e.g., usb_storage/sd_mod or usblp) in the kernel. For example, a USB mass storage device would be /dev/sdb, and a USB printer would be /dev/usb/lp0. These device nodes exist only when the device-specific driver is loaded.

The second kind of device nodes (/dev/bus/usb/BBB/DDD, where BBB is the bus number and DDD is the device number) are created even if the device doesn't have a kernel driver. By using these "raw" USB device nodes, an application can exchange arbitrary USB packets with the device, i.e., bypass the possibly-existing kernel driver.

Access to raw USB device nodes is needed when a userspace program is acting as a device driver. However, for the program to open the device successfully, the permissions have to be set correctly. By default, due to security concerns, all raw USB devices are owned by user root and group root, and have 0664 permissions (the read access is needed, e.g., for lsusb to work and for programs to access USB hubs). Packages (such as SANE and libgphoto2) containing userspace USB device drivers also ship udev rules that change the permissions of the controlled raw USB devices. That is, rules installed by SANE change permissions for known scanners, but not printers. If a package maintainer forgot to write a rule for your device, report a bug to both BLFS (if the package is there) and upstream, and you will need to write your own rule.

Before Linux-2.6.15, raw USB device access was performed not with /dev/bus/usb/BBB/DDD device nodes, but with /proc/bus/usb/BBB/DDD pseudofiles. Some applications still use only this deprecated technique and can't use the new device nodes. They cannot work with Linux kernel version 3.5 or newer. If you need to run such an application, contact the developer of it for a fix.
</div>

<div class="sect2" lang="en">
## Udev Device Attributes {#udev-device-attributes}

Fine-tuning of device attributes such as group name and permissions is possible by creating extra <span class="application">udev</span> rules, matching on something like this. The vendor and product can be found by searching the <code class="filename">/sys/devices</code> directory entries or using <span class="command"><strong>udevadm info</strong></span> after the device has been attached. See the documentation in the current <span class="application">udev</span> directory of <code class="filename">/usr/share/doc</code> for details.

```console
SUBSYSTEM=="usb_device", SYSFS{idVendor}=="05d8", SYSFS{idProduct}=="4002", \
  GROUP:="scanner", MODE:="0660"
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The above line is used for descriptive purposes only. The scanner <span class="application">udev</span> rules are put into place when installing <a class="xref" href="../pst/sane.md" title="SANE-1.4.0">SANE-1.4.0</a>.
</div>
</div>

<div class="sect2" lang="en">
## Devices for DVD Drives {#devices-for-dvd-drives}

If the initial boot process does not set up the <code class="systemitem">/dev/dvd</code> device properly, it can be installed using the following modification to the default udev rules. As the <code class="systemitem">root</code> user, run:

```bash
sed '1d;/SYMLINK.*cdrom/ a\
KERNEL=="sr0", ENV{ID_CDROM_DVD}=="1", SYMLINK+="dvd", OPTIONS+="link_priority=-100"' \
/lib/udev/rules.d/60-cdrom_id.rules > /etc/udev/rules.d/60-cdrom_id.rules
```
</div>
</div>

<div class="navfooter">
-   [Prev](firmware.md "About Firmware")

    About Firmware

-   [Next](skel.md "Configuring for Adding Users")

    Configuring for Adding Users

-   [Up](config.md "Chapter 3. After LFS Configuration Issues")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
