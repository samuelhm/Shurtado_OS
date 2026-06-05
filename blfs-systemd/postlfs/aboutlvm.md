::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](lvm2.md "LVM2-2.03.41"){accesskey="p"}

    LVM2-2.03.41

-   [Next](raid.md "About RAID"){accesskey="n"}

    About RAID

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#aboutlvm}About Logical Volume Management (LVM) {#about-logical-volume-management-lvm .sect1}

:::::: {.sect1 lang="en"}
LVM manages disk drives. It allows multiple drives and partitions to be combined into larger [*volume groups*]{.emphasis}, assists in making backups through a [*snapshot*]{.emphasis}, and allows for dynamic volume resizing. It can also provide mirroring similar to a RAID 1 array.

A complete discussion of LVM is beyond the scope of this introduction, but basic concepts are presented below.

To run any of the commands presented here, the [LVM2-2.03.41](lvm2.md "LVM2-2.03.41"){.xref} package must be installed. All commands must be run as the `root`{.systemitem} user.

Management of disks with lvm is accomplished using the following concepts:

::: variablelist

[physical volumes]{.term}

:   These are physical disks or partitions such as /dev/sda3 or /dev/sdb.

[volume groups]{.term}

:   These are named groups of physical volumes that can be manipulated by the administrator. The number of physical volumes that make up a volume group is arbitrary. Physical volumes can be dynamically added or removed from a volume group.

[logical volumes]{.term}

:   Volume groups may be subdivided into logical volumes. Each logical volume can then be individually formatted as if it were a regular Linux partition. Logical volumes may be dynamically resized by the administrator according to need.
:::

To give a concrete example, suppose that you have two 2 TB disks. Also suppose a really large amount of space is required for a very large database, mounted on `/srv/mysql`{.filename}. This is what the initial set of partitions would look like:

``` screen
Partition  Use    Size      Partition Type
/dev/sda1  /boot  100MB     83 (Linux)
/dev/sda2  /       10GB     83 (Linux)
/dev/sda3  swap     2GB     82 (Swap)
/dev/sda4  LVM    remainder 8e (LVM)
/dev/sdb1  swap     2GB     82 (Swap)
/dev/sdb2  LVM    remainder 8e (LVM)
```

First initialize the physical volumes:

``` userinput
pvcreate /dev/sda4 /dev/sdb2
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

A full disk can be used as part of a physical volume, but beware that the [**pvcreate**]{.command} command will destroy any partition information on that disk.
:::

Next create a volume group named lfs-lvm:

``` userinput
vgcreate lfs-lvm /dev/sda4  /dev/sdb2
```

The status of the volume group can be checked by running the command [**vgscan**]{.command}. Now create the logical volumes. Since there is about 3900 GB available, leave about 900 GB free for expansion. Note that the logical volume named [*mysql*]{.emphasis} is larger than any physical disk.

``` userinput
lvcreate --name mysql --size 2500G lfs-lvm
lvcreate --name home  --size  500G lfs-lvm
```

Finally the logical volumes can be formatted and mounted. In this example, the jfs file system ([jfsutils-1.1.15](jfsutils.md "jfsutils-1.1.15"){.xref}) is used for demonstration purposes.

``` userinput
mkfs -t ext4 /dev/lfs-lvm/home
mkfs -t jfs  /dev/lfs-lvm/mysql
mount /dev/lfs-lvm/home /home
mkdir -p /srv/mysql
mount /dev/lfs-lvm/mysql /srv/mysql
```

It may be needed to activate those logical volumes, for them to appear in `/dev`{.filename}. They can all be activated at the same time by issuing, as the `root`{.systemitem} user:

``` root
vgchange -a y
```

A LVM logical volume can host a root filesystem, but requires the use of an initramfs (initial RAM file system). The initramfs proposed in [the section called “About initramfs”](initramfs.md "About initramfs"){.xref} allows to pass the lvm volume in the *`root=`* switch of the kernel command line.

If not using an initramfs, there is a race condition in [systemd]{.application} preventing mounting logical volumes through `/etc/fstab`{.filename}. You must create a [“[mount]{.quote}”]{.quote} unit (see [systemd.mount(5)](https://man.archlinux.org/man/systemd.mount.5){.ulink}) as in the following example, which mounts the `/home`{.filename} directory automatically at boot:

``` root
cat > /etc/systemd/system/home.mount << EOF
[Unit]
Description=Mount the lvm volume /dev/lfs-lvm/home to /home

[Mount]
What=/dev/lfs-lvm/home
Where=/home
Type=ext4
Options=default

[Install]
WantedBy=multi-user.target
EOF
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The name of the unit must be the name of the mount point with the \`/' character replaced by \`-', omitting the leading one.
:::

Next the unit must be enabled with:

``` root
systemctl enable home.mount
```

For more information about LVM, see the [LVM HOWTO](https://tldp.org/HOWTO/LVM-HOWTO/){.ulink} and the lvm man pages. A good in-depth [guide](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/logical_volume_manager_administration/index){.ulink} is available from RedHat^®^, although it makes sometimes reference to proprietary tools.
::::::

::: navfooter
-   [Prev](lvm2.md "LVM2-2.03.41"){accesskey="p"}

    LVM2-2.03.41

-   [Next](raid.md "About RAID"){accesskey="n"}

    About RAID

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
