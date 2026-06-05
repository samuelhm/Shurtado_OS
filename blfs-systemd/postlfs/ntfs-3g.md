::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](mdadm.md "mdadm-4.6"){accesskey="p"}

    mdadm-4.6

-   [Next](gptfdisk.md "gptfdisk-1.0.10"){accesskey="n"}

    gptfdisk-1.0.10

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#ntfs-3g}ntfs-3g-2026.2.25 {#ntfs-3g-2026.2.25 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Ntfs-3g {#introduction-to-ntfs-3g .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[]{#ntfs3-kernel} A new read-write driver for NTFS, called NTFS3, has been added into the Linux kernel since the 5.15 release. The performance of NTFS3 is much better than ntfs-3g. To enable NTFS3, enable the following options in the kernel configuration and recompile the kernel if necessary:

``` screen
File systems --->
  DOS/FAT/EXFAT/NT Filesystems --->
    <*/M> NTFS Read-Write file system support                         [NTFS3_FS]
    # This makes the kernel use NTFS3 when the userspace requests the old
    # read-only NTFS driver:
    <*/M> NTFS file system support                                     [NTFS_FS]
```

With the kernel support available, ntfs-3g is only needed if you need the utilities from it (for example, to create or check NTFS filesystems).
:::

The [Ntfs-3g]{.application} package contains a stable, read-write open source driver for NTFS partitions. NTFS partitions are used by most Microsoft operating systems. Ntfs-3g allows you to mount NTFS partitions in read-write mode from your Linux system. It uses the FUSE kernel module to be able to implement NTFS support in userspace. The package also contains various utilities useful for manipulating NTFS partitions.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/tuxera/ntfs-3g/archive/2026.2.25/ntfs-3g-2026.2.25.tar.gz](https://github.com/tuxera/ntfs-3g/archive/2026.2.25/ntfs-3g-2026.2.25.tar.gz){.ulink}

-   Download MD5 sum: e92f169f58eda3307f2ca128bd42792f

-   Download size: 884 KB

-   Estimated disk space required: 26 MB

-   Estimated build time: 0.2 SBU
:::

### Ntfs-3g Dependencies

#### Optional

[fuse 2.x](https://github.com/libfuse/libfuse){.ulink} (this disables user mounts)
::::::

::: {.kernel lang="en"}
## []{#ntfs-3g-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

``` screen
File systems --->
  <*/M> FUSE (Filesystem in Userspace) support                         [FUSE_FS]
```

Note that it is only needed for mounting NTFS partitions with ntfs-3g. If you will use the in-kernel NTFS3 driver for mounting NTFS partitions (as the BLFS editors recommend) instead, you can skip this configuration item.
:::

::: {.installation lang="en"}
## Installation of Ntfs-3g {#installation-of-ntfs-3g .sect2}

Install [Ntfs-3g]{.application} by running the following commands:

``` userinput
./autogen.sh &&

./configure --prefix=/usr        \
            --disable-static     \
            --with-fuse=internal \
            --docdir=/usr/share/doc/ntfs-3g-2026.2.25 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

It's recommended to use the in-kernel NTFS3 driver for mounting NTFS filesystems, instead of ntfs-3g (see the note at the start of this page). However, if you want to use ntfs-3g to mount the NTFS filesystems anyway, create a symlink for the [**mount**]{.command} command:

``` userinput
ln -svf ../bin/ntfs-3g /usr/sbin/mount.ntfs &&
ln -svf ntfs-3g.8 /usr/share/man/man8/mount.ntfs.8
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-fuse=internal`*: This switch dynamically forces [ntfs-3g]{.application} to use an internal copy of the [fuse-2.x]{.application} library. This is required if you wish to allow users to mount NTFS partitions.

`--disable-ntfsprogs`{.option}: Disables installation of various utilities used to manipulate NTFS partitions.

[**chmod -v 4755 /usr/bin/ntfs-3g**]{.command}: Making mount.ntfs setuid root allows non root users to mount NTFS partitions.
:::

::: {.configuration lang="en"}
## Using Ntfs-3g {#using-ntfs-3g .sect2}

To mount a Windows partition at boot time, put a line like this in /etc/fstab:

``` screen
/dev/sda1 /mnt/windows auto defaults 0 0
```

To allow users to mount a usb stick with an NTFS filesystem on it, put a line similar to this (change sdc1 to whatever a usb stick would be on your system) in /etc/fstab:

``` screen
/dev/sdc1 /mnt/usb auto user,noauto,umask=0,utf8 0 0
```

In order for a user to be able to mount the usb stick, they will need to be able to write to `/mnt/usb`{.filename}, so as the `root`{.systemitem} user:

``` userinput
chmod -v 777 /mnt/usb
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [lowntfs-3g, mkfs.ntfs, mkntfs, mount.lowntfs-3g, mount.ntfs, mount.ntfs-3g, ntfs-3g, ntfs-3g.probe, ntfscat, ntfsclone, ntfscluster, ntfscmp, ntfscp, ntfsfix, ntfsinfo, ntfslabel, ntfsls, ntfsresize and ntfsundelete]{.segbody}
:::

::: seg
**Installed Library:** [libntfs-3g.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/ntfs-3g and /usr/share/doc/ntfs-3g]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#lowntfs-3g}[[**lowntfs-3g**]{.command}]{.term}               is similar to ntfs-3g but uses the Fuse low-level interface
  []{#mkfs.ntfs}[[**mkfs.ntfs**]{.command}]{.term}                 is a symlink to mkntfs
  []{#mkntfs}[[**mkntfs**]{.command}]{.term}                       creates an NTFS file system
  []{#mount.lowntfs-3g}[[**mount.lowntfs-3g**]{.command}]{.term}   is a symlink to lowntfs-3g
  []{#mount.ntfs}[[**mount.ntfs**]{.command}]{.term}               mounts an NTFS filesystem
  []{#mount.ntfs-3g}[[**mount.ntfs-3g**]{.command}]{.term}         is a symbolic link to ntfs-3g
  []{#ntfs-3g-prog}[[**ntfs-3g**]{.command}]{.term}                is an NTFS driver, which can create, remove, rename, move files, directories, hard links, and streams. It can also read and write files, including streams, sparse files and transparently compressed files. It can also handle special files like symbolic links, devices, and FIFOs; moreover it provides standard management of file ownership and permissions, including POSIX ACLs
  []{#ntfs-3g.probe}[[**ntfs-3g.probe**]{.command}]{.term}         tests if an NTFS volume is mountable read only or read-write, and exits with a status value accordingly. The volume can be a block device or image file
  []{#ntfscluster}[[**ntfscluster**]{.command}]{.term}             identifies files in a specified region of an NTFS volume
  []{#ntfscp}[[**ntfscp**]{.command}]{.term}                       copies a file to an NTFS volume
  []{#ntfsfix}[[**ntfsfix**]{.command}]{.term}                     fixes common errors and forces Windows to check an NTFS partition
  []{#ntfsls}[[**ntfsls**]{.command}]{.term}                       lists directory contents on an NTFS filesystem
  []{#ntfscat}[[**ntfscat**]{.command}]{.term}                     prints NTFS files and streams on the standard output
  []{#ntfsclone}[[**ntfsclone**]{.command}]{.term}                 clones an NTFS filesystem
  []{#ntfscmp}[[**ntfscmp**]{.command}]{.term}                     compares two NTFS filesystems and shows the differences
  []{#ntfsinfo}[[**ntfsinfo**]{.command}]{.term}                   dumps a file's attributes
  []{#ntfslabel}[[**ntfslabel**]{.command}]{.term}                 displays or changes the label on an ntfs file system
  []{#ntfsresize}[[**ntfsresize**]{.command}]{.term}               resizes an NTFS filesystem without data loss
  []{#ntfsundelete}[[**ntfsundelete**]{.command}]{.term}           recovers a deleted file from an NTFS volume
  []{#libntfs-3g}[`libntfs-3g.so`{.filename}]{.term}               contains the Ntfs-3g API functions
  ---------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](mdadm.md "mdadm-4.6"){accesskey="p"}

    mdadm-4.6

-   [Next](gptfdisk.md "gptfdisk-1.0.10"){accesskey="n"}

    gptfdisk-1.0.10

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
