::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libatomic_ops.md "libatomic_ops-7.10.0"){accesskey="p"}

    libatomic_ops-7.10.0

-   [Next](libbytesize.md "libbytesize-2.12"){accesskey="n"}

    libbytesize-2.12

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libblockdev}libblockdev-3.5.0 {#libblockdev-3.5.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libblockdev {#introduction-to-libblockdev .sect2}

libblockdev is a C library supporting GObject Introspection for manipulation of block devices. It has a plugin-based architecture where each technology (like LVM, Btrfs, MD RAID, Swap,...) is implemented in a separate plugin, possibly with multiple implementations (e.g. using LVM CLI or the new LVM DBus API).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/storaged-project/libblockdev/releases/download/3.5.0/libblockdev-3.5.0.tar.gz](https://github.com/storaged-project/libblockdev/releases/download/3.5.0/libblockdev-3.5.0.tar.gz){.ulink}

-   Download MD5 sum: 68448042ea0a2073098fc4ae37b01cbf

-   Download size: 1.2 MB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.1 SBU
:::

### libblockdev Dependencies

#### Required

[GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (GObject Introspection required for GNOME)

#### Recommended

[cryptsetup-2.8.6](../postlfs/cryptsetup.md "cryptsetup-2.8.6"){.xref}, [keyutils-1.6.3](keyutils.md "keyutils-1.6.3"){.xref}, [libatasmart-0.19](libatasmart.md "libatasmart-0.19"){.xref}, [libbytesize-2.12](libbytesize.md "libbytesize-2.12"){.xref}, [libnvme-1.16.1](libnvme.md "libnvme-1.16.1"){.xref}, and [LVM2-2.03.41](../postlfs/lvm2.md "LVM2-2.03.41"){.xref}

#### Optional

[btrfs-progs-7.0](../postlfs/btrfs-progs.md "btrfs-progs-7.0"){.xref}, [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [JSON-GLib-1.10.8](json-glib.md "JSON-GLib-1.10.8"){.xref}, [mdadm-4.6](../postlfs/mdadm.md "mdadm-4.6"){.xref}, [parted-3.7](../postlfs/parted.md "parted-3.7"){.xref}, [smartmontools-7.5](../postlfs/smartmontools.md "smartmontools-7.5"){.xref}, [volume_key](https://github.com/felixonmars/volume_key){.ulink}, [ndctl](https://github.com/pmem/ndctl){.ulink}, and [targetcli](https://github.com/Datera/targetcli){.ulink} (for tests)
:::::

::: {.installation lang="en"}
## Installation of libblockdev {#installation-of-libblockdev .sect2}

Install [libblockdev]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr      \
            --sysconfdir=/etc  \
            --with-python3     \
            --without-escrow   \
            --without-gtk-doc  \
            --without-lvm      \
            --without-lvm_dbus \
            --without-nvdimm   \
            --without-tools    \
            --without-smartmontools &&
make
```

The test suite requires [targetcli]{.application}, which is not a part of BLFS.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--without-escrow`*: This switch allows building [libblockdev]{.application} without volume_key installed.

*`--without-lvm`* *`--without-lvm_dbus`* *`--without-tools`*: The combination of these switches allows building [libblockdev]{.application} without [parted-3.7](../postlfs/parted.md "parted-3.7"){.xref} installed. Remove it if you've installed [parted-3.7](../postlfs/parted.md "parted-3.7"){.xref} and wish to build the [**lvm-cache-stats**]{.command} or [**vfat-resize**]{.command} utilities, or wish [libblockdev]{.application} to support logical volumes.

*`--without-smartmontools`*: This switch allows building [libblockdev]{.application} without [JSON-GLib-1.10.8](json-glib.md "JSON-GLib-1.10.8"){.xref} or [smartmontools-7.5](../postlfs/smartmontools.md "smartmontools-7.5"){.xref} installed. Remove it if you have both packages installed.

`--without-btrfs --without-mdraid --without-tools`{.option}: The combination of these switches allows building [libblockdev]{.application} without [libbytesize-2.12](libbytesize.md "libbytesize-2.12"){.xref} installed. The `--without-mdraid`{.option} option will break [UDisks-2.11.1](udisks2.md "UDisks-2.11.1"){.xref}, so don't use it unless you really know what you are doing.

`--without-crypto`{.option}: This switch allows building [libblockdev]{.application} without [cryptsetup-2.8.6](../postlfs/cryptsetup.md "cryptsetup-2.8.6"){.xref} or [keyutils-1.6.3](keyutils.md "keyutils-1.6.3"){.xref} installed. This switch will break [UDisks-2.11.1](udisks2.md "UDisks-2.11.1"){.xref}, so don't use it unless you really know what you are doing.

`--without-dm --without-lvm --without-lvm_dbus --without-mpath`{.option}: The combination of these switches allows building [libblockdev]{.application} without [LVM2-2.03.41](../postlfs/lvm2.md "LVM2-2.03.41"){.xref} installed. The `--without-dm`{.option} and `--without-mpath`{.option} options are not in the instructions provided by the book because [LVM2-2.03.41](../postlfs/lvm2.md "LVM2-2.03.41"){.xref} is required for [cryptsetup-2.8.6](../postlfs/cryptsetup.md "cryptsetup-2.8.6"){.xref} and [cryptsetup-2.8.6](../postlfs/cryptsetup.md "cryptsetup-2.8.6"){.xref} is a recommended dependency of [libblockdev]{.application} anyway.

`--without-nvme`{.option}: This switch allows building [libblockdev]{.application} without [libnvme-1.16.1](libnvme.md "libnvme-1.16.1"){.xref} installed. This switch will break [UDisks-2.11.1](udisks2.md "UDisks-2.11.1"){.xref}, so don't use it unless you really know what you are doing.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [lvm-cache-stats and vfat-resize (both optional)]{.segbody}
:::

::: seg
**Installed Libraries:** [libbd_btrfs.so, libbd_crypto.so, libbd_dm.so, libbd_fs.so, libbd_loop.so, libbd_lvm.so (optional), libbd_lvm-dbus.so (optional), libbd_mdraid.so, libbd_mpath.so, libbd_nvme.so, libbd_part.so, libbd_swap.so, libbd_utils.so, and libblockdev.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/libblockdev, /usr/include/blockdev, and /usr/share/gtk-doc/html/libblockdev (optional)]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- ----------------------------------------------------
  []{#lvm-cache-stats}[[**lvm-cache-stats**]{.command}]{.term}   prints statistics on caches on LVM Logical Volumes
  []{#vfat-resize}[[**vfat-resize**]{.command}]{.term}           resizes `vfat`{.systemitem} file systems
  -------------------------------------------------------------- ----------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libatomic_ops.md "libatomic_ops-7.10.0"){accesskey="p"}

    libatomic_ops-7.10.0

-   [Next](libbytesize.md "libbytesize-2.12"){accesskey="n"}

    libbytesize-2.12

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
