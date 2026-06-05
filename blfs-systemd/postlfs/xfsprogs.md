<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](sshfs.md "sshfs-3.7.6")

    sshfs-3.7.6

-   [Next](efivar.md "efivar-39")

    efivar-39

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xfsprogs-7.0.1 {#xfsprogs-7.0.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to xfsprogs {#introduction-to-xfsprogs}

The <span class="application">xfsprogs</span> package contains administration and debugging tools for the XFS file system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.kernel.org/pub/linux/utils/fs/xfs/xfsprogs/xfsprogs-7.0.1.tar.xz">https://www.kernel.org/pub/linux/utils/fs/xfs/xfsprogs/xfsprogs-7.0.1.tar.xz</a>

-   Download MD5 sum: 9a275597276da2958d3d2fcb4525f8c6

-   Download size: 1.5 MB

-   Estimated disk space required: 74 MB

-   Estimated build time: 0.3 SBU (Using parallelism=4)
</div>

### xfsprogs Dependencies

#### Required

<a class="xref" href="../general/inih.md" title="inih-62">inih-62</a> and <a class="xref" href="../general/liburcu.md" title="liburcu-0.15.6">liburcu-0.15.6</a>

#### Optional

<a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a> (for unicode name scanning in xfs_scrub)
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration and recompile the kernel:

```console
File systems --->
  <*/M> XFS filesystem support                                          [XFS_FS]
```
</div>

<div class="installation" lang="en">
## Installation of xfsprogs {#installation-of-xfsprogs}

Install <span class="application">xfsprogs</span> by running the following commands:

```bash
make DEBUG=-DNDEBUG     \
     INSTALL_USER=root  \
     INSTALL_GROUP=root \
     LOCAL_CONFIGURE_OPTIONS="--localstatedir=/var"
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make PKG_DOC_DIR=/usr/share/doc/xfsprogs-7.0.1 install     &&
make PKG_DOC_DIR=/usr/share/doc/xfsprogs-7.0.1 install-dev &&

rm -rfv /usr/lib/libhandle.{a,la}
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`DEBUG=-DNDEBUG`*: Turns off debugging symbols.

*`INSTALL_USER=root`* *`INSTALL_GROUP=root`*: This sets the owner and group of the installed files.

*`LOCAL_CONFIGURE_OPTIONS="--localstatedir=/var"`*: This sets the state directory to /var, preventing /usr/var from being created.

<code class="option">OPTIMIZER="..."</code>: Adding this parameter to the end of the <span class="command"><strong>make</strong></span> command overrides the default optimization settings.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fsck.xfs, mkfs.xfs, xfs_admin, xfs_bmap, xfs_copy, xfs_db, xfs_estimate, xfs_freeze, xfs_fsr, xfs_growfs, xfs_info, xfs_io, xfs_logprint, xfs_mdrestore, xfs_metadump, xfs_mkfile, xfs_ncheck, xfs_property, xfs_protofile, xfs_quota, xfs_repair, xfs_rtcp, xfs_scrub, xfs_scrub_all, and xfs_spaceman</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libhandle.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/xfs, /usr/lib/xfsprogs, /usr/share/xfsprogs, and /usr/share/doc/xfsprogs-7.0.1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="fsck.xfs"></a><span class="command"><span class="term"><strong>fsck.xfs</strong></span></span>             simply exits with a zero status, since XFS partitions are checked at mount time
  <a id="mkfs.xfs"></a><span class="command"><span class="term"><strong>mkfs.xfs</strong></span></span>             constructs an XFS file system
  <a id="xfs_admin"></a><span class="command"><span class="term"><strong>xfs_admin</strong></span></span>           changes the parameters of an XFS file system
  <a id="xfs_bmap"></a><span class="command"><span class="term"><strong>xfs_bmap</strong></span></span>             prints block mapping for an XFS file
  <a id="xfs_copy"></a><span class="command"><span class="term"><strong>xfs_copy</strong></span></span>             copies the contents of an XFS file system to one or more targets in parallel
  <a id="xfs_estimate"></a><span class="command"><span class="term"><strong>xfs_estimate</strong></span></span>     for each directory argument, estimates the space that directory would take if it were copied to an XFS filesystem (does not cross mount points)
  <a id="xfs_db"></a><span class="command"><span class="term"><strong>xfs_db</strong></span></span>                 is used to debug an XFS file system
  <a id="xfs_freeze"></a><span class="command"><span class="term"><strong>xfs_freeze</strong></span></span>         suspends access to an XFS file system
  <a id="xfs_fsr"></a><span class="command"><span class="term"><strong>xfs_fsr</strong></span></span>               applicable only to XFS filesystems, improves the organization of mounted filesystems, the reorganization algorithm operates on one file at a time, compacting or otherwise improving the layout of the file extents (contiguous blocks of file data)
  <a id="xfs_growfs"></a><span class="command"><span class="term"><strong>xfs_growfs</strong></span></span>         expands an XFS file system
  <a id="xfs_info"></a><span class="command"><span class="term"><strong>xfs_info</strong></span></span>             is equivalent to invoking <span class="command"><strong>xfs_growfs</strong></span>, but specifying that no change to the file system is to be made
  <a id="xfs_io"></a><span class="command"><span class="term"><strong>xfs_io</strong></span></span>                 is a debugging tool like <span class="command"><strong>xfs_db</strong></span>, but is aimed at examining the regular file I/O path rather than the raw XFS volume itself
  <a id="xfs_logprint"></a><span class="command"><span class="term"><strong>xfs_logprint</strong></span></span>     prints the log of an XFS file system
  <a id="xfs_mdrestore"></a><span class="command"><span class="term"><strong>xfs_mdrestore</strong></span></span>   restores an XFS metadump image to a filesystem image
  <a id="xfs_metadump"></a><span class="command"><span class="term"><strong>xfs_metadump</strong></span></span>     copies XFS filesystem metadata to a file
  <a id="xfs_mkfile"></a><span class="command"><span class="term"><strong>xfs_mkfile</strong></span></span>         creates an XFS file, padded with zeroes by default
  <a id="xfs_ncheck"></a><span class="command"><span class="term"><strong>xfs_ncheck</strong></span></span>         generates pathnames from inode numbers for an XFS file system
  <a id="xfs_property"></a><span class="command"><span class="term"><strong>xfs_property</strong></span></span>     examines and edits properties about a XFS filesystem
  <a id="xfs_protofile"></a><span class="command"><span class="term"><strong>xfs_protofile</strong></span></span>   creates a protofile for use with <span class="command"><strong>mkfs.xfs</strong></span>
  <a id="xfs_quota"></a><span class="command"><span class="term"><strong>xfs_quota</strong></span></span>           is a utility for reporting and editing various aspects of filesystem quotas
  <a id="xfs_repair"></a><span class="command"><span class="term"><strong>xfs_repair</strong></span></span>         repairs corrupt or damaged XFS file systems
  <a id="xfs_rtcp"></a><span class="command"><span class="term"><strong>xfs_rtcp</strong></span></span>             copies a file to the real-time partition on an XFS file system
  <a id="xfs_scrub"></a><span class="command"><span class="term"><strong>xfs_scrub</strong></span></span>           checks and repairs the contents of a mounted XFS file system
  <a id="xfs_scrub_all"></a><span class="command"><span class="term"><strong>xfs_scrub_all</strong></span></span>   scrubs all mounted XFS file systems
  <a id="xfs_spaceman"></a><span class="command"><span class="term"><strong>xfs_spaceman</strong></span></span>     reports and controls free space usage in an XFS file system
  <a id="libhandle"></a><span class="term"><code class="filename">libhandle.so</code></span>           contains XFS-specific functions that provide a way to perform certain filesystem operations without using a file descriptor to access filesystem objects
  ---------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sshfs.md "sshfs-3.7.6")

    sshfs-3.7.6

-   [Next](efivar.md "efivar-39")

    efivar-39

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
