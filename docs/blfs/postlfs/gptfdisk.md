<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](ntfs-3g.md "ntfs-3g-2026.2.25")

    ntfs-3g-2026.2.25

-   [Next](parted.md "parted-3.7")

    parted-3.7

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gptfdisk-1.0.10 {#gptfdisk-1.0.10}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to gptfdisk {#introduction-to-gptfdisk}

The <span class="application">gptfdisk</span> package is a set of programs for creation and maintenance of GUID Partition Table (GPT) disk drives. A GPT partitioned disk is required for drives greater than 2 TB and is a modern replacement for legacy PC-BIOS partitioned disk drives that use a Master Boot Record (MBR). The main program, <span class="command"><strong>gdisk</strong></span>, has an interface similar to the classic <span class="command"><strong>fdisk</strong></span> program.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/gptfdisk/gptfdisk-1.0.10.tar.gz">https://downloads.sourceforge.net/gptfdisk/gptfdisk-1.0.10.tar.gz</a>

-   Download MD5 sum: 1970269eb7a97560e238611524b7797a

-   Download size: 216 KB

-   Estimated disk space required: 2.4 MB

-   Estimated build time: less than 0.1 SBU (add 0.2 SBU for tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Recommended patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/gptfdisk-1.0.10-convenience-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/gptfdisk-1.0.10-convenience-1.patch</a>
</div>

### gptfdisk Dependencies

#### Required

<a class="xref" href="../general/popt.md" title="Popt-1.19">popt-1.19</a>

#### Optional

<a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>
</div>

<div class="installation" lang="en">
## Installation of gptfdisk {#installation-of-gptfdisk}

The <span class="application">gptfdisk</span> package comes with a rudimentary <code class="filename">Makefile</code>. First we update it to provide a simple build and install interface and fix the location of a header file and fix some minor location issues. Install <span class="application">gptfdisk</span> by running the following commands:

```bash
patch -Np1 -i ../gptfdisk-1.0.10-convenience-1.patch &&
sed -i 's|ncursesw/||' gptcurses.cc &&
sed -i 's|sbin|usr/sbin|' Makefile  &&

make
```

To test the results, issue: <span class="command"><strong>make test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>patch -Np1 ...</strong></span>: This patch modifies the <code class="filename">Makefile</code> file so that it provides an <span class="quote">“<span class="quote">install</span>”</span> target.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cgdisk, gdisk, fixparts, and sgdisk</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ------------------------------------------------------------------------------------------
  <a id="cgdisk"></a><span class="command"><span class="term"><strong>cgdisk</strong></span></span>       is an ncurses-based tool for manipulating GPT partitions
  <a id="gdisk"></a><span class="command"><span class="term"><strong>gdisk</strong></span></span>         is an interactive text-mode tool for manipulating GPT partitions
  <a id="fixparts"></a><span class="command"><span class="term"><strong>fixparts</strong></span></span>   repairs mis-formatted MBR based disk partitions
  <a id="sgdisk"></a><span class="command"><span class="term"><strong>sgdisk</strong></span></span>       is a partition manipulation program for GPT partitions similar to <span class="command"><strong>sfdisk</strong></span>
  ------------------------------------------------ ------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ntfs-3g.md "ntfs-3g-2026.2.25")

    ntfs-3g-2026.2.25

-   [Next](parted.md "parted-3.7")

    parted-3.7

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
