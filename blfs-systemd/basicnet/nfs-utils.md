<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](net-tools.md "Net-tools-2.10")

    Net-tools-2.10

-   [Next](ntp.md "ntp-4.2.8p18")

    ntp-4.2.8p18

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# NFS-Utils-2.9.1 {#nfs-utils-2.9.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to NFS Utilities {#introduction-to-nfs-utilities}

The <span class="application">NFS Utilities</span> package contains the userspace server and client tools necessary to use the kernel's NFS abilities. NFS is a protocol that allows sharing file systems over the network.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.kernel.org/pub/linux/utils/nfs-utils/2.9.1/nfs-utils-2.9.1.tar.xz">https://www.kernel.org/pub/linux/utils/nfs-utils/2.9.1/nfs-utils-2.9.1.tar.xz</a>

-   Download MD5 sum: cbe69cd70cf81c99d6f3172613b2d250

-   Download size: 748 KB

-   Estimated disk space required: 20 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### NFS Utilities Dependencies

#### Required

<a class="xref" href="libevent.md" title="libevent-2.1.12">libevent-2.1.12</a>, <a class="xref" href="libnl.md" title="libnl-3.12.0">libnl-3.12.0</a>, <a class="xref" href="libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, and <a class="xref" href="rpcsvc-proto.md" title="rpcsvc-proto-1.4.4">rpcsvc-proto-1.4.4</a>

#### Optional

<a class="xref" href="../postlfs/cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a> (for SASL authentication), <a class="xref" href="libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a> (for NIS client support), <a class="xref" href="../postlfs/lvm2.md" title="LVM2-2.03.41">LVM2-2.03.41</a> (libdevmapper for NFSv4 support), <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a> (for LDAP authentication), <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> or <a class="ulink" href="http://www.citi.umich.edu/projects/nfsv4/linux/">libgssapi</a>, and <a class="ulink" href="http://www.citi.umich.edu/projects/nfsv4/linux/">librpcsecgss</a> (for GSS and RPC security support), and <a class="xref" href="../postlfs/libcap.md" title="libcap-2.78 with PAM">libcap-2.78 with PAM</a>

#### Required (runtime)

<a class="xref" href="rpcbind.md" title="rpcbind-1.2.9">rpcbind-1.2.9</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration (choose client and/or server support as appropriate) and recompile the kernel if necessary:

```console
File systems --->
  [*] Network File Systems --->                            [NETWORK_FILESYSTEMS]
    <*/M> NFS client support                                            [NFS_FS]
    <*/M> NFS server support                                              [NFSD]
```

Select the appropriate sub-options that appear when the above options are selected.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

In BLFS we assume that NFSv3 will be used. If the <span class="emphasis"><em>server</em></span> offers NFSv4 (for linux, CONFIG_NFSD_V4) then auto-negotiation for v3 will fail and you will need to add <code class="literal">nfsver=3</code> to the mount options. This also applies if that option is enabled in the <span class="emphasis"><em>client's</em></span> kernel, for example in a distro trying to mount from a BLFS NFSv3 server.

Even if neither end of the connection supports NFSv4, adding <code class="literal">nfsver=3</code> is still beneficial because it prevents an error message "NFS: bad mount option value specified: minorversion=1" being logged on every mount.

Note that for the purposes of BLFS, we are only covering NFSv3 because it is easier to configure. If you depend on some of the more advanced configuration or security features of NFSv4, you may wish to review <a class="ulink" href="https://bobcares.com/blog/mastering-nfsv4-mount-setup-in-client-and-server/">this blog post</a> as it may help you setup configuration for NFSv4.
</div>
</div>

<div class="installation" lang="en">
## Installation of NFS Utilities {#installation-of-nfs-utilities}

Install <span class="application">NFS Utilities</span> by running the following commands:

