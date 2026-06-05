<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](mdadm.md "mdadm-4.6")

    mdadm-4.6

-   [Next](gptfdisk.md "gptfdisk-1.0.10")

    gptfdisk-1.0.10

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# ntfs-3g-2026.2.25 {#ntfs-3g-2026.2.25}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Ntfs-3g {#introduction-to-ntfs-3g}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<a id="ntfs3-kernel"></a> A new read-write driver for NTFS, called NTFS3, has been added into the Linux kernel since the 5.15 release. The performance of NTFS3 is much better than ntfs-3g. To enable NTFS3, enable the following options in the kernel configuration and recompile the kernel if necessary:

```console
File systems --->
  DOS/FAT/EXFAT/NT Filesystems --->
    <*/M> NTFS Read-Write file system support                         [NTFS3_FS]
    # This makes the kernel use NTFS3 when the userspace requests the old
    # read-only NTFS driver:
    <*/M> NTFS file system support                                     [NTFS_FS]
```

With the kernel support available, ntfs-3g is only needed if you need the utilities from it (for example, to create or check NTFS filesystems).
</div>

The <span class="application">Ntfs-3g</span> package contains a stable, read-write open source driver for NTFS partitions. NTFS partitions are used by most Microsoft operating systems. Ntfs-3g allows you to mount NTFS partitions in read-write mode from your Linux system. It uses the FUSE kernel module to be able to implement NTFS support in userspace. The package also contains various utilities useful for manipulating NTFS partitions.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/tuxera/ntfs-3g/archive/2026.2.25/ntfs-3g-2026.2.25.tar.gz">https://github.com/tuxera/ntfs-3g/archive/2026.2.25/ntfs-3g-2026.2.25.tar.gz</a>

-   Download MD5 sum: e92f169f58eda3307f2ca128bd42792f

-   Download size: 884 KB

-   Estimated disk space required: 26 MB

-   Estimated build time: 0.2 SBU
</div>

### Ntfs-3g Dependencies

#### Optional

<a class="ulink" href="https://github.com/libfuse/libfuse">fuse 2.x</a> (this disables user mounts)
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

```console
File systems --->
  <*/M> FUSE (Filesystem in Userspace) support                         [FUSE_FS]
```

Note that it is only needed for mounting NTFS partitions with ntfs-3g. If you will use the in-kernel NTFS3 driver for mounting NTFS partitions (as the BLFS editors recommend) instead, you can skip this configuration item.
</div>

<div class="installation" lang="en">
## Installation of Ntfs-3g {#installation-of-ntfs-3g}

Install <span class="application">Ntfs-3g</span> by running the following commands:

