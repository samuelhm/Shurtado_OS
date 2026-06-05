<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](jfsutils.md "jfsutils-1.1.15")

    jfsutils-1.1.15

-   [Next](aboutlvm.md "About Logical Volume Management (LVM)")

    About Logical Volume Management (LVM)

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# LVM2-2.03.41 {#lvm2-2.03.41}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to LVM2 {#introduction-to-lvm2}

The <span class="application">LVM2</span> package is a set of tools that manage logical partitions. It allows spanning of file systems across multiple physical disks and disk partitions and provides for dynamic growing or shrinking of logical partitions, mirroring and low storage footprint snapshots.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://sourceware.org/ftp/lvm2/LVM2.2.03.41.tgz">https://sourceware.org/ftp/lvm2/LVM2.2.03.41.tgz</a>

-   Download MD5 sum: 9696ce3b3844db1d90dae457f83b0306

-   Download size: 2.8 MB

-   Estimated disk space required: 38 MB (add up to 300 MB for transient files for tests in the /tmp directory)

-   Estimated build time: 0.4 SBU (add 9 to 48 SBU for tests, depending on disk speed and options enabled in the kernel)
</div>

### LVM2 Dependencies

#### Required

<a class="xref" href="../general/libaio.md" title="libaio-0.3.113">libaio-0.3.113</a>

#### Optional for tests

<a class="xref" href="btrfs-progs.md" title="btrfs-progs-7.0">btrfs-progs-7.0</a>, <a class="xref" href="dosfstools.md" title="dosfstools-4.2">dosfstools-4.2</a>, <a class="xref" href="jfsutils.md" title="jfsutils-1.1.15">jfsutils-1.1.15</a>, <a class="xref" href="mdadm.md" title="mdadm-4.6">mdadm-4.6</a>, <a class="xref" href="parted.md" title="parted-3.7">parted-3.7</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="xref" href="../general/which.md" title="Which-2.25 and Alternatives">Which-2.25</a>, <a class="xref" href="xfsprogs.md" title="xfsprogs-7.0.1">xfsprogs-7.0.1</a>, <a class="ulink" href="https://mirrors.edge.kernel.org/pub/linux/kernel/people/jeffm/reiserfsprogs/">reiserfsprogs</a>, <a class="ulink" href="https://github.com/jthornber/thin-provisioning-tools">thin-provisioning-tools</a>, and <a class="ulink" href="https://github.com/dm-vdo/vdo">vdo</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration and recompile the kernel:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

There are several other Device Mapper options in the kernel beyond those listed below. In order to get reasonable results if running the regression tests, all must be enabled either internally or as a module. The tests will all time out if Magic SysRq key is not enabled.

In addition most of the optional packages for tests require kernel options that are needed. If the optional packages or their kernel options are not installed the tests will be flagged as either failed or skipped in an inconsistent way.
</div>

```console
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
</div>

<div class="installation" lang="en">
## Installation of LVM2 {#installation-of-lvm2}

Install <span class="application">LVM2</span> by running the following commands:

```bash
PATH+=:/usr/sbin                \
./configure --prefix=/usr       \
            --enable-cmdlib     \
            --enable-pkgconfig  \
            --enable-udev_sync  &&
make
```

The tests use <span class="application">udev</span> for logical volume synchronization, so the LVM udev rules and some utilities need to be installed before running the tests. If you are installing <span class="application">LVM2</span> for the first time, and do not want to install the full package before running the tests, the minimal set of utilities can be installed by running the following instructions as the <code class="systemitem">root</code> user:

```bash
make -C tools install_tools_dynamic &&
make -C udev  install               &&
make -C libdm install
```

The tests need the ability to create and remove device nodes in the /tmp directory. On systemd systems, the default is to mount /tmp with the nodev option. Rather than disabling this behavior permanently (since it does have valid security reasons to be doing this), remount the /tmp filesystem temporarily as the <code class="systemitem">root</code> user:

```bash
mount -o remount,dev /tmp
```

To test the results, issue, as the <code class="systemitem">root</code> user:

```bash
LC_ALL=en_US.UTF-8 make check_local
```

Some tests may hang. In this case they can be skipped by adding <span class="command"><strong>S=\<testname\></strong></span> to the <span class="command"><strong>make</strong></span> command. Other targets are available and can be listed with <span class="command"><strong>make -C test help</strong></span>. The test timings are very dependent on the speed of the disk(s), and on the number of enabled kernel options.

The tests do not implement the <span class="quote">“<span class="quote">expected fail</span>”</span> possibility and some test failures are expected by upstream.

<div class="itemizedlist">
-   Most tests will fail if the kernel does not have all the device drivers listed above.

-   More failures may happen because some kernel options are missing. For example, the lack of the <span class="emphasis"><em>dm-delay</em></span> device mapper target explains some failures.

-   Some tests may fail if there is insufficient free space available in the partition with the /tmp directory. At least one test fails if 16 TB is not available.

-   Some tests are flagged <span class="quote">“<span class="quote">warned</span>”</span> if <a class="ulink" href="https://github.com/jthornber/thin-provisioning-tools">thin-provisioning-tools</a> are not installed. A workaround is to add the following flags to <span class="command"><strong>configure</strong></span>:
</div>

```bash
     --with-thin-check=    \
     --with-thin-dump=     \
     --with-thin-repair=   \
     --with-thin-restore=  \
     --with-cache-check=   \
     --with-cache-dump=    \
     --with-cache-repair=  \
     --with-cache-restore= \
