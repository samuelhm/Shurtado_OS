::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 2. Preparing the Host System

-   [Prev](stages.md "Building LFS in Stages"){accesskey="p"}

    Building LFS in Stages

-   [Next](creatingfilesystem.md "Creating a File System on the Partition"){accesskey="n"}

    Creating a File System on the Partition

-   [Up](chapter02.md "Chapter 2. Preparing the Host System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-partitioning-creatingpartition}2.4. Creating a New Partition {#creating-a-new-partition .sect1}

:::::::::::::: {.sect1 lang="en"}
Like most other operating systems, LFS is usually installed on a dedicated partition. The recommended approach to building an LFS system is to use an available empty partition or, if you have enough unpartitioned space, to create one.

A minimal system requires a partition of around 10 gigabytes (GB). This is enough to store all the source tarballs and compile the packages. However, if the LFS system is intended to be the primary Linux system, additional software will probably be installed which will require additional space. A 30 GB partition is a reasonable size to provide for growth. The LFS system itself will not take up this much room. A large portion of this requirement is to provide sufficient free temporary storage as well as for adding additional capabilities after LFS is complete. Additionally, compiling packages can require a lot of disk space which will be reclaimed after the package is installed.

Because there is not always enough Random Access Memory (RAM) available for compilation processes, it is a good idea to use a small disk partition as `swap`{.systemitem} space. This is used by the kernel to store seldom-used data and leave more memory available for active processes. The `swap`{.systemitem} partition for an LFS system can be the same as the one used by the host system, in which case it is not necessary to create another one.

Start a disk partitioning program such as [**cfdisk**]{.command} or [**fdisk**]{.command} with a command line option naming the hard disk on which the new partition will be created---for example `/dev/sda`{.filename} for the primary disk drive. Create a Linux native partition and a `swap`{.systemitem} partition, if needed. Please refer to [cfdisk(8)](https://man.archlinux.org/man/cfdisk.8){.ulink} or [fdisk(8)](https://man.archlinux.org/man/fdisk.8){.ulink} if you do not yet know how to use the programs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

For experienced users, other partitioning schemes are possible. The new LFS system can be on a software [RAID](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/raid.html){.ulink} array or an [LVM](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/aboutlvm.html){.ulink} logical volume. However, some of these options require an [initramfs](https://www.linuxfromscratch.org/blfs/view/systemd/postlfs/initramfs.html){.ulink}, which is an advanced topic. These partitioning methodologies are not recommended for first time LFS users.
:::

Remember the designation of the new partition (e.g., `sda5`{.filename}). This book will refer to this as the LFS partition. Also remember the designation of the `swap`{.systemitem} partition. These names will be needed later for the `/etc/fstab`{.filename} file.

:::::::::: {.sect2 lang="en"}
## 2.4.1. Other Partition Issues {#other-partition-issues .sect2}

Requests for advice on system partitioning are often posted on the LFS mailing lists. This is a highly subjective topic. The default for most distributions is to use the entire drive with the exception of one small swap partition. This is not optimal for LFS for several reasons. It reduces flexibility, makes sharing of data across multiple distributions or LFS builds more difficult, makes backups more time consuming, and can waste disk space through inefficient allocation of file system structures.

::: sect3
### 2.4.1.1. The Root Partition {#the-root-partition .sect3}

A root LFS partition (not to be confused with the `/root`{.filename} directory) of twenty gigabytes is a good compromise for most systems. It provides enough space to build LFS and most of BLFS, but is small enough so that multiple partitions can be easily created for experimentation.
:::

::: sect3
### 2.4.1.2. The Swap Partition {#the-swap-partition .sect3}

Most distributions automatically create a swap partition. Generally the recommended size of the swap partition is about twice the amount of physical RAM, however this is rarely needed. If disk space is limited, hold the swap partition to two gigabytes and monitor the amount of disk swapping.

If you want to use the hibernation feature (suspend-to-disk) of Linux, it writes out the contents of RAM to the swap partition before turning off the machine. In this case the size of the swap partition should be at least as large as the system\'s installed RAM.

Swapping is never good. For mechanical hard drives you can generally tell if a system is swapping by just listening to disk activity and observing how the system reacts to commands. With an SSD you will not be able to hear swapping, but you can tell how much swap space is being used by running the [**top**]{.command} or [**free**]{.command} programs. Use of an SSD for a swap partition should be avoided if possible. The first reaction to swapping should be to check for an unreasonable command such as trying to edit a five gigabyte file. If swapping becomes a normal occurrence, the best solution is to purchase more RAM for your system.
:::

:::: sect3
### 2.4.1.3. The Grub BIOS Partition {#the-grub-bios-partition .sect3}

If the [*boot disk*]{.emphasis} has been partitioned with a GUID Partition Table (GPT), then a small, typically 1 MB, partition must be created if the system is being booted with BIOS and it does not already exist. This partition is not formatted, but must be available for GRUB to use during installation of the boot loader. This partition will normally be labeled \'BIOS Boot\' if using [**fdisk**]{.command} or have a code of [*EF02*]{.emphasis} if using the [**gdisk**]{.command} command.

If the boot disk is partitioned with an MBR Partition Table, or DOS disklabel, then this partition is not needed as space already exists before the first partition that Grub can use.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The Grub BIOS partition must be on the drive that the BIOS uses to boot the system. This is not necessarily the drive that holds the LFS root partition. The disks on a system may use different partition table types. The necessity of the Grub BIOS partition depends only on the partition table type of the boot disk.
:::
::::

::: sect3
### 2.4.1.4. The EFI System Partition {#the-efi-system-partition .sect3}

This partition, also known as the [*ESP*]{.emphasis}, is needed when booting the system with UEFI. It stores the EFI application that is ran during bootup. The boot drive can be partitioned with MBR Partition Table, or DOS, but compatibility issues will tend to arise as a result. Therefore, it is always a good idea in this case to partition the boot drive with a GUID Partition Table (GPT). If you\'re only booting LFS from the partition, 20 MB or lower can suffice. The partition should be bigger than the EFI image size because GRUB dumps a lot of data to the partition before creating the EFI image. To be safe, 128 MB to 256 MB is recommended but can be dropped much lower with some experimentation. The partition label should be \'EFI System\' if using [**fdisk**]{.command}.

For Grub, the EFI System Partition should be located at `/boot/efi`{.filename}.

A lot of UEFI systems have a Compatibility Support Module (CSM) or Legacy Boot option, allowing to boot with BIOS. It could be a good idea to create a Grub BIOS partition if your system supports CSM in case UEFI booting does not work as expected.
:::

:::: sect3
### 2.4.1.5. Convenience Partitions {#convenience-partitions .sect3}

There are several other partitions that are not required, but should be considered when designing a disk layout. The following list is not comprehensive, but is meant as a guide.

::: itemizedlist
-   /boot -- Highly recommended. Use this partition to store kernels and other booting information. To minimize potential boot problems with larger disks, make this the first physical partition on your first disk drive. A partition size of 200 megabytes is adequate.

-   /home -- Highly recommended. Share your home directory and user customization across multiple distributions or LFS builds. The size is generally fairly large and depends on available disk space.

-   /usr -- In LFS, `/bin`{.filename}, `/lib`{.filename}, and `/sbin`{.filename} are symlinks to their counterparts in `/usr`{.filename}. So `/usr`{.filename} contains all the binaries needed for the system to run. For LFS a separate partition for `/usr`{.filename} is normally not needed. If you create it anyway, you should make a partition large enough to fit all the programs and libraries in the system. The root partition can be very small (maybe just one gigabyte) in this configuration, so it\'s suitable for a thin client or diskless workstation (where `/usr`{.filename} is mounted from a remote server). However, you should be aware that an initramfs (not covered by LFS) will be needed to boot a system with a separate `/usr`{.filename} partition.

-   /opt -- This directory is most useful for BLFS, where multiple large packages like KDE or Texlive can be installed without embedding the files in the /usr hierarchy. If used, 5 to 10 gigabytes is generally adequate.

-   /tmp -- By default, systemd mounts a `tmpfs`{.systemitem} here. If you want to override that behavior, follow [Section 9.10.3, "Disabling tmpfs for /tmp"](../chapter09/systemd-custom.md#systemd-no-tmpfs "9.10.3. Disabling tmpfs for /tmp"){.xref} when configuring the LFS system.

-   /usr/src -- This partition is very useful for providing a location to store BLFS source files and share them across LFS builds. It can also be used as a location for building BLFS packages. A reasonably large partition of 30-50 gigabytes provides plenty of room.
:::

Any separate partition that you want automatically mounted when the system starts must be specified in the `/etc/fstab`{.filename} file. Details about how to specify partitions will be discussed in [Section 10.2, "Creating the /etc/fstab File"](../chapter10/fstab.md "10.2. Creating the /etc/fstab File"){.xref}.
::::
::::::::::

:::: {.sect2 lang="en"}
## 2.4.2. An Example Disk Layout {#an-example-disk-layout .sect2}

Below is an example layout for an empty disk drive.

``` screen
Number  Start (sector)    End (sector)        Size   Code  Name
   1            2048           22527       10.0 MiB  EF00  EFI system partition
   2           22528           24575     1024.0 KiB  EF02  BIOS boot partition
   3           24576         1048575      500.0 MiB  8300  /boot
   4         1048576         5242879        2.0 GiB  8200  swap
   5         5242880        89128959       40.0 GiB  8300  lfs13.0+
   6        89128960       173015039       40.0 GiB  8300  /home
```

The above example makes a few assumptions:

::: itemizedlist
-   The partition table is a GUID Partition Table (GPT).

-   Both EFI and BIOS Boot partitions are present, although only one will be used. Which is used depends on the system firmware. If the system is old, it will not have UEFI capabilities at all. Some later systems can disable UEFI through the firmware setup by disabling \"Secure Boot\" and enabling \"Legacy Support\" or \"CSM\" (Compatibility Support Module). If you know in advance which mode you will use, the other partition can be omitted.

-   The EFI partition must be formatted as VFAT.

-   The BIOS partition is not formatted.

-   The swap partition must be initialized.

-   The /boot partition can be formatted as ext2 since it is rarely written (and then only by root) and does not need a journal.

-   The recommendation for all other partitions is to use ext4 formatting.

-   Another partition can be added for installing the \"host\" system for building LFS. A minimal sized partition, 10 GiB, should be sufficient. If you are building the system using a LiveCD, a host partition may not be required.
:::
::::
::::::::::::::

::: navfooter
-   [Prev](stages.md "Building LFS in Stages"){accesskey="p"}

    Building LFS in Stages

-   [Next](creatingfilesystem.md "Creating a File System on the Partition"){accesskey="n"}

    Creating a File System on the Partition

-   [Up](chapter02.md "Chapter 2. Preparing the Host System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
