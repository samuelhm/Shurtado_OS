<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](initramfs.md "About initramfs")

    About initramfs

-   [Next](dosfstools.md "dosfstools-4.2")

    dosfstools-4.2

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# btrfs-progs-7.0 {#btrfs-progs-7.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to btrfs-progs {#introduction-to-btrfs-progs}

The <span class="application">btrfs-progs</span> package contains administration and debugging tools for the B-tree file system (btrfs).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.kernel.org/pub/linux/kernel/people/kdave/btrfs-progs/btrfs-progs-v7.0.tar.xz">https://www.kernel.org/pub/linux/kernel/people/kdave/btrfs-progs/btrfs-progs-v7.0.tar.xz</a>

-   Download MD5 sum: 58f14462ee1da3e36d0bde684e48b9ea

-   Download size: 4.8 MB

-   Estimated disk space required: 70 MB (transient files created during tests need up to 10 GB)

-   Estimated build time: 0.3 SBU (with parallelism=4; add 4.6 SBU for tests, up to 14 SBU on slow disks)
</div>

### Btrfs-progs Dependencies

#### Required

<a class="xref" href="../general/lzo.md" title="LZO-2.10">LZO-2.10</a>

#### Optional

<a class="xref" href="lvm2.md" title="LVM2-2.03.41">LVM2-2.03.41</a> (<span class="command"><strong>dmsetup</strong></span> is used in tests), <a class="xref" href="ntfs-3g.md" title="ntfs-3g-2026.2.25">ntfs-3g-2026.2.25</a>, <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> and <a class="xref" href="../general/python-modules.md#sphinx_rtd_theme" title="Sphinx_rtd_theme-3.1.0">sphinx_rtd_theme-3.1.0</a> (required to build documentation), and <a class="ulink" href="https://mirrors.edge.kernel.org/pub/linux/kernel/people/jeffm/reiserfsprogs/">reiserfsprogs</a> (for tests).
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following option in the kernel configuration and recompile the kernel:

```console
File systems --->
  <*/M> Btrfs filesystem support                                      [BTRFS_FS]
```

In addition to the above and to the options required for <a class="xref" href="lvm2.md" title="LVM2-2.03.41">LVM2-2.03.41</a>, the following options must be set for running tests. The options marked as empty should <span class="emphasis"><em>not</em></span> be selected because they are for developers and make some tests fail.

```console
File systems --->
  <*/M> Btrfs filesystem support                                      [BTRFS_FS]
  [*]     Btrfs POSIX Access Control Lists                  [BTRFS_FS_POSIX_ACL]
  [ ]     Btrfs will run sanity tests upon loading   [BTRFS_FS_RUN_SANITY_TESTS]
  [ ]     Btrfs debugging support                                  [BTRFS_DEBUG]
  [ ]     Btrfs assert support                                    [BTRFS_ASSERT]
```
</div>

<div class="installation" lang="en">
## Installation of btrfs-progs {#installation-of-btrfs-progs}

Install <span class="application">btrfs-progs</span> by running the following commands:

```bash
./configure --prefix=/usr           \
            --disable-static        \
            --disable-documentation &&
make
```

Before running tests, build a support program:

```bash
make fssum
```

Now, remove tests that are known to fail. As <code class="systemitem">root</code>:

```bash
rm -rf tests/mkfs-tests/042-rootdir-contents
rm -rf tests/misc-tests/041-subvolume-delete-during-send
rm -rf tests/fuzz-tests/010-simple-sb
```

To test the results, issue (as the <code class="systemitem">root</code> user):

```bash
pushd tests
   ./fsck-tests.sh
   ./mkfs-tests.sh
   ./cli-tests.sh
   ./convert-tests.sh
   ./misc-tests.sh
   ./fuzz-tests.sh
popd
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If the above mentioned kernel options are not enabled, some tests fail, and prevent all the remaining tests from running because the test disk image is not cleanly unmounted. Also make sure that the btrfs kernel module is loaded.
</div>

Install the package as the <code class="systemitem">root</code> user:

```bash
make install
```

If you have passed *`--disable-documentation`* to <span class="command"><strong>configure</strong></span> and you need the manual pages, install them by running, as the <code class="systemitem">root</code> user:

```bash
for i in 5 8; do
   install Documentation/*.$i /usr/share/man/man$i
done
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--disable-documentation`*: This switch disables rebuilding the manual pages, because it requires <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">btrfs, btrfs-convert, btrfs-find-root, btrfs-image, btrfs-map-logical, btrfs-select-super, btrfsck (link to btrfs), btrfstune, fsck.btrfs, and mkfs.btrfs</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libbtrfs.so and libbtrfsutil.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/btrfs</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- -----------------------------------------------------------
  <a id="btrfs-prog"></a><span class="command"><span class="term"><strong>btrfs</strong></span></span>                        is the main interface into btrfs filesystem operations
  <a id="btrfs-convert"></a><span class="command"><span class="term"><strong>btrfs-convert</strong></span></span>             converts from an ext2/3/4 or reiserfs filesystem to btrfs
  <a id="btrfs-find-root"></a><span class="command"><span class="term"><strong>btrfs-find-root</strong></span></span>         is a filter to find btrfs root
  <a id="btrfs-map-logical"></a><span class="command"><span class="term"><strong>btrfs-map-logical</strong></span></span>     maps btrfs logical extent to physical extent
  <a id="btrfs-select-super"></a><span class="command"><span class="term"><strong>btrfs-select-super</strong></span></span>   overwrites the primary superblock with a backup copy
  <a id="btrfstune"></a><span class="command"><span class="term"><strong>btrfstune</strong></span></span>                     tunes various filesystem parameters
  <a id="fsck.btrfs"></a><span class="command"><span class="term"><strong>fsck.btrfs</strong></span></span>                   does nothing, but is present for consistency with fstab
  <a id="mkfs.btrfs"></a><span class="command"><span class="term"><strong>mkfs.btrfs</strong></span></span>                   creates a btrfs file system
  -------------------------------------------------------------------- -----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](initramfs.md "About initramfs")

    About initramfs

-   [Next](dosfstools.md "dosfstools-4.2")

    dosfstools-4.2

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