```

Some tests may hang. They can be removed if necessary, for example: <span class="command"><strong>rm test/shell/lvconvert-raid-reshape.sh</strong></span>. The tests generate a lot of kernel messages, which may clutter your terminal. You can disable them by issuing <span class="command"><strong>dmesg -D</strong></span> before running the tests (do not forget to issue <span class="command"><strong>dmesg -E</strong></span> when tests are done).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The checks create device nodes in the /tmp directory. The tests will fail if /tmp is mounted with the nodev option.
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
make install
make install_systemd_units
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>PATH+=:/usr/sbin</strong></span>: The path must contain <code class="filename">/usr/sbin</code> for proper system tool detection by the <span class="command"><strong>configure</strong></span> script. This instruction ensures that PATH is properly set even if you build as an unprivileged user.

*`--enable-cmdlib`*: This switch enables building of the shared command library. It is required when building the event daemon.

*`--enable-pkgconfig`*: This switch enables installation of <span class="command"><strong>pkg-config</strong></span> support files.

*`--enable-udev_sync`*: This switch enables synchronisation with <span class="application">Udev</span> processing.

<code class="option">--enable-dmeventd</code>: This switch enables building of the <span class="application">Device Mapper</span> event daemon.

<span class="command"><strong>make install_systemd_units</strong></span>: This is needed to install a unit that activates logical volumes at boot. It is not installed by default.
</div>

<div class="configuration" lang="en">
## Configuring LVM2 {#configuring-lvm2}

<div class="sect3" lang="en">
### Config File {#config-file}

<code class="filename">/etc/lvm/lvm.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The default configuration still references the obsolete <code class="filename">/var/lock</code> directory. This creates a deadlock at boot time. Change this (as the <code class="systemitem">root</code> user):

```bash
sed -e '/locking_dir =/{s/#//;s/var/run/}' \
    -i /etc/lvm/lvm.conf
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">blkdeactivate, dmeventd (optional), dmsetup, fsadm, lvm, lvmdump, and lvm_import_vdo. There are also numerous symbolic links to lvm that implement specific functionalities</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libdevmapper.so and liblvm2cmd.so; optional: libdevmapper-event.so, libdevmapper-event-lvm2.so, libdevmapper-event-lvm2mirror.so, libdevmapper-event-lvm2raid.so, libdevmapper-event-lvm2snapshot.so, libdevmapper-event-lvm2thin.so, and libdevmapper-event-lvm2vdo.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/lvm and /usr/lib/device-mapper (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="blkdeactivate"></a><span class="command"><span class="term"><strong>blkdeactivate</strong></span></span>   is a utility to deactivate block devices
  <a id="dmeventd"></a><span class="command"><span class="term"><strong>dmeventd</strong></span></span>             (optional) is the Device Mapper event daemon
  <a id="dmsetup"></a><span class="command"><span class="term"><strong>dmsetup</strong></span></span>               is a low level logical volume management tool
  <a id="fsadm"></a><span class="command"><span class="term"><strong>fsadm</strong></span></span>                   is a utility used to resize or check filesystem on a device
  <a id="lvm"></a><span class="command"><span class="term"><strong>lvm</strong></span></span>                       provides the command-line tools for <span class="application">LVM2</span>. Commands are implemented via symbolic links to this program to manage physical devices (pv\*), volume groups (vg\*) and logical volumes (lv\*)
  <a id="lvmdump"></a><span class="command"><span class="term"><strong>lvmdump</strong></span></span>               is a tool used to dump various information concerning <span class="application">LVM2</span>
  <a id="vgimportclone"></a><span class="command"><span class="term"><strong>vgimportclone</strong></span></span>   is used to import a duplicated VG (e.g. hardware snapshot)
  <a id="libdevmapper"></a><span class="term"><code class="filename">libdevmapper.so</code></span>     contains the <span class="application">Device Mapper</span> API functions
  ---------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](jfsutils.md "jfsutils-1.1.15")

    jfsutils-1.1.15

-   [Next](aboutlvm.md "About Logical Volume Management (LVM)")

    About Logical Volume Management (LVM)

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
