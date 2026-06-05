<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](aboutlvm.md "About Logical Volume Management (LVM)")

    About Logical Volume Management (LVM)

-   [Next](mdadm.md "mdadm-4.6")

    mdadm-4.6

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# About RAID {#about-raid}

<div class="sect1" lang="en">
The storage technology known as RAID (Redundant Array of Independent Disks) combines multiple physical disks into a logical unit. The drives can generally be combined to provide data redundancy or to extend the size of logical units beyond the capability of the physical disks or both. The technology also allows for providing hardware maintenance without powering down the system.

The types of RAID organization are described in the <a class="ulink" href="https://raid.wiki.kernel.org/index.php/Overview#The_RAID_levels">RAID Wiki</a>.

Note that while RAID provides protection against disk failures, it is not a substitute for backups. A file deleted is still deleted on all the disks of a RAID array. Modern backups are generally done via <a class="xref" href="../basicnet/rsync.md" title="rsync-3.4.3">rsync-3.4.3</a>.

There are three major types of RAID implementation: Hardware RAID, BIOS-based RAID, and Software RAID.

<div class="sect2" lang="en">
## Hardware RAID {#hardware-raid}

Hardware based RAID provides capability through proprietary hardware and data layouts. The control and configuration is generally done via firmware in conjunction with executable programs made available by the device manufacturer. The capabilities are generally supplied via a PCI card, although there are some instances of RAID components integrated in to the motherboard. Hardware RAID may also be available in a stand-alone enclosure.

One advantage of hardware-based RAID is that the drives are offered to the operating system as a logical drive and no operating system dependent configuration is needed.

Disadvantages include difficulties in transferring drives from one system to another, updating firmware, or replacing failed RAID hardware.
</div>

<div class="sect2" lang="en">
## BIOS-based RAID {#bios-based-raid}

Some computers offer a hardware-like RAID implementation in the system BIOS. Sometime this is referred to as 'fake' RAID as the capabilities are generally incorporated into firmware without any hardware acceleration.

The advantages and disadvantages of BIOS-based RAID are generally the same as hardware RAID with the additional disadvantage that there is no hardware acceleration.

In some cases, BIOS-based RAID firmware is enabled by default (e.g. some DELL systems). If software RAID is desired, this option must be explicitly disabled in the BIOS.
</div>

<div class="sect2" lang="en">
## Software RAID {#software-raid}

Software based RAID is the most flexible form of RAID. It is easy to install and update and provides full capability on all or part of any drives available to the system. In BLFS, the RAID software is found in <a class="xref" href="mdadm.md" title="mdadm-4.6">mdadm-4.6</a>.

Configuring a RAID device is straightforward using <span class="application">mdadm</span>. Generally devices are created in the <code class="filename">/dev</code> directory as <code class="filename">/dev/mdx</code> where <span class="emphasis"><em>x</em></span> is an integer.

The first step in creating a RAID array is to use partitioning software such as **`fdisk`** or <a class="xref" href="parted.md" title="parted-3.7">parted-3.7</a> to define the partitions needed for the array. Usually, there will be one partition on each drive participating in the RAID array, but that is not strictly necessary. For this example, there will be four disk drives: <code class="filename">/dev/sda</code>, <code class="filename">/dev/sdb</code>, <code class="filename">/dev/sdc</code>, and <code class="filename">/dev/sdd</code>. They will be partitioned as follows:

