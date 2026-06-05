<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](raid.md "About RAID")

    About RAID

-   [Next](ntfs-3g.md "ntfs-3g-2026.2.25")

    ntfs-3g-2026.2.25

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# mdadm-4.6 {#mdadm-4.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to mdadm {#introduction-to-mdadm}

The <span class="application">mdadm</span> package contains administration tools for software RAID.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://git.kernel.org/pub/scm/utils/mdadm/mdadm.git/snapshot/mdadm-4.6.tar.gz">https://git.kernel.org/pub/scm/utils/mdadm/mdadm.git/snapshot/mdadm-4.6.tar.gz</a>

-   Download MD5 sum: 603c73b0b6b1da57e1107f2e4ad2133f

-   Download size: 612 KB

-   Estimated disk space required: 5.6 MB

-   Estimated build time: 0.1 SBU
</div>

### mdadm Dependencies

#### Optional

An <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration and recompile the kernel, if necessary. Only the RAID types desired are required.

```console
Device Drivers --->
  [*] Multiple devices driver support (RAID and LVM) --->                   [MD]
    <*/M>   RAID support                                            [BLK_DEV_MD]
    [*]       Autodetect RAID arrays during kernel boot          [MD_AUTODETECT]
    # Only the RAID types desired are required:
    < /*/M> RAID-0 (striping) mode                                    [MD_RAID0]
    < /*/M> RAID-1 (mirroring) mode                                   [MD_RAID1]
    < /*/M> RAID-10 (mirrored striping) mode                         [MD_RAID10]
    < /*/M> RAID-4/RAID-5/RAID-6 mode                               [MD_RAID456]
```
</div>

<div class="installation" lang="en">
## Installation of mdadm {#installation-of-mdadm}

Build <span class="application">mdadm</span> by running the following command:

```bash
make
```

This package does not come with a working test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make BINDIR=/usr/sbin install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>make everything</strong></span>: This optional target creates extra programs, particularly a statically-linked version of <span class="command"><strong>mdadm</strong></span>. This needs to be manually installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">mdadm and mdmon</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- --------------------------------------------
  <a id="mdadm-prog"></a><span class="command"><span class="term"><strong>mdadm</strong></span></span>   manages MD devices aka Linux Software RAID
  <a id="mdmon"></a><span class="command"><span class="term"><strong>mdmon</strong></span></span>        monitors MD external metadata arrays
  ----------------------------------------------- --------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](raid.md "About RAID")

    About RAID

-   [Next](ntfs-3g.md "ntfs-3g-2026.2.25")

    ntfs-3g-2026.2.25

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
