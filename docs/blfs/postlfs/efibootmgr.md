<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](efivar.md "efivar-39")

    efivar-39

-   [Next](editors.md "Text Editors")

    Text Editors

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# efibootmgr-18 {#efibootmgr-18}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to efibootmgr {#introduction-to-efibootmgr}

The <span class="application">efibootmgr</span> package provides tools and libraries to manipulate EFI variables.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/rhboot/efibootmgr/archive/18/efibootmgr-18.tar.gz">https://github.com/rhboot/efibootmgr/archive/18/efibootmgr-18.tar.gz</a>

-   Download MD5 sum: e170147da25e1d5f72721ffc46fe4e06

-   Download size: 48 KB

-   Estimated disk space required: 1.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

### efibootmgr Dependencies

#### Required

<a class="xref" href="efivar.md" title="efivar-39">efivar-39</a> and <a class="xref" href="../general/popt.md" title="Popt-1.19">popt-1.19</a>
</div>

<div class="installation" lang="en">
## Installation of efibootmgr {#installation-of-efibootmgr}

Build <span class="application">efibootmgr</span> with the following commands:

```bash
make EFIDIR=LFS EFI_LOADER=grubx64.efi
```

This package does not have a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install EFIDIR=LFS
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`EFIDIR=LFS`*: This option specifies the distro's subdirectory name under <code class="filename">/boot/efi/EFI</code>. The building system of this package needs it to be set explicitly.

*`EFI_LOADER=grubx64.efi`*: This option specifies the name of the default EFI boot loader. It is set to match the EFI boot loader provided by GRUB.
</div>

<div class="using" lang="en">
## Using efibootmgr {#using-efibootmgr}

In LFS, the instructions go over how to install GRUB for UEFI. The process installs the EFI in a hardcoded location searched by most UEFI firmware implementations. If you reinstall GRUB however, GRUB will use this package to install the EFI in a place GRUB prefers, which allows greater control over EFI management. The <code class="option">--removable</code> option will no longer be necessary when running <span class="command"><strong>grub-install</strong></span>. This package may be necessary in scenarios where the UEFI firmware doesn't look for the hardcoded EFI location. The LFS book addresses this situation.

In order for <span class="command"><strong>efibootmgr</strong></span> to work, the EFI variable file system must be mounted beforehand. If you're still in a chroot and haven't rebooted, mount it as the <code class="systemitem">root</code> user:

```bash
mountpoint /sys/firmware/efi/efivars ||
  mount -v -t efivarfs efivarfs /sys/firmware/efi/efivars
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">efibootdump and efibootmgr</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------- ------------------------------------------------------------------------------------
  <a id="efibootdump"></a><span class="command"><span class="term"><strong>efibootdump</strong></span></span>      is a tool to display individual UEFI boot options, from a file or an UEFI variable
  <a id="efibootmgr-prog"></a><span class="command"><span class="term"><strong>efibootmgr</strong></span></span>   is a tool to manipulate the UEFI Boot Manager
  --------------------------------------------------------- ------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](efivar.md "efivar-39")

    efivar-39

-   [Next](editors.md "Text Editors")

    Text Editors

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
