<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](parted.md "parted-3.7")

    parted-3.7

-   [Next](sshfs.md "sshfs-3.7.6")

    sshfs-3.7.6

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# smartmontools-7.5 {#smartmontools-7.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to smartmontools {#introduction-to-smartmontools}

The <span class="application">smartmontools</span> package contains utility programs (smartctl, smartd) to control/monitor storage systems using the Self-Monitoring, Analysis and Reporting Technology System (S.M.A.R.T.) built into most modern ATA and SCSI disks.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/smartmontools/smartmontools-7.5.tar.gz">https://downloads.sourceforge.net/smartmontools/smartmontools-7.5.tar.gz</a>

-   Download MD5 sum: 38c38b0b82db7fc4906cdd50d15a7931

-   Download size: 1.1 MB

-   Estimated disk space required: 24 MB

-   Estimated build time: 0.2 SBU
</div>

### smartmontools Dependencies

#### Optional (runtime)

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a> or <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a> or <a class="xref" href="../basicnet/wget.md" title="Wget-1.25.0">Wget-1.25.0</a> (download tools), and <a class="xref" href="gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a> (encrypted hard disks)
</div>

<div class="installation" lang="en">
## Installation of smartmontools {#installation-of-smartmontools}

Install <span class="application">smartmontools</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/smartmontools-7.5 &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="configuration" lang="en">
## Configuring smartmontools {#configuring-smartmontools}

<div class="sect3" lang="en">
### Config File {#config-file}

<code class="filename">/etc/smartd.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

See the embedded comments in <code class="filename">/etc/smartd.conf</code> for detailed instructions on customizing the <span class="application">smartd</span> daemon.
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

If you want the <span class="application">smartd</span> daemon to start automatically when the system is booted, enable the systemd unit provided by the package by executing the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable smartd
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">smartctl, smartd, and update-smart-drivedb</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/smartmontools, /usr/share/doc/smartmontools-7.5, and /etc/smartd_warning.d</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ ---------------------------------------------------------
  <a id="smartctl"></a><span class="command"><span class="term"><strong>smartctl</strong></span></span>                           is the control and monitor utility for SMART Disks
  <a id="smartd"></a><span class="command"><span class="term"><strong>smartd</strong></span></span>                               is the SMART disk monitoring daemon
  <a id="update-smart-drivedb"></a><span class="command"><span class="term"><strong>update-smart-drivedb</strong></span></span>   is the update tool for the smartmontools drive database
  ------------------------------------------------------------------------ ---------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](parted.md "parted-3.7")

    parted-3.7

-   [Next](sshfs.md "sshfs-3.7.6")

    sshfs-3.7.6

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