```bash
./autogen.sh &&

./configure --prefix=/usr        \
            --disable-static     \
            --with-fuse=internal \
            --docdir=/usr/share/doc/ntfs-3g-2026.2.25 &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

It's recommended to use the in-kernel NTFS3 driver for mounting NTFS filesystems, instead of ntfs-3g (see the note at the start of this page). However, if you want to use ntfs-3g to mount the NTFS filesystems anyway, create a symlink for the <span class="command"><strong>mount</strong></span> command:

```bash
ln -svf ../bin/ntfs-3g /usr/sbin/mount.ntfs &&
ln -svf ntfs-3g.8 /usr/share/man/man8/mount.ntfs.8
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-fuse=internal`*: This switch dynamically forces <span class="application">ntfs-3g</span> to use an internal copy of the <span class="application">fuse-2.x</span> library. This is required if you wish to allow users to mount NTFS partitions.

<code class="option">--disable-ntfsprogs</code>: Disables installation of various utilities used to manipulate NTFS partitions.

<span class="command"><strong>chmod -v 4755 /usr/bin/ntfs-3g</strong></span>: Making mount.ntfs setuid root allows non root users to mount NTFS partitions.
</div>

<div class="configuration" lang="en">
## Using Ntfs-3g {#using-ntfs-3g}

To mount a Windows partition at boot time, put a line like this in /etc/fstab:

```console
/dev/sda1 /mnt/windows auto defaults 0 0
```

To allow users to mount a usb stick with an NTFS filesystem on it, put a line similar to this (change sdc1 to whatever a usb stick would be on your system) in /etc/fstab:

```console
/dev/sdc1 /mnt/usb auto user,noauto,umask=0,utf8 0 0
```

In order for a user to be able to mount the usb stick, they will need to be able to write to <code class="filename">/mnt/usb</code>, so as the <code class="systemitem">root</code> user:

```bash
chmod -v 777 /mnt/usb
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">lowntfs-3g, mkfs.ntfs, mkntfs, mount.lowntfs-3g, mount.ntfs, mount.ntfs-3g, ntfs-3g, ntfs-3g.probe, ntfscat, ntfsclone, ntfscluster, ntfscmp, ntfscp, ntfsfix, ntfsinfo, ntfslabel, ntfsls, ntfsresize and ntfsundelete</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libntfs-3g.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/ntfs-3g and /usr/share/doc/ntfs-3g</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="lowntfs-3g"></a><span class="command"><span class="term"><strong>lowntfs-3g</strong></span></span>               is similar to ntfs-3g but uses the Fuse low-level interface
  <a id="mkfs.ntfs"></a><span class="command"><span class="term"><strong>mkfs.ntfs</strong></span></span>                 is a symlink to mkntfs
  <a id="mkntfs"></a><span class="command"><span class="term"><strong>mkntfs</strong></span></span>                       creates an NTFS file system
  <a id="mount.lowntfs-3g"></a><span class="command"><span class="term"><strong>mount.lowntfs-3g</strong></span></span>   is a symlink to lowntfs-3g
  <a id="mount.ntfs"></a><span class="command"><span class="term"><strong>mount.ntfs</strong></span></span>               mounts an NTFS filesystem
  <a id="mount.ntfs-3g"></a><span class="command"><span class="term"><strong>mount.ntfs-3g</strong></span></span>         is a symbolic link to ntfs-3g
  <a id="ntfs-3g-prog"></a><span class="command"><span class="term"><strong>ntfs-3g</strong></span></span>                is an NTFS driver, which can create, remove, rename, move files, directories, hard links, and streams. It can also read and write files, including streams, sparse files and transparently compressed files. It can also handle special files like symbolic links, devices, and FIFOs; moreover it provides standard management of file ownership and permissions, including POSIX ACLs
  <a id="ntfs-3g.probe"></a><span class="command"><span class="term"><strong>ntfs-3g.probe</strong></span></span>         tests if an NTFS volume is mountable read only or read-write, and exits with a status value accordingly. The volume can be a block device or image file
  <a id="ntfscluster"></a><span class="command"><span class="term"><strong>ntfscluster</strong></span></span>             identifies files in a specified region of an NTFS volume
  <a id="ntfscp"></a><span class="command"><span class="term"><strong>ntfscp</strong></span></span>                       copies a file to an NTFS volume
  <a id="ntfsfix"></a><span class="command"><span class="term"><strong>ntfsfix</strong></span></span>                     fixes common errors and forces Windows to check an NTFS partition
  <a id="ntfsls"></a><span class="command"><span class="term"><strong>ntfsls</strong></span></span>                       lists directory contents on an NTFS filesystem
  <a id="ntfscat"></a><span class="command"><span class="term"><strong>ntfscat</strong></span></span>                     prints NTFS files and streams on the standard output
  <a id="ntfsclone"></a><span class="command"><span class="term"><strong>ntfsclone</strong></span></span>                 clones an NTFS filesystem
  <a id="ntfscmp"></a><span class="command"><span class="term"><strong>ntfscmp</strong></span></span>                     compares two NTFS filesystems and shows the differences
  <a id="ntfsinfo"></a><span class="command"><span class="term"><strong>ntfsinfo</strong></span></span>                   dumps a file's attributes
  <a id="ntfslabel"></a><span class="command"><span class="term"><strong>ntfslabel</strong></span></span>                 displays or changes the label on an ntfs file system
  <a id="ntfsresize"></a><span class="command"><span class="term"><strong>ntfsresize</strong></span></span>               resizes an NTFS filesystem without data loss
  <a id="ntfsundelete"></a><span class="command"><span class="term"><strong>ntfsundelete</strong></span></span>           recovers a deleted file from an NTFS volume
  <a id="libntfs-3g"></a><span class="term"><code class="filename">libntfs-3g.so</code></span>               contains the Ntfs-3g API functions
  ---------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mdadm.md "mdadm-4.6")

    mdadm-4.6

-   [Next](gptfdisk.md "gptfdisk-1.0.10")

    gptfdisk-1.0.10

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
