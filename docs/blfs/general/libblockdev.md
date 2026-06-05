<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libatomic_ops.md "libatomic_ops-7.10.0")

    libatomic_ops-7.10.0

-   [Next](libbytesize.md "libbytesize-2.12")

    libbytesize-2.12

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libblockdev-3.5.0 {#libblockdev-3.5.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libblockdev {#introduction-to-libblockdev}

libblockdev is a C library supporting GObject Introspection for manipulation of block devices. It has a plugin-based architecture where each technology (like LVM, Btrfs, MD RAID, Swap,...) is implemented in a separate plugin, possibly with multiple implementations (e.g. using LVM CLI or the new LVM DBus API).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/storaged-project/libblockdev/releases/download/3.5.0/libblockdev-3.5.0.tar.gz">https://github.com/storaged-project/libblockdev/releases/download/3.5.0/libblockdev-3.5.0.tar.gz</a>

-   Download MD5 sum: 68448042ea0a2073098fc4ae37b01cbf

-   Download size: 1.2 MB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.1 SBU
</div>

### libblockdev Dependencies

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection required for GNOME)

#### Recommended

<a class="xref" href="../postlfs/cryptsetup.md" title="cryptsetup-2.8.6">cryptsetup-2.8.6</a>, <a class="xref" href="keyutils.md" title="keyutils-1.6.3">keyutils-1.6.3</a>, <a class="xref" href="libatasmart.md" title="libatasmart-0.19">libatasmart-0.19</a>, <a class="xref" href="libbytesize.md" title="libbytesize-2.12">libbytesize-2.12</a>, <a class="xref" href="libnvme.md" title="libnvme-1.16.1">libnvme-1.16.1</a>, and <a class="xref" href="../postlfs/lvm2.md" title="LVM2-2.03.41">LVM2-2.03.41</a>

#### Optional

<a class="xref" href="../postlfs/btrfs-progs.md" title="btrfs-progs-7.0">btrfs-progs-7.0</a>, <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a>, <a class="xref" href="../postlfs/mdadm.md" title="mdadm-4.6">mdadm-4.6</a>, <a class="xref" href="../postlfs/parted.md" title="parted-3.7">parted-3.7</a>, <a class="xref" href="../postlfs/smartmontools.md" title="smartmontools-7.5">smartmontools-7.5</a>, <a class="ulink" href="https://github.com/felixonmars/volume_key">volume_key</a>, <a class="ulink" href="https://github.com/pmem/ndctl">ndctl</a>, and <a class="ulink" href="https://github.com/Datera/targetcli">targetcli</a> (for tests)
</div>

<div class="installation" lang="en">
## Installation of libblockdev {#installation-of-libblockdev}

Install <span class="application">libblockdev</span> by running the following commands:

```bash
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

The test suite requires <span class="application">targetcli</span>, which is not a part of BLFS.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--without-escrow`*: This switch allows building <span class="application">libblockdev</span> without volume_key installed.

*`--without-lvm`* *`--without-lvm_dbus`* *`--without-tools`*: The combination of these switches allows building <span class="application">libblockdev</span> without <a class="xref" href="../postlfs/parted.md" title="parted-3.7">parted-3.7</a> installed. Remove it if you've installed <a class="xref" href="../postlfs/parted.md" title="parted-3.7">parted-3.7</a> and wish to build the <span class="command"><strong>lvm-cache-stats</strong></span> or <span class="command"><strong>vfat-resize</strong></span> utilities, or wish <span class="application">libblockdev</span> to support logical volumes.

*`--without-smartmontools`*: This switch allows building <span class="application">libblockdev</span> without <a class="xref" href="json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a> or <a class="xref" href="../postlfs/smartmontools.md" title="smartmontools-7.5">smartmontools-7.5</a> installed. Remove it if you have both packages installed.

<code class="option">--without-btrfs --without-mdraid --without-tools</code>: The combination of these switches allows building <span class="application">libblockdev</span> without <a class="xref" href="libbytesize.md" title="libbytesize-2.12">libbytesize-2.12</a> installed. The <code class="option">--without-mdraid</code> option will break <a class="xref" href="udisks2.md" title="UDisks-2.11.1">UDisks-2.11.1</a>, so don't use it unless you really know what you are doing.

<code class="option">--without-crypto</code>: This switch allows building <span class="application">libblockdev</span> without <a class="xref" href="../postlfs/cryptsetup.md" title="cryptsetup-2.8.6">cryptsetup-2.8.6</a> or <a class="xref" href="keyutils.md" title="keyutils-1.6.3">keyutils-1.6.3</a> installed. This switch will break <a class="xref" href="udisks2.md" title="UDisks-2.11.1">UDisks-2.11.1</a>, so don't use it unless you really know what you are doing.

<code class="option">--without-dm --without-lvm --without-lvm_dbus --without-mpath</code>: The combination of these switches allows building <span class="application">libblockdev</span> without <a class="xref" href="../postlfs/lvm2.md" title="LVM2-2.03.41">LVM2-2.03.41</a> installed. The <code class="option">--without-dm</code> and <code class="option">--without-mpath</code> options are not in the instructions provided by the book because <a class="xref" href="../postlfs/lvm2.md" title="LVM2-2.03.41">LVM2-2.03.41</a> is required for <a class="xref" href="../postlfs/cryptsetup.md" title="cryptsetup-2.8.6">cryptsetup-2.8.6</a> and <a class="xref" href="../postlfs/cryptsetup.md" title="cryptsetup-2.8.6">cryptsetup-2.8.6</a> is a recommended dependency of <span class="application">libblockdev</span> anyway.

<code class="option">--without-nvme</code>: This switch allows building <span class="application">libblockdev</span> without <a class="xref" href="libnvme.md" title="libnvme-1.16.1">libnvme-1.16.1</a> installed. This switch will break <a class="xref" href="udisks2.md" title="UDisks-2.11.1">UDisks-2.11.1</a>, so don't use it unless you really know what you are doing.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">lvm-cache-stats and vfat-resize (both optional)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libbd_btrfs.so, libbd_crypto.so, libbd_dm.so, libbd_fs.so, libbd_loop.so, libbd_lvm.so (optional), libbd_lvm-dbus.so (optional), libbd_mdraid.so, libbd_mpath.so, libbd_nvme.so, libbd_part.so, libbd_swap.so, libbd_utils.so, and libblockdev.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/libblockdev, /usr/include/blockdev, and /usr/share/gtk-doc/html/libblockdev (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- ----------------------------------------------------
  <a id="lvm-cache-stats"></a><span class="command"><span class="term"><strong>lvm-cache-stats</strong></span></span>   prints statistics on caches on LVM Logical Volumes
  <a id="vfat-resize"></a><span class="command"><span class="term"><strong>vfat-resize</strong></span></span>           resizes <code class="systemitem">vfat</code> file systems
  -------------------------------------------------------------- ----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libatomic_ops.md "libatomic_ops-7.10.0")

    libatomic_ops-7.10.0

-   [Next](libbytesize.md "libbytesize-2.12")

    libbytesize-2.12

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
