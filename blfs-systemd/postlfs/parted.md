<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](gptfdisk.md "gptfdisk-1.0.10")

    gptfdisk-1.0.10

-   [Next](smartmontools.md "smartmontools-7.5")

    smartmontools-7.5

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# parted-3.7 {#parted-3.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to parted {#introduction-to-parted}

The <span class="application">Parted</span> package is a disk partitioning and partition resizing tool.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/parted/parted-3.7.tar.xz">https://ftpmirror.gnu.org/parted/parted-3.7.tar.xz</a>

-   Download MD5 sum: b56ec0cf7bc89d61da1585f88fc8ef5e

-   Download size: 1.9 MB

-   Estimated disk space required: 35 MB (additional 3 MB for the tests and additional 2 MB for optional PDF and Postscript documentation)

-   Estimated build time: 0.3 SBU (additional 3.6 SBU for the tests)
</div>

### Parted Dependencies

#### Recommended

<a class="xref" href="lvm2.md" title="LVM2-2.03.41">LVM2-2.03.41</a> (device-mapper, required if building <span class="application">udisks</span>)

#### Optional

<a class="xref" href="dosfstools.md" title="dosfstools-4.2">dosfstools-4.2</a>, <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>), and <a class="ulink" href="https://metacpan.org/pod/Digest::CRC">Digest::CRC</a> (for tests)
</div>

<div class="kernel" lang="en">
## Optional Kernel Configuration for Tests {#optional-kernel-configuration-for-tests}

About 20 % more tests are run if the following kernel module is built:

```console
Device Drivers --->
  SCSI device support --->
    [*] SCSI low-level drivers --->                              [SCSI_LOWLEVEL]
      <M> SCSI debugging host and device simulator                  [SCSI_DEBUG]
```
</div>

<div class="installation" lang="en">
## Installation of parted {#installation-of-parted}

Install <span class="application">Parted</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make &&

make -C doc html                                       &&
makeinfo --html      -o doc/html       doc/parted.texi &&
makeinfo --plaintext -o doc/parted.txt doc/parted.texi
```

If you have <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> installed and wish to create PDF and Postscript documentation issue the following commands:

```bash
cp build-aux/texinfo.tex doc               &&
texi2pdf -o doc/parted.pdf doc/parted.texi &&
texi2dvi -o doc/parted.dvi doc/parted.texi &&
dvips    -o doc/parted.ps  doc/parted.dvi
```

To test the results, issue, as the <code class="systemitem">root</code> user:

```bash
make check
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Many tests are skipped if not run as the <code class="systemitem">root</code> user.
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -m755 -d /usr/share/doc/parted-3.7/html &&
install -v -m644    doc/html/* \
                    /usr/share/doc/parted-3.7/html &&
install -v -m644    doc/{FAT,API.md,parted.{txt,html}} \
                    /usr/share/doc/parted-3.7
```

Install the optional PDF and Postscript documentation by issuing the following command as the <code class="systemitem">root</code> user:

```bash
install -v -m644 doc/FAT doc/API doc/parted.{pdf,ps,dvi} \
                    /usr/share/doc/parted-3.7
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--disable-device-mapper</code>: This option disables device mapper support. Add this parameter if you have not installed <span class="application">LVM2</span>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">parted and partprobe</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libparted.so and libparted-fs-resize.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/parted and /usr/share/doc/parted-3.7</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------
  <a id="parted-prog"></a><span class="command"><span class="term"><strong>parted</strong></span></span>    is a partition manipulation program
  <a id="partprobe"></a><span class="command"><span class="term"><strong>partprobe</strong></span></span>   informs the OS of partition table changes
  <a id="libparted"></a><span class="term"><code class="filename">libparted.so</code></span>   contains the <span class="application">Parted</span> API functions
  -------------------------------------------------- ---------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gptfdisk.md "gptfdisk-1.0.10")

    gptfdisk-1.0.10

-   [Next](smartmontools.md "smartmontools-7.5")

    smartmontools-7.5

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
