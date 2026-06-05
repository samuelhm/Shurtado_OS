<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](at.md "at-3.2.5")

    at-3.2.5

-   [Next](bluez.md "BlueZ-5.86")

    BlueZ-5.86

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# autofs-5.1.9 {#autofs-5.1.9}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Autofs {#introduction-to-autofs}

<span class="application">Autofs</span> controls the operation of the automount daemons. The automount daemons automatically mount filesystems when they are accessed and unmount them after a period of inactivity. This is done based on a set of pre-configured maps.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.kernel.org/pub/linux/daemons/autofs/v5/autofs-5.1.9.tar.xz">https://www.kernel.org/pub/linux/daemons/autofs/v5/autofs-5.1.9.tar.xz</a>

-   Download MD5 sum: 06fb59a03c82364a0d788435b6853d70

-   Download size: 328 KB

-   Estimated disk space required: 5.7 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Autofs Dependencies

#### Required

<a class="xref" href="../basicnet/libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a> and <a class="xref" href="../basicnet/rpcsvc-proto.md" title="rpcsvc-proto-1.4.4">rpcsvc-proto-1.4.4</a>

#### Optional

<a class="xref" href="../basicnet/nfs-utils.md" title="NFS-Utils-2.9.1">nfs-utils-2.9.1</a>, <a class="xref" href="../basicnet/libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a>, <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a> (client only), and <a class="xref" href="../postlfs/cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Verify that automounter kernel support has been enabled:

```console
File systems --->
  <*/M> Kernel automounter support (supports v3, v4 and v5)          [AUTOFS_FS]
```

Optionally, enable the following options in the kernel configuration:

```console
File systems --->
  [*] Network File Systems --->                            [NETWORK_FILESYSTEMS]
    <*/M> NFS client support                                            [NFS_FS]
    <*/M> SMB3 and CIFS support (advanced network filesystem)             [CIFS]
```

Recompile and install the new kernel, if necessary.
</div>

<div class="installation" lang="en">
## Installation of Autofs {#installation-of-autofs}

Install <span class="application">Autofs</span> by running the following commands:

```bash
./configure --prefix=/usr             \
            --with-mapdir=/etc/autofs \
            --with-libtirpc           \
            --with-systemd            \
            --without-openldap        \
            --mandir=/usr/share/man   &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

If <span class="application">autofs</span> is already installed on your system, be sure to backup your configuration files. They'll be overwritten by the following command.
</div>

Install the default configuration files, still as the <code class="systemitem">root</code> user:

```bash
make install_samples
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-libtirpc`*: This switch forces the package to use libtirpc for RPC functionality instead of relying on implementation from Glibc, which was removed in LFS 8.1.

*`--with-systemd`*: This switch enables installation of the bundled systemd units.

*`--without-openldap`*: This switch disables openldap if found. If openldap is desired, omit this switch. Note that openldap support in autofs requires <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>.
</div>

<div class="configuration" lang="en">
## Configuring Autofs {#configuring-autofs}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/sysconfig/autofs.conf</code>, <code class="filename">/etc/autofs/auto.master</code>, <code class="filename">/etc/autofs/auto.misc</code>, and <code class="filename">/etc/autofs/auto.net</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The installation process creates <code class="filename">auto.master</code>, <code class="filename">auto.misc</code>, <code class="filename">auto.smb</code>, and <code class="filename">auto.net</code>. Replace the <code class="filename">auto.master</code> file with the following commands as the <code class="systemitem">root</code> user:

```bash
mv /etc/autofs/auto.master /etc/autofs/auto.master.bak &&
cat > /etc/autofs/auto.master << "EOF"
# Begin /etc/autofs/auto.master

/media/auto  /etc/autofs/auto.misc  --ghost
#/home        /etc/autofs/auto.home

# End /etc/autofs/auto.master
EOF
```

This file creates a new media directory, <code class="filename">/media/auto</code> that will overlay any existing directory of the same name. In this example, the file, <code class="filename">/etc/autofs/auto.misc</code>, has a line:

```console
cd   -fstype=iso9660,ro,nosuid,nodev :/dev/cdrom
```

that will mount a cdrom as <code class="filename">/media/auto/cd</code> if that directory is accessed. The <code class="option">--ghost</code> option tells the automounter to create <span class="quote">“<span class="quote">ghost</span>”</span> versions (i.e. empty directories) of all the mount points listed in the configuration file regardless whether any of the file systems are actually mounted or not. This is very convenient and highly recommended, because it will show you the available auto-mountable file systems as existing directories, even when their file systems aren't currently mounted. Without the <code class="option">--ghost</code> option, you'll have to remember the names of the directories. As soon as you try to access one of them, the directory will be created and the file system will be mounted. When the file system gets unmounted again, the directory is destroyed too, unless the <code class="option">--ghost</code> option was given.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An alternative method would be to specify another automount location such as <code class="filename">/var/lib/auto/cdrom</code> and create a symbolic link from <code class="filename">/media/cdrom</code> to the automount location.
</div>

The <code class="filename">auto.misc</code> file must be configured to your working hardware. The loaded configuration file should load your cdrom if <code class="filename">/dev/cdrom</code> is active or it can be edited to match your device setup. Examples for floppies are available in the file and easily activated. Documentation for this file is available using the <span class="command"><strong>man 5 autofs</strong></span> command.

In the second line, if enabled, a user's home directory would be mounted via NFS upon login. The <code class="filename">/etc/home.auto</code> would need to exist and have an entry similar to:

```console
joe  example.org:/export/home/joe
```

where the directory <code class="filename">/export/home/joe</code> is exported via NFS from the system example.org. NFS shares are covered on the next page.

This package could also be used to mount SMB shares, however that feature is not configured in these instructions. For additional configuration information, see the man pages for <a class="ulink" href="https://linux.die.net/man/5/auto.master">auto.master(5)</a>. There are also web resources such as this <a class="ulink" href="https://wiki.gentoo.org/wiki/AutoFS">AUTOFS HOWTO</a> available.
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start <span class="application">Autofs</span> at boot, enable the previously installed systemd unit by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable autofs
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

You can also specify <code class="envar">OPTIONS</code> variable in the <code class="filename">/etc/sysconfig/autofs</code> file with any additional parameters that you might want to pass to the automount daemon.
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">automount</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libautofs.so. lookup_dir.so, lookup_file.so, lookup_files.so (symlink to lookup_file.so), lookup_hosts.so, lookup_ldap.so (optional), lookup_multi.so, lookup_nis.so (symlink to lookup_yp.so), lookup_program.so, lookup_userhome.so, lookup_yp.so, mount_afs.so, mount_autofs.so, mount_bind.so, mount_changer.so, mount_ext2.so, mount_ext3.so (symlink to mount_ext2.so), mount_ext4.so (symlink to mount_ext2.so), mount_generic.so, mount_nfs.so, mount_nfs4.so (symlink to mount_nfs.so), parse_amd.so, and parse_sun.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/autofs and /etc/autofs</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------------------
  <a id="automount"></a><span class="command"><span class="term"><strong>automount</strong></span></span>   is the daemon that performs the mounting when a request is made for the device
  -------------------------------------------------- --------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](at.md "at-3.2.5")

    at-3.2.5

-   [Next](bluez.md "BlueZ-5.86")

    BlueZ-5.86

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
