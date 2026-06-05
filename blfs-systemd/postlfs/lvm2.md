::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](jfsutils.md "jfsutils-1.1.15"){accesskey="p"}

    jfsutils-1.1.15

-   [Next](aboutlvm.md "About Logical Volume Management (LVM)"){accesskey="n"}

    About Logical Volume Management (LVM)

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lvm2}LVM2-2.03.41 {#lvm2-2.03.41 .sect1}

:::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to LVM2 {#introduction-to-lvm2 .sect2}

The [LVM2]{.application} package is a set of tools that manage logical partitions. It allows spanning of file systems across multiple physical disks and disk partitions and provides for dynamic growing or shrinking of logical partitions, mirroring and low storage footprint snapshots.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://sourceware.org/ftp/lvm2/LVM2.2.03.41.tgz](https://sourceware.org/ftp/lvm2/LVM2.2.03.41.tgz){.ulink}

-   Download MD5 sum: 9696ce3b3844db1d90dae457f83b0306

-   Download size: 2.8 MB

-   Estimated disk space required: 38 MB (add up to 300 MB for transient files for tests in the /tmp directory)

-   Estimated build time: 0.4 SBU (add 9 to 48 SBU for tests, depending on disk speed and options enabled in the kernel)
:::

### LVM2 Dependencies

#### Required

[libaio-0.3.113](../general/libaio.md "libaio-0.3.113"){.xref}

#### Optional for tests

[btrfs-progs-7.0](btrfs-progs.md "btrfs-progs-7.0"){.xref}, [dosfstools-4.2](dosfstools.md "dosfstools-4.2"){.xref}, [jfsutils-1.1.15](jfsutils.md "jfsutils-1.1.15"){.xref}, [mdadm-4.6](mdadm.md "mdadm-4.6"){.xref}, [parted-3.7](parted.md "parted-3.7"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [Which-2.25](../general/which.md "Which-2.25 and Alternatives"){.xref}, [xfsprogs-7.0.1](xfsprogs.md "xfsprogs-7.0.1"){.xref}, [reiserfsprogs](https://mirrors.edge.kernel.org/pub/linux/kernel/people/jeffm/reiserfsprogs/){.ulink}, [thin-provisioning-tools](https://github.com/jthornber/thin-provisioning-tools){.ulink}, and [vdo](https://github.com/dm-vdo/vdo){.ulink}
:::::

:::: {.kernel lang="en"}
## []{#lvm2-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration and recompile the kernel:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There are several other Device Mapper options in the kernel beyond those listed below. In order to get reasonable results if running the regression tests, all must be enabled either internally or as a module. The tests will all time out if Magic SysRq key is not enabled.

In addition most of the optional packages for tests require kernel options that are needed. If the optional packages or their kernel options are not installed the tests will be flagged as either failed or skipped in an inconsistent way.
:::

``` screen
Device Drivers --->
  [*] Block devices --->                                               [BLK_DEV]
    <*/M> RAM block device support                                 [BLK_DEV_RAM]
  [*] Multiple devices driver support (RAID and LVM) --->                   [MD]
    <*/M> Device mapper support                                     [BLK_DEV_DM]
    <*/M>   Crypt target support                                      [DM_CRYPT]
    <*/M>   Snapshot target                                        [DM_SNAPSHOT]
    <*/M>   Thin provisioning target                      [DM_THIN_PROVISIONING]
    <*/M>   Cache target (EXPERIMENTAL)                               [DM_CACHE]
    <*/M>   Mirror target                                            [DM_MIRROR]
    <*/M>   Zero target                                                [DM_ZERO]
    <*/M>   I/O delaying target                                       [DM_DELAY]

Kernel hacking --->
  Generic Kernel Debugging Instruments --->
    [*] Magic SysRq key                                            [MAGIC_SYSRQ]
```
::::

::::: {.installation lang="en"}
## Installation of LVM2 {#installation-of-lvm2 .sect2}

Install [LVM2]{.application} by running the following commands:

``` userinput
PATH+=:/usr/sbin                \
./configure --prefix=/usr       \
            --enable-cmdlib     \
            --enable-pkgconfig  \
            --enable-udev_sync  &&
make
```

The tests use [udev]{.application} for logical volume synchronization, so the LVM udev rules and some utilities need to be installed before running the tests. If you are installing [LVM2]{.application} for the first time, and do not want to install the full package before running the tests, the minimal set of utilities can be installed by running the following instructions as the `root`{.systemitem} user:

``` root
make -C tools install_tools_dynamic &&
make -C udev  install               &&
make -C libdm install
```

The tests need the ability to create and remove device nodes in the /tmp directory. On systemd systems, the default is to mount /tmp with the nodev option. Rather than disabling this behavior permanently (since it does have valid security reasons to be doing this), remount the /tmp filesystem temporarily as the `root`{.systemitem} user:

``` root
mount -o remount,dev /tmp
```

To test the results, issue, as the `root`{.systemitem} user:

``` root
LC_ALL=en_US.UTF-8 make check_local
```

Some tests may hang. In this case they can be skipped by adding [**S=\<testname\>**]{.command} to the [**make**]{.command} command. Other targets are available and can be listed with [**make -C test help**]{.command}. The test timings are very dependent on the speed of the disk(s), and on the number of enabled kernel options.

The tests do not implement the [“[expected fail]{.quote}”]{.quote} possibility and some test failures are expected by upstream.

::: itemizedlist
-   Most tests will fail if the kernel does not have all the device drivers listed above.

-   More failures may happen because some kernel options are missing. For example, the lack of the [*dm-delay*]{.emphasis} device mapper target explains some failures.

-   Some tests may fail if there is insufficient free space available in the partition with the /tmp directory. At least one test fails if 16 TB is not available.

-   Some tests are flagged [“[warned]{.quote}”]{.quote} if [thin-provisioning-tools](https://github.com/jthornber/thin-provisioning-tools){.ulink} are not installed. A workaround is to add the following flags to [**configure**]{.command}:
:::

``` userinput
     --with-thin-check=    \
     --with-thin-dump=     \
     --with-thin-repair=   \
     --with-thin-restore=  \
     --with-cache-check=   \
     --with-cache-dump=    \
     --with-cache-repair=  \
     --with-cache-restore= \
```

Some tests may hang. They can be removed if necessary, for example: [**rm test/shell/lvconvert-raid-reshape.sh**]{.command}. The tests generate a lot of kernel messages, which may clutter your terminal. You can disable them by issuing [**dmesg -D**]{.command} before running the tests (do not forget to issue [**dmesg -E**]{.command} when tests are done).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The checks create device nodes in the /tmp directory. The tests will fail if /tmp is mounted with the nodev option.
:::

Now, as the `root`{.systemitem} user:

``` root
make install
make install_systemd_units
```
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**PATH+=:/usr/sbin**]{.command}: The path must contain `/usr/sbin`{.filename} for proper system tool detection by the [**configure**]{.command} script. This instruction ensures that PATH is properly set even if you build as an unprivileged user.

*`--enable-cmdlib`*: This switch enables building of the shared command library. It is required when building the event daemon.

*`--enable-pkgconfig`*: This switch enables installation of [**pkg-config**]{.command} support files.

*`--enable-udev_sync`*: This switch enables synchronisation with [Udev]{.application} processing.

`--enable-dmeventd`{.option}: This switch enables building of the [Device Mapper]{.application} event daemon.

[**make install_systemd_units**]{.command}: This is needed to install a unit that activates logical volumes at boot. It is not installed by default.
:::

::::: {.configuration lang="en"}
## Configuring LVM2 {#configuring-lvm2 .sect2}

::: {.sect3 lang="en"}
### []{#lvm2-config}Config File {#config-file .sect3}

`/etc/lvm/lvm.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The default configuration still references the obsolete `/var/lock`{.filename} directory. This creates a deadlock at boot time. Change this (as the `root`{.systemitem} user):

``` root
sed -e '/locking_dir =/{s/#//;s/var/run/}' \
    -i /etc/lvm/lvm.conf
```
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [blkdeactivate, dmeventd (optional), dmsetup, fsadm, lvm, lvmdump, and lvm_import_vdo. There are also numerous symbolic links to lvm that implement specific functionalities]{.segbody}
:::

::: seg
**Installed Libraries:** [libdevmapper.so and liblvm2cmd.so; optional: libdevmapper-event.so, libdevmapper-event-lvm2.so, libdevmapper-event-lvm2mirror.so, libdevmapper-event-lvm2raid.so, libdevmapper-event-lvm2snapshot.so, libdevmapper-event-lvm2thin.so, and libdevmapper-event-lvm2vdo.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/lvm and /usr/lib/device-mapper (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#blkdeactivate}[[**blkdeactivate**]{.command}]{.term}   is a utility to deactivate block devices
  []{#dmeventd}[[**dmeventd**]{.command}]{.term}             (optional) is the Device Mapper event daemon
  []{#dmsetup}[[**dmsetup**]{.command}]{.term}               is a low level logical volume management tool
  []{#fsadm}[[**fsadm**]{.command}]{.term}                   is a utility used to resize or check filesystem on a device
  []{#lvm}[[**lvm**]{.command}]{.term}                       provides the command-line tools for [LVM2]{.application}. Commands are implemented via symbolic links to this program to manage physical devices (pv\*), volume groups (vg\*) and logical volumes (lv\*)
  []{#lvmdump}[[**lvmdump**]{.command}]{.term}               is a tool used to dump various information concerning [LVM2]{.application}
  []{#vgimportclone}[[**vgimportclone**]{.command}]{.term}   is used to import a duplicated VG (e.g. hardware snapshot)
  []{#libdevmapper}[`libdevmapper.so`{.filename}]{.term}     contains the [Device Mapper]{.application} API functions
  ---------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::

::: navfooter
-   [Prev](jfsutils.md "jfsutils-1.1.15"){accesskey="p"}

    jfsutils-1.1.15

-   [Next](aboutlvm.md "About Logical Volume Management (LVM)"){accesskey="n"}

    About Logical Volume Management (LVM)

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