```bash
./configure --prefix=/usr       \
            --sysconfdir=/etc   \
            --sbindir=/usr/sbin \
            --disable-nfsv4     \
            --disable-gss &&
make
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install                       &&
chmod u+w,go+r /usr/sbin/mount.nfs &&
chown nobody:nogroup /var/lib/nfs
```

The tests for this package require that the package be installed. In addition, the rpc.statd daemon must not be running and the tests need to be run as the <code class="systemitem">root</code> user.

To test the results, issue, as <code class="systemitem">root</code>:

```bash
make check
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-nfsv4`*: This option prevents building NFSv4 capabilities into the installed programs. Remove it if you need the advanced capabilities provided by NFSv4.

*`--disable-gss`*: Disables GSSAPI support in this package. If you need to use it, make sure that <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> is installed, and that you have GSSAPI support enabled in <a class="xref" href="libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a> as well.

<span class="command"><strong>chown nobody:nogroup /var/lib/nfs</strong></span>: The rpc.statd program uses the ownership of this directory to set it's UID and GID. This command sets those to unprivileged entries.
</div>

<div class="configuration" lang="en">
## Configuring NFS Utilities {#configuring-nfs-utilities}

<div class="sect3" lang="en">
### Server Configuration {#server-configuration}

<code class="filename">/etc/exports</code> contains the exported directories on NFS servers. Refer to the <code class="filename">exports.5</code> manual page for the syntax of this file. Also refer to the "NFS HowTo" available at <a class="ulink" href="https://nfs.sourceforge.net/nfs-howto/">https://nfs.sourceforge.net/nfs-howto/</a> for information on how to configure the servers and clients in a secure manner. For example, for sharing the <code class="filename">/home</code> directory over the local network, the following line may be added:

