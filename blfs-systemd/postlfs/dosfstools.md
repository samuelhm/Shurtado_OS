<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](btrfs-progs.md "btrfs-progs-7.0")

    btrfs-progs-7.0

-   [Next](fuse.md "Fuse-3.18.2")

    Fuse-3.18.2

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# dosfstools-4.2 {#dosfstools-4.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to dosfstools {#introduction-to-dosfstools}

The <span class="application">dosfstools</span> package contains various utilities for use with the FAT family of file systems.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/dosfstools/dosfstools/releases/download/v4.2/dosfstools-4.2.tar.gz">https://github.com/dosfstools/dosfstools/releases/download/v4.2/dosfstools-4.2.tar.gz</a>

-   Download MD5 sum: 49c8e457327dc61efab5b115a27b087a

-   Download size: 314 KB

-   Estimated disk space required: 4.5 MB (with tests)

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following option in the kernel configuration and recompile the kernel if you need to mount a FAT-family filesystem:

```console
File systems --->
  DOS/FAT/EXFAT/NT Filesystems --->
    < /*/M> MSDOS fs support                                          [MSDOS_FS]
    <*/M>   VFAT (Windows-95) fs support                               [VFAT_FS]
```

Note that <code class="option">CONFIG_MSDOS_FS</code> deliberately does not support long file names. <code class="option">CONFIG_VFAT_FS</code> should be used instead unless you really want to enforce the DOS-style <span class="quote">“<span class="quote">8.3</span>”</span> file names.

You can mount a FAT-family filesystem once the kernel supports it. If you don't need to create, check, or relabel a FAT-family system, you may skip this package.
</div>

<div class="installation" lang="en">
## Installation of dosfstools {#installation-of-dosfstools}

Install <span class="application">dosfstools</span> by running the following commands:

```bash
./configure --prefix=/usr            \
            --enable-compat-symlinks \
            --mandir=/usr/share/man  \
            --docdir=/usr/share/doc/dosfstools-4.2 &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-compat-symlinks`*: This switch creates the <span class="application">dosfsck</span>, <span class="application">dosfslabel</span>, <span class="application">fsck.msdos</span>, <span class="application">fsck.vfat</span>, <span class="application">mkdosfs</span>, <span class="application">mkfs.msdos</span>, and <span class="application">mkfs.vfat</span> symlinks required by some programs.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fatlabel, fsck.fat, and mkfs.fat</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ------------------------------------------------------------
  <a id="fatlabel"></a><span class="command"><span class="term"><strong>fatlabel</strong></span></span>   sets or gets a MS-DOS filesystem label from a given device
  <a id="fsckfat"></a><span class="command"><span class="term"><strong>fsck.fat</strong></span></span>    checks and repairs MS-DOS filesystems
  <a id="mkfsfat"></a><span class="command"><span class="term"><strong>mkfs.fat</strong></span></span>    creates an MS-DOS filesystem under Linux
  ------------------------------------------------ ------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](btrfs-progs.md "btrfs-progs-7.0")

    btrfs-progs-7.0

-   [Next](fuse.md "Fuse-3.18.2")

    Fuse-3.18.2

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
