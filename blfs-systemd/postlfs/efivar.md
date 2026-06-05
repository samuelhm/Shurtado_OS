<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](xfsprogs.md "xfsprogs-7.0.1")

    xfsprogs-7.0.1

-   [Next](efibootmgr.md "efibootmgr-18")

    efibootmgr-18

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# efivar-39 {#efivar-39}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to efivar {#introduction-to-efivar}

The <span class="application">efivar</span> package provides tools and libraries to manipulate EFI variables.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/rhboot/efivar/archive/39/efivar-39.tar.gz">https://github.com/rhboot/efivar/archive/39/efivar-39.tar.gz</a>

-   Download MD5 sum: a8fc3e79336cd6e738ab44f9bc96a5aa

-   Download size: 456 KB

-   Estimated disk space required: 21 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/efivar-39-upstream_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/efivar-39-upstream_fixes-1.patch</a>
</div>

### efivar Dependencies

#### Optional

<a class="ulink" href="https://mandoc.bsd.lv/">mandoc</a> (for the man page of <span class="command"><strong>efisecdb</strong></span>)
</div>

<div class="installation" lang="en">
## Installation of efivar {#installation-of-efivar}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package cannot function properly on a 32-bit system with a 64-bit UEFI implementation. Don't install this package (or efibootmgr) on 32-bit system unless you are absolutely sure you have a 32-bit UEFI implementation, which is very rare in practice.
</div>

First, apply a patch to make this package compatible with glibc-2.43 and later:

```bash
patch -Np1 -i ../efivar-39-upstream_fixes-1.patch
```

Build <span class="application">efivar</span> with the following commands:

```bash
make ENABLE_DOCS=0
```

The test suite of this package is dangerous. Running it may trigger firmware bugs and make your system unusable without using some special hardware to reprogram the firmware.

Now, as the <code class="systemitem">root</code> user:

```bash
make install ENABLE_DOCS=0 LIBDIR=/usr/lib
```

To avoid a hard dependency on <a class="ulink" href="https://mandoc.bsd.lv/">mandoc</a> we used *`ENABLE_DOCS=0`*, but it causes all the man pages skipped from the installation even though most of them actually do not need <a class="ulink" href="https://mandoc.bsd.lv/">mandoc</a>. Still as the <code class="systemitem">root</code> user, install these man pages:

```bash
install -vm644 docs/efivar.1 /usr/share/man/man1 &&
install -vm644 docs/*.3      /usr/share/man/man3
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`ENABLE_DOCS=0`*: Disable the generation of man pages, in order to allow building this package without <a class="ulink" href="https://mandoc.bsd.lv/">mandoc</a> installed.

*`LIBDIR=/usr/lib`*: This option overrides the default library directory of the package (<code class="filename">/usr/lib64</code>, which is not used by LFS).
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">efisecdb and efivar</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libefiboot.so, libefisec.so, and libefivar.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/efivar</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ----------------------------------------------------
  <a id="efisecdb"></a><span class="command"><span class="term"><strong>efisecdb</strong></span></span>       is a utility for managing UEFI signature lists
  <a id="efivar-prog"></a><span class="command"><span class="term"><strong>efivar</strong></span></span>      is a tool to manipulate UEFI variables
  <a id="libefiboot"></a><span class="term"><code class="filename">libefiboot.so</code></span>   is a library used by <span class="command"><strong>efibootmgr</strong></span>
  <a id="libefisec"></a><span class="term"><code class="filename">libefisec.so</code></span>     is a library for managing UEFI signature lists
  <a id="libefivar"></a><span class="term"><code class="filename">libefivar.so</code></span>     is a library for the manipulation of EFI variables
  ---------------------------------------------------- ----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfsprogs.md "xfsprogs-7.0.1")

    xfsprogs-7.0.1

-   [Next](efibootmgr.md "efibootmgr-18")

    efibootmgr-18

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