```console
Partition Size     Type                Use
sda1:     100 MB   fd Linux raid auto  /boot    (RAID 1) /dev/md0
sda2:      10 GB   fd Linux raid auto  /        (RAID 1) /dev/md1
sda3:       2 GB   83 Linux swap       swap
sda4      300 GB   fd Linux raid auto  /home    (RAID 5) /dev/md2

sdb1:     100 MB   fd Linux raid auto  /boot    (RAID 1) /dev/md0
sdb2:      10 GB   fd Linux raid auto  /        (RAID 1) /dev/md1
sdb3:       2 GB   83 Linux swap       swap
sdb4      300 GB   fd Linux raid auto  /home    (RAID 5) /dev/md2

sdc1:      12 GB   fd Linux raid auto  /usr/src (RAID 0) /dev/md3
sdc2:     300 GB   fd Linux raid auto  /home    (RAID 5) /dev/md2

sdd1:      12 GB   fd Linux raid auto  /usr/src (RAID 0) /dev/md3
sdd2:     300 GB   fd Linux raid auto  /home    (RAID 5) /dev/md2 
```

In this arrangement, a separate boot partition is created as the first small RAID array and a root filesystem as the secong RAID array, both mirrored. The third partition is a large (about 1TB) array for the <code class="filename">/home</code> directory. This provides an ability to stripe data across multiple devices, improving speed for both reading and writing large files. Finally, a fourth array is created that concatenates two partitions into a larger device.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

All <span class="application">mdadm</span> commands must be run as the <code class="systemitem">root</code> user.
</div>

To create these RAID arrays the commands are:

```bash
/sbin/mdadm -Cv /dev/md0 --level=1 --raid-devices=2 /dev/sda1 /dev/sdb1
/sbin/mdadm -Cv /dev/md1 --level=1 --raid-devices=2 /dev/sda2 /dev/sdb2
/sbin/mdadm -Cv /dev/md3 --level=0 --raid-devices=2 /dev/sdc1 /dev/sdd1
/sbin/mdadm -Cv /dev/md2 --level=5 --raid-devices=4 \
        /dev/sda4 /dev/sdb4 /dev/sdc2 /dev/sdd2 
```

The devices created can be examined by device. For example, to see the details of <code class="filename">/dev/md1</code>, use **`/sbin/mdadm --detail /dev/md1`**:

```console
        Version : 1.2
  Creation Time : Tue Feb  7 17:08:45 2012
     Raid Level : raid1
     Array Size : 10484664 (10.00 GiB 10.74 GB)
  Used Dev Size : 10484664 (10.00 GiB 10.74 GB)
   Raid Devices : 2
  Total Devices : 2
    Persistence : Superblock is persistent

    Update Time : Tue Feb  7 23:11:53 2012
          State : clean
 Active Devices : 2
Working Devices : 2
 Failed Devices : 0
  Spare Devices : 0

           Name : core2-blfs:0  (local to host core2-blfs)
           UUID : fcb944a4:9054aeb2:d987d8fe:a89121f8
         Events : 17

    Number   Major   Minor   RaidDevice State
       0       8        1        0      active sync   /dev/sda1
       1       8       17        1      active sync   /dev/sdb1
```

From this point, the partitions can be formatted with the filesystem of choice (e.g. ext3, ext4, <a class="xref" href="xfsprogs.md" title="xfsprogs-7.0.1">xfsprogs-7.0.1</a>, etc). The formatted partitions can then be mounted. The <code class="filename">/etc/fstab</code> file can use the devices created for mounting at boot time and the linux command line in <code class="filename">/boot/grub/grub.cfg</code> can specify <code class="option">root=/dev/md1</code>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The swap devices should be specified in the <code class="filename">/etc/fstab</code> file as normal. The kernel normally stripes swap data across multiple swap files and should not be made part of a RAID array.
</div>

For further options and management details of RAID devices, refer to **`man mdadm`**.

Additional details for monitoring RAID arrays and dealing with problems can be found at the <a class="ulink" href="https://raid.wiki.kernel.org/index.php/Linux_Raid">Linux RAID Wiki</a>.
</div>
</div>

<div class="navfooter">
-   [Prev](aboutlvm.md "About Logical Volume Management (LVM)")

    About Logical Volume Management (LVM)

-   [Next](mdadm.md "mdadm-4.6")

    mdadm-4.6

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
