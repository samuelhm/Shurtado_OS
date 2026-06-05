<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](lvm2.md "LVM2-2.03.41")

    LVM2-2.03.41

-   [Next](raid.md "About RAID")

    About RAID

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# About Logical Volume Management (LVM) {#about-logical-volume-management-lvm}

<div class="sect1" lang="en">
LVM manages disk drives. It allows multiple drives and partitions to be combined into larger <span class="emphasis"><em>volume groups</em></span>, assists in making backups through a <span class="emphasis"><em>snapshot</em></span>, and allows for dynamic volume resizing. It can also provide mirroring similar to a RAID 1 array.

A complete discussion of LVM is beyond the scope of this introduction, but basic concepts are presented below.

To run any of the commands presented here, the <a class="xref" href="lvm2.md" title="LVM2-2.03.41">LVM2-2.03.41</a> package must be installed. All commands must be run as the <code class="systemitem">root</code> user.

Management of disks with lvm is accomplished using the following concepts:

<div class="variablelist">

<span class="term">physical volumes</span>

:   These are physical disks or partitions such as /dev/sda3 or /dev/sdb.

<span class="term">volume groups</span>

:   These are named groups of physical volumes that can be manipulated by the administrator. The number of physical volumes that make up a volume group is arbitrary. Physical volumes can be dynamically added or removed from a volume group.

<span class="term">logical volumes</span>

:   Volume groups may be subdivided into logical volumes. Each logical volume can then be individually formatted as if it were a regular Linux partition. Logical volumes may be dynamically resized by the administrator according to need.
</div>

To give a concrete example, suppose that you have two 2 TB disks. Also suppose a really large amount of space is required for a very large database, mounted on <code class="filename">/srv/mysql</code>. This is what the initial set of partitions would look like:

```console
Partition  Use    Size      Partition Type
/dev/sda1  /boot  100MB     83 (Linux)
/dev/sda2  /       10GB     83 (Linux)
/dev/sda3  swap     2GB     82 (Swap)
/dev/sda4  LVM    remainder 8e (LVM)
/dev/sdb1  swap     2GB     82 (Swap)
/dev/sdb2  LVM    remainder 8e (LVM)
```

First initialize the physical volumes:

```bash
pvcreate /dev/sda4 /dev/sdb2
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

A full disk can be used as part of a physical volume, but beware that the <span class="command"><strong>pvcreate</strong></span> command will destroy any partition information on that disk.
</div>

Next create a volume group named lfs-lvm:

```bash
vgcreate lfs-lvm /dev/sda4  /dev/sdb2
```

The status of the volume group can be checked by running the command <span class="command"><strong>vgscan</strong></span>. Now create the logical volumes. Since there is about 3900 GB available, leave about 900 GB free for expansion. Note that the logical volume named <span class="emphasis"><em>mysql</em></span> is larger than any physical disk.

```bash
lvcreate --name mysql --size 2500G lfs-lvm
lvcreate --name home  --size  500G lfs-lvm
```

Finally the logical volumes can be formatted and mounted. In this example, the jfs file system (<a class="xref" href="jfsutils.md" title="jfsutils-1.1.15">jfsutils-1.1.15</a>) is used for demonstration purposes.

```bash
mkfs -t ext4 /dev/lfs-lvm/home
mkfs -t jfs  /dev/lfs-lvm/mysql
mount /dev/lfs-lvm/home /home
mkdir -p /srv/mysql
mount /dev/lfs-lvm/mysql /srv/mysql
```

It may be needed to activate those logical volumes, for them to appear in <code class="filename">/dev</code>. They can all be activated at the same time by issuing, as the <code class="systemitem">root</code> user:

```bash
vgchange -a y
```

A LVM logical volume can host a root filesystem, but requires the use of an initramfs (initial RAM file system). The initramfs proposed in <a class="xref" href="initramfs.md" title="About initramfs">the section called “About initramfs”</a> allows to pass the lvm volume in the *`root=`* switch of the kernel command line.

If not using an initramfs, there is a race condition in <span class="application">systemd</span> preventing mounting logical volumes through <code class="filename">/etc/fstab</code>. You must create a <span class="quote">“<span class="quote">mount</span>”</span> unit (see <a class="ulink" href="https://man.archlinux.org/man/systemd.mount.5">systemd.mount(5)</a>) as in the following example, which mounts the <code class="filename">/home</code> directory automatically at boot:

```bash
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

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The name of the unit must be the name of the mount point with the \`/' character replaced by \`-', omitting the leading one.
</div>

Next the unit must be enabled with:

```bash
systemctl enable home.mount
```

For more information about LVM, see the <a class="ulink" href="https://tldp.org/HOWTO/LVM-HOWTO/">LVM HOWTO</a> and the lvm man pages. A good in-depth <a class="ulink" href="https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/logical_volume_manager_administration/index">guide</a> is available from RedHat<sup>®</sup>, although it makes sometimes reference to proprietary tools.
</div>

<div class="navfooter">
-   [Prev](lvm2.md "LVM2-2.03.41")

    LVM2-2.03.41

-   [Next](raid.md "About RAID")

    About RAID

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
