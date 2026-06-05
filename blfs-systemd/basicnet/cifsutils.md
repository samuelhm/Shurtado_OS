<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](netprogs.md "Networking Programs")

    Networking Programs

-   [Next](ncftp.md "NcFTP-3.3.0")

    NcFTP-3.3.0

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# cifs-utils-7.5 {#cifs-utils-7.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to cifs-utils {#introduction-to-cifs-utils}

The <span class="application">cifs-utils</span> package provides a means for mounting SMB/CIFS shares on a Linux system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.samba.org/ftp/linux-cifs/cifs-utils/cifs-utils-7.5.tar.bz2">https://www.samba.org/ftp/linux-cifs/cifs-utils/cifs-utils-7.5.tar.bz2</a>

-   Download MD5 sum: c091101fcf202e729407b110979b5990

-   Download size: 416 KB

-   Estimated disk space required: 5.1 MB

-   Estimated build time: 0.1 SBU
</div>

### cifs-utils Dependencies

#### Required

<a class="xref" href="../general/talloc.md" title="Talloc-2.4.4">Talloc-2.4.4</a>

#### Recommended

<a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>

#### Optional

<a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> (to create the man pages), <a class="xref" href="../general/keyutils.md" title="keyutils-1.6.3">keyutils-1.6.3</a> (required to build PAM module), <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, <a class="xref" href="samba.md" title="Samba-4.24.0">Samba-4.24.0</a>, and <a class="xref" href="../postlfs/libcap.md" title="libcap-2.78 with PAM">libcap-2.78 with PAM</a> or <a class="ulink" href="https://people.redhat.com/sgrubb/libcap-ng/">libcap-ng</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

```console
File systems --->
  [*] Network File Systems --->                            [NETWORK_FILESYSTEMS]
    <*/M> SMB3 and CIFS support (advanced network filesystem)             [CIFS]
```

Depending on your server configuration, additional kernel options may be required.
</div>

<div class="installation" lang="en">
## Installation of cifs-utils {#installation-of-cifs-utils}

First, make the build system compatible with GCC-15:

```bash
autoreconf -fiv
```

Install <span class="application">cifs-utils</span> by running the following commands:

```bash
./configure --prefix=/usr \
            --disable-pam &&
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

*`--disable-pam`*: Do not build PAM support. Remove it and use <code class="option">--with-pamdir</code> (see below), if <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a> is installed and you wish PAM support.

<code class="option">--with-pamdir=/usr/lib/security</code>: Install the PAM module in <code class="filename">/usr/lib/security</code>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cifs.idmap, cifs.upcall, cifscreds, getcifsacl, mount.cifs, mount.smb3, setcifsacl, smb2-quota, and smbinfo</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">/usr/lib/cifs-utils/idmapwb.so and optionally PAM module /usr/lib/security/pam_cifscreds.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/lib/cifs-utils</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="cifs.idmap"></a><span class="command"><span class="term"><strong>cifs.idmap</strong></span></span>     is a userspace helper program for the linux CIFS client filesystem. There are a number of activities that the kernel cannot easily do itself. This program is a callout program that does these things for the kernel and then returns the result. It is not intended to be run from the command-line
  <a id="cifs.upcall"></a><span class="command"><span class="term"><strong>cifs.upcall</strong></span></span>   is a userspace helper program for the linux CIFS client filesystem. It is intended to be run when the kernel calls request-key for a particular key type. It is not intended to be run from the command-line
  <a id="cifscreds"></a><span class="command"><span class="term"><strong>cifscreds</strong></span></span>       is a tool for managing credentials (username and password) for the purpose of establishing sessions in multiuser mounts
  <a id="getcifsacl"></a><span class="command"><span class="term"><strong>getcifsacl</strong></span></span>     is a userspace helper to display an ACL in a security descriptor for Common Internet File System (CIFS)
  <a id="mount.cifs"></a><span class="command"><span class="term"><strong>mount.cifs</strong></span></span>     mounts a Linux CIFS filesystem. It is usually invoked indirectly by the <a class="ulink" href="https://man.archlinux.org/man/mount.8">mount(8)</a> command when using the <code class="option">-t cifs</code> option
  <a id="mount.smb3"></a><span class="command"><span class="term"><strong>mount.smb3</strong></span></span>     mounts a SMB3-based filesystem. It is usually invoked indirectly by the <a class="ulink" href="https://man.archlinux.org/man/mount.8">mount(8)</a> command when using the <code class="option">-t smb3</code> option
  <a id="setcifsacl"></a><span class="command"><span class="term"><strong>setcifsacl</strong></span></span>     is intended to alter an ACL of a security descriptor for a file system object
  <a id="smb2-quota"></a><span class="command"><span class="term"><strong>smb3-quota</strong></span></span>     displays quota information for a SMB filesystem
  <a id="smbinfo"></a><span class="command"><span class="term"><strong>smbinfo</strong></span></span>           displays SMB-specific file information, such as security descriptors and quotas
  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](netprogs.md "Networking Programs")

    Networking Programs

-   [Next](ncftp.md "NcFTP-3.3.0")

    NcFTP-3.3.0

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