```bash
cat >> /etc/exports << EOF
/home 192.168.0.0/24(rw,subtree_check,anonuid=99,anongid=99)
EOF
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Be sure to replace the directory, network address. and prefix above to match your network. The only space in the line above should be between the directory and the network address.
</div>

<div class="sect4">
<div class="titlepage">


##### <span class="phrase">Systemd Units</span> {#systemd-units}


</div>

If you have enabled building NFSv4 capabilities, install the <span class="phrase">NFSv4 server units</span> included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package to start the server at boot.

```bash
make install-nfsv4-server
```

If you have disabled NFSv4 support, run the following command as the <code class="systemitem">root</code> user to omit the NFSv4 specific systemd units:

```bash
make install-nfs-server
```

You can edit the <code class="filename">/etc/default/nfs-utils</code> file to change the startup options for NFS daemons. Defaults should be fine for most use cases.
</div>
</div>

<div class="sect3" lang="en">
### Client Configuration {#client-configuration}

<code class="filename">/etc/fstab</code> contains the directories that are to be mounted on the client. Alternately the partitions can be mounted by using the <span class="command"><strong>mount</strong></span> command with the proper options. To mount the <code class="filename">/home</code> and <code class="filename">/usr</code> partitions, add the following to the <code class="filename">/etc/fstab</code>:

```bash
<server-name>:/home  /home nfs   rw,_netdev 0 0
<server-name>:/usr   /usr  nfs   ro,_netdev 0 0
```

The options which can be used are specified in <span class="command"><strong>man 5 nfs</strong></span> . If both the client and server are running recent versions of linux, most of the options will be negotiated (but see the Note above on nfsver=3). You can specify either <code class="literal">rw</code> or <code class="literal">ro</code>, <code class="literal">_netdev</code> if the filesystem is to be automatically mounted at boot, or <code class="literal">noauto</code> (and perhaps <code class="literal">user</code>) for other filesystems.

If the fileserver is not running a recent version of linux, you may need to specify other options.

You may need to enable autofs v4 in your kernel, and add the option <code class="literal">comment=systemd.automount</code>. Some machines may need this because systemd tries to mount the external filesystems before the network is up. An alternative is to run <span class="command"><strong>mount -a</strong></span> as the <code class="systemitem">root</code> user after the system has started.

<div class="sect4">
<div class="titlepage">


##### <span class="phrase">Systemd Units</span> {#systemd-units-1}


</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The following <span class="phrase">systemd units are</span> not required if the nfs-server <span class="phrase">units are</span> installed.
</div>

Install the <span class="phrase">units</span> included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package to start the client services at boot.

```bash
make install-nfs-client
```
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">exportfs, fsidd, mountstats, mount.nfs, mount.nfs4 (link to mount.nfs), nfsconf, nfsdclnts, nfsiostat, nfsstat, rpc.mountd, rpc.nfsd, rpc.statd, rpcdebug, showmount, sm-notify, start-statd, umount.nfs (link to mount.nfs), and umount.nfs4 (link to mount.nfs)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/var/lib/nfs</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="exportfs"></a><span class="command"><span class="term"><strong>exportfs</strong></span></span>               maintains a list of NFS exported file systems
  <a id="fsidd"></a><span class="command"><span class="term"><strong>fsidd</strong></span></span>                     offers a local UNIX domain socket interface for all NFS userspace to query the reexport database
  <a id="mountstats"></a><span class="command"><span class="term"><strong>mountstats</strong></span></span>           displays NFS client per-mount statistics
  <a id="mount.nfs"></a><span class="command"><span class="term"><strong>mount.nfs</strong></span></span>             is used to mount a network share using NFS
  <a id="mount.nfs4"></a><span class="command"><span class="term"><strong>mount.nfs4</strong></span></span>           is used to mount a network share using NFSv4
  <a id="nfsconf"></a><span class="command"><span class="term"><strong>nfsconf</strong></span></span>                 can be used to test for and retrieve configuration settings from a range of nfs-utils configuration files
  <a id="nfsdclnts"></a><span class="command"><span class="term"><strong>nfsdclnts</strong></span></span>             prints information about NFS clients
  <a id="nfsiostat-nfs-utils"></a><span class="command"><span class="term"><strong>nfsiostat</strong></span></span>   reports input/output statistics for network filesystems
  <a id="nfsstat"></a><span class="command"><span class="term"><strong>nfsstat</strong></span></span>                 displays statistics kept about NFS client and server activity
  <a id="rpc.mountd"></a><span class="command"><span class="term"><strong>rpc.mountd</strong></span></span>           implements the NFS mount protocol on an NFS server
  <a id="rpc.nfsd"></a><span class="command"><span class="term"><strong>rpc.nfsd</strong></span></span>               implements the user level part of the NFS service on the server
  <a id="rpc.statd"></a><span class="command"><span class="term"><strong>rpc.statd</strong></span></span>             is used by the NFS file locking service. Run on both sides, client as well as server, when you want file locking enabled
  <a id="rpcdebug"></a><span class="command"><span class="term"><strong>rpcdebug</strong></span></span>               sets or clears the kernel's NFS client and server debug flags
  <a id="showmount"></a><span class="command"><span class="term"><strong>showmount</strong></span></span>             displays mount information for an NFS server
  <a id="sm-notify"></a><span class="command"><span class="term"><strong>sm-notify</strong></span></span>             is used to send Network Status Monitor reboot messages
  <a id="start-statd"></a><span class="command"><span class="term"><strong>start-statd</strong></span></span>         is a script called by nfsmount when mounting a filesystem with locking enabled, if statd does not appear to be running. It can be customised with whatever flags are appropriate for the site
  <a id="umount.nfs"></a><span class="command"><span class="term"><strong>umount.nfs</strong></span></span>           is used to unmount a network share using NFS
  <a id="umount.nfs4"></a><span class="command"><span class="term"><strong>umount.nfs4</strong></span></span>         is used to unmount a network share using NFSv4
  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](net-tools.md "Net-tools-2.10")

    Net-tools-2.10

-   [Next](ntp.md "ntp-4.2.8p18")

    ntp-4.2.8p18

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
