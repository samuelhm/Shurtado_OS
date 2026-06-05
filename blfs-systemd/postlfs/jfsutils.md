<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](fuse.md "Fuse-3.18.2")

    Fuse-3.18.2

-   [Next](lvm2.md "LVM2-2.03.41")

    LVM2-2.03.41

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# jfsutils-1.1.15 {#jfsutils-1.1.15}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to jfsutils {#introduction-to-jfsutils}

The <span class="application">jfsutils</span> package contains administration and debugging tools for the jfs file system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://jfs.sourceforge.net/project/pub/jfsutils-1.1.15.tar.gz">https://jfs.sourceforge.net/project/pub/jfsutils-1.1.15.tar.gz</a>

-   Download MD5 sum: 8809465cd48a202895bc2a12e1923b5d

-   Download size: 532 KB

-   Estimated disk space required: 8.9 MB

-   Estimated build time: 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch to fix issues exposed by GCC 10 and later: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/jfsutils-1.1.15-gcc10_fix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/jfsutils-1.1.15-gcc10_fix-1.patch</a>
</div>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following option in the kernel configuration and recompile the kernel:

```console
File systems --->
  <*/M> JFS filesystem support                                          [JFS_FS]
```
</div>

<div class="installation" lang="en">
## Installation of jfsutils {#installation-of-jfsutils}

First, fix some issues exposed by GCC 10 and later:

```bash
patch -Np1 -i ../jfsutils-1.1.15-gcc10_fix-1.patch
```

Install <span class="application">jfsutils</span> by running the following commands:

```bash
sed -i "/unistd.h/a#include <sys/types.h>"    fscklog/extract.c &&
sed -i "/ioctl.h/a#include <sys/sysmacros.h>" libfs/devices.c   &&

./configure &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ...</strong></span>: Fixes building with glibc 2.28.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fsck.jfs, jfs_debugfs, jfs_fsck, jfs_fscklog, jfs_logdump, jfs_mkfs, jfs_tune, mkfs.jfs</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ --------------------------------------------------------------------------------------------------------------
  <a id="fsck.jfs"></a><span class="command"><span class="term"><strong>fsck.jfs</strong></span></span>         is used to replay the JFS transaction log, check a JFS formatted device for errors, and fix any errors found
  <a id="jfs_fsck"></a><span class="command"><span class="term"><strong>jfs_fsck</strong></span></span>         is a hard link to fsck.jfs
  <a id="mkfs.jfs"></a><span class="command"><span class="term"><strong>mkfs.jfs</strong></span></span>         constructs an JFS file system
  <a id="jfs_mkfs"></a><span class="command"><span class="term"><strong>jfs_mkfs</strong></span></span>         is a hard link to mkfs.jfs
  <a id="jfs_debugfs"></a><span class="command"><span class="term"><strong>jfs_debugfs</strong></span></span>   is a program which can be used to perform various low-level actions on a JFS formatted device
  <a id="jfs_fscklog"></a><span class="command"><span class="term"><strong>jfs_fscklog</strong></span></span>   extracts a JFS fsck service log into a file and/or formats and displays the extracted file
  <a id="jfs_logdump"></a><span class="command"><span class="term"><strong>jfs_logdump</strong></span></span>   dumps the contents of the journal log from the specified JFS formatted device into output file ./jfslog.dmp
  <a id="jfs_tune"></a><span class="command"><span class="term"><strong>jfs_tune</strong></span></span>         adjusts tunable file system parameters on JFS file systems
  ------------------------------------------------------ --------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fuse.md "Fuse-3.18.2")

    Fuse-3.18.2

-   [Next](lvm2.md "LVM2-2.03.41")

    LVM2-2.03.41

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
