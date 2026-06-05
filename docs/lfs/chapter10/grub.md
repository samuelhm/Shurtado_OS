::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 10. Making the LFS System Bootable

-   [Prev](kernel.md "Linux-7.0.10"){accesskey="p"}

    Linux-7.0.10

-   [Next](../chapter11/chapter11.md "The End"){accesskey="n"}

    The End

-   [Up](chapter10.md "Chapter 10. Making the LFS System Bootable"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-bootable-grub}10.4. Using GRUB to Set Up the Boot Process {#using-grub-to-set-up-the-boot-process .sect1}

:::::::::::::::::::: {.wrap lang="en"}
:::: {.sect2 lang="en"}
## 10.4.1. Introduction {#introduction .sect2}

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

Configuring GRUB incorrectly can render your system inoperable without an alternate boot device such as a CD-ROM or bootable USB drive. This section is not required to boot your LFS system. You may just want to modify your current boot loader, e.g. Grub-Legacy or GRUB2.
:::

Ensure that an emergency boot disk is ready to ["[rescue]{.quote}"]{.quote} the computer if the computer becomes unusable (un-bootable). If you do not already have a boot device, you can create one. In order for the procedure below to work, you need to jump ahead to BLFS and install **`xorriso`** from the [libisoburn](https://www.linuxfromscratch.org/blfs/view/systemd/multimedia/libisoburn.html){.ulink} package.

``` userinput
cd /tmp
grub-mkrescue --output=grub-img.iso
xorriso -as cdrecord -v dev=/dev/cdrw blank=as_needed grub-img.iso
```
::::

::: {.sect2 lang="en"}
## 10.4.2. Turn off Secure Boot {#turn-off-secure-boot .sect2}

LFS does not have the essential packages to support Secure Boot. To set up the boot process following the instructions in this section, Secure Boot must be turned off from the configuration interface of the firmware. Read the documentation provided by the manufacturer of your system to find out how to turn off Secure Boot support.
:::

::: {.sect2 lang="en"}
## 10.4.3. GRUB Naming Conventions {#grub-naming-conventions .sect2}

GRUB uses its own naming structure for drives and partitions in the form of [*(hdn,m)*]{.emphasis}, where [*n*]{.emphasis} is the hard drive number and [*m*]{.emphasis} is the partition number. The hard drive numbers start from zero, but the partition numbers start from one for normal partitions (from five for extended partitions). Note that this is different from earlier versions where both numbers started from zero. For example, partition `sda1`{.filename} is [*(hd0,1)*]{.emphasis} to GRUB and `sdb3`{.filename} is [*(hd1,3)*]{.emphasis}. In contrast to Linux, GRUB does not consider CD-ROM drives to be hard drives. For example, if using a CD on `hdb`{.filename} and a second hard drive on `hdc`{.filename}, that second hard drive would still be [*(hd1)*]{.emphasis}.
:::

::::::::::: {.sect2 lang="en"}
## 10.4.4. Setting Up the Configuration {#setting-up-the-configuration .sect2}

If booting the system via BIOS, GRUB works by writing a stub to the first sector (named the Master Boot Record, or MBR) of the hard disk. This area is not part of any file system. The BIOS loads and executes the content of MBR, then the stub loads the main GRUB image from the BIOS Boot Partition. The GRUB image is stored as raw data instead of a file (there must be no file system on the BIOS Boot Partition), so the stub doesn\'t need to support any file system and it can be made small enough to fit in the MBR.

If booting the system via UEFI, GRUB works by storing the main GRUB image as a PE-COFF executable file at a standard location in the EFI System Partition: `EFI/BOOT/BOOTX64.EFI`{.filename} (or `EFI/BOOT/BOOTIA32.EFI`{.filename} for `i386-efi`{.literal}). The UEFI firmware loads it from the standard location and executes it, launching GRUB.

Many GRUB functions (including booting the Linux kernel) are not included in the main GRUB image. Instead, they are stored in a file system as GRUB modules. That file system is usually mounted in a way that the GRUB modules can be accessed in `/boot/grub`{.filename} on most Linux distributions. To avoid the chicken-and-egg problem, [**grub-install**]{.command} embeds the modules necessary to access this file system into the main GRUB image, so it can find and load other modules.

The location of the boot partition is a choice of the user that affects the configuration. One recommendation is to have a separate small (suggested size is 200 MB) partition just for boot information. In doing so, not just LFS, but any Linux distribution, can access the same boot files, and in turn any booted system. If you choose to do this, you will need to mount the separate partition, move all files in the current `/boot`{.filename} directory (e.g. the Linux kernel you just built in the previous section) to the new partition. You will then need to unmount the partition and remount it as `/boot`{.filename}. If you do this, be sure to update `/etc/fstab`{.filename}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If the host distro utilizes a separate partition for `/boot`{.filename} and you want the LFS system to use that partition for `/boot`{.filename} as well, just mount the partition at `$LFS/boot`{.filename} in the host distro. The Linux kernel supports mounting one partition at multiple mount points.
:::

Leaving `/boot`{.filename} on the current LFS partition will also work, but configuration for multiple systems is more difficult.

For examples and more information on boot partition layouts, looking at [Section 2.4, "Creating a New Partition"](../chapter02/creatingpartition.md "2.4. Creating a New Partition"){.xref} may be informative.

Using the above information, determine the appropriate designator for the root partition (or boot partition, if a separate one is used). For the following example, it is assumed that the root (or separate boot) partition is `sda2`{.filename}.

The following sections go over how to boot with BIOS and UEFI. The GRUB installations for BIOS, 64-bit UEFI, and 32-bit UEFI can coexist and share the same configuration. The images and data live at different locations, so you can create both the BIOS Boot Partition and the EFI System Partition, and install GRUB for all the supported firmware types (i.e. running three [**grub-install**]{.command} commands). If you are unsure about your firmware type, or you plan to move the hard drive to a different computer, this is something you can do as a blanket strategy.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you\'re doing UEFI boot but have created the Grub BIOS partition, it may be a good idea to run the command for BIOS in case UEFI booting does not work as expected.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you only need to install GRUB for one boot method, you don\'t have to run commands for both methods. You can just run the command for the boot method you need.
:::

:::: sect3
### 10.4.4.1. Booting With BIOS {#booting-with-bios .sect3}

For booting with BIOS, make sure the boot partition is mounted (if using a separate one) and the BIOS Boot partition exists. After that, install the GRUB files into `/boot/grub`{.filename} and set up the boot track:

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

The following command will overwrite the current boot loader. Do not run the command if this is not desired, for example, if using a third party boot manager to manage the MBR.
:::

``` userinput
grub-install /dev/sda --target=i386-pc
```
::::

::::: sect3
### 10.4.4.2. Booting With UEFI {#booting-with-uefi .sect3}

For booting with UEFI, make sure the boot partition is mounted (if using a separate one) and the EFI System Partition is mounted at `/boot/efi`{.filename}. After that, install the GRUB files into `/boot/grub`{.filename} and the main GRUB image at `/boot/efi/EFI/BOOT/BOOTX64.EFI`{.filename}:

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

The following command will overwrite the `/boot/efi/EFI/BOOT/BOOTX64.EFI`{.filename} file. If it already exists, it\'s likely that it\'s the entry of another boot loader (for example the GRUB installation from the host distro, or the Windows Boot Manager). Backup the file so it can be restored later or loaded as a secondary boot loader by the new GRUB installation from LFS.
:::

``` userinput
grub-install --target=x86_64-efi --removable
```

The command above assumes that you have 64-bit UEFI firmware. If you want to make the system bootable on 32-bit UEFI firmware, run the command with `x86_64-efi`{.literal} replaced by `i386-efi`{.literal}.

The *`--removable`* option makes [**grub-install**]{.command} use the standard location, `EFI/BOOT/BOOTX64.EFI`{.filename} (or `EFI/BOOT/BOOTIA32.EFI`{.filename} for `i386-efi`{.literal}), instead of the location GRUB prefers (`EFI/GRUB/GRUBX64.EFI`{.filename} or `EFI/GRUB/GRUBIA32.EFI`{.filename}). Using a non-standard location would result in the location in a EFI variable be recorded, but LFS lacks the BLFS package [efibootmgr](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/efibootmgr.html){.ulink}, which is needed by GRUB to record the location into the EFI variable.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Some UEFI firmware implementations, while rare, skip the standard EFI path. Such systems most of the time are old, like Lenovo ThinkPads or HP desktops/laptops. When the boot entry is missing in the firmware setup, you will need to install the BLFS package [efibootmgr](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/efibootmgr.html){.ulink} to create a boot entry for UEFI. If it\'s easier, the package can be installed via the distribution\'s package manager, if applicable, and used on the host instead of on the LFS system. This can prevent the need for downloading more tarballs onto the LFS system for now.

First install the package, then mount the EFI variable file system if it isn\'t already mounted:

``` userinput
mountpoint /sys/firmware/efi/efivars ||
  mount -v -t efivarfs efivarfs /sys/firmware/efi/efivars
```

Now create a boot entry for the EFI:

``` userinput
efibootmgr -c -d /dev/sd<x> \
  -p <y> -L "LFS" -l '\EFI\BOOT\BOOT<X64>.EFI'
```

The `/dev/sd`{.literal}*`<x>`* drive should be the device node for the disk where the ESP exists. The *`<y>`* partition number should match the number of the ESP. If the ESP is on `/dev/sda2`{.literal}, then the partition number would be `2`{.literal}. If you are using 32-bit UEFI, replace *`<X64>`* with `IA32`{.literal}.

Some (broken) firmware may require additional parameters for [**efibootmgr**]{.command}, like *`--full-dev-path`* or *`-e 1 -E`*. Read the man page [efibootmgr(8)](https://man.archlinux.org/man/efibootmgr.8){.ulink} for details.

Now unmount the EFI variable file system:

``` userinput
umount -v /sys/firmware/efi/efivars
```
:::
:::::
:::::::::::

:::::: {.sect2 lang="en"}
## []{#grub-cfg}10.4.5. Creating the GRUB Configuration File {#creating-the-grub-configuration-file .sect2}

Generate `/boot/grub/grub.cfg`{.filename}:

``` userinput
cat > /boot/grub/grub.cfg << "EOF"
# Begin /boot/grub/grub.cfg
set default=0
set timeout=5

insmod part_gpt
insmod ext2

set root=(hd0,2)

# For UEFI
insmod efi_gop
insmod efi_uga

set gfxpayload=1024x768x32

menuentry "GNU/Linux, Linux 7.0.10-lfs-r13.0-131-systemd" {
        linux   /boot/vmlinuz-7.0.10-lfs-r13.0-131-systemd root=/dev/sda2 ro
}
EOF
```

The [**insmod**]{.command} commands load the [GRUB]{.application} modules named `part_gpt`{.filename}, `ext2`{.filename}, `efi_gop`{.filename}, and `efi_uga`{.filename}. Despite the naming, `ext2`{.filename} actually supports `ext2`{.systemitem}, `ext3`{.systemitem}, and `ext4`{.systemitem} filesystems. On UEFI systems, `efi_gop`{.filename} and `efi_uga`{.filename} are for video support. GOP, or Graphics Output Protocol, is the modern approach. UGA, or Universal Graphics Adaptor, is a legacy way of handling it. In a typical configuration, the `part_gpt`{.filename} and `ext2`{.filename} modules are already embedded in the main GRUB image by [**grub-install**]{.command}, and the [**insmod**]{.command} commands for them will do nothing. However, they do no harm anyway, and they may be needed with some rare configurations.

The [**set gfxpayload=1024x768x32**]{.command} command sets the resolution and color depth of the VESA framebuffer to be passed to the kernel. It\'s necessary for the kernel SimpleDRM driver to use the VESA framebuffer. You can use a different resolution or color depth value which better suits for your monitor. This line does nothing when the system is booted via UEFI, but it does no harm anyway.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

From [GRUB]{.application}\'s perspective, the kernel files are relative to the partition used. If you used a separate /boot partition, remove /boot from the above [*linux*]{.emphasis} line. You will also need to change the [*set root*]{.emphasis} line to point to the boot partition.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The GRUB designator for a partition may change if you added or removed some disks (including removable disks like USB thumb devices). The change may cause boot failure because `grub.cfg`{.filename} refers to some ["[old]{.quote}"]{.quote} designators. If you wish to avoid such a problem, you may use the UUID of a partition and the UUID of a filesystem instead of a GRUB designator to specify a device. Run [**lsblk -o UUID,PARTUUID,PATH,MOUNTPOINT**]{.command} to show the UUIDs of your filesystems (in the `UUID`{.literal} column) and partitions (in the `PARTUUID`{.literal} column). Then replace `set root=(hdx,y)`{.literal} with `search --set=root --fs-uuid `{.literal}*`<UUID of the filesystem where the kernel is installed>`*, and replace `root=/dev/sda2`{.literal} with `root=PARTUUID=`{.literal}*`<UUID of the partition where LFS is built>`*.

Note that the UUID of a partition is completely different from the UUID of the filesystem in this partition. Some online resources may instruct you to use `root=UUID=`{.literal}*`<filesystem UUID>`* instead of `root=PARTUUID=`{.literal}*`<partition UUID>`*, but doing so will require an initramfs, which is beyond the scope of LFS.

The name of the device node for a partition in `/dev`{.filename} may also change (very frequently on some systems with multiple NVME disks). You can also replace paths to device nodes like `/dev/sda1`{.literal} with `PARTUUID=`{.literal}*`<partition UUID>`*, in `/etc/fstab`{.filename}, to avoid a potential boot failure in case the device node name has changed.
:::

GRUB is an extremely powerful program and it provides a tremendous number of options for booting from a wide variety of devices, operating systems, and partition types. There are also many options for customization such as graphical splash screens, playing sounds, mouse input, etc. The details of these options are beyond the scope of this introduction.

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

There is a command, [grub-mkconfig]{.application}, that can write a configuration file automatically. It uses a set of scripts in /etc/grub.d/ and will destroy any customizations that you make. These scripts are designed primarily for non-source distributions and are not recommended for LFS. If you install a commercial Linux distribution, there is a good chance that this program will be run. Be sure to back up your grub.cfg file.
:::
::::::
::::::::::::::::::::

::: navfooter
-   [Prev](kernel.md "Linux-7.0.10"){accesskey="p"}

    Linux-7.0.10

-   [Next](../chapter11/chapter11.md "The End"){accesskey="n"}

    The End

-   [Up](chapter10.md "Chapter 10. Making the LFS System Bootable"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
