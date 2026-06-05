::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](net-tools.md "Net-tools-2.10"){accesskey="p"}

    Net-tools-2.10

-   [Next](ntp.md "ntp-4.2.8p18"){accesskey="n"}

    ntp-4.2.8p18

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#nfs-utils}NFS-Utils-2.9.1 {#nfs-utils-2.9.1 .sect1}

:::::::::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to NFS Utilities {#introduction-to-nfs-utilities .sect2}

The [NFS Utilities]{.application} package contains the userspace server and client tools necessary to use the kernel's NFS abilities. NFS is a protocol that allows sharing file systems over the network.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.kernel.org/pub/linux/utils/nfs-utils/2.9.1/nfs-utils-2.9.1.tar.xz](https://www.kernel.org/pub/linux/utils/nfs-utils/2.9.1/nfs-utils-2.9.1.tar.xz){.ulink}

-   Download MD5 sum: cbe69cd70cf81c99d6f3172613b2d250

-   Download size: 748 KB

-   Estimated disk space required: 20 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
:::

### NFS Utilities Dependencies

#### Required

[libevent-2.1.12](libevent.md "libevent-2.1.12"){.xref}, [libnl-3.12.0](libnl.md "libnl-3.12.0"){.xref}, [libtirpc-1.3.7](libtirpc.md "libtirpc-1.3.7"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, and [rpcsvc-proto-1.4.4](rpcsvc-proto.md "rpcsvc-proto-1.4.4"){.xref}

#### Optional

[Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref} (for SASL authentication), [libnsl-2.0.1](libnsl.md "libnsl-2.0.1"){.xref} (for NIS client support), [LVM2-2.03.41](../postlfs/lvm2.md "LVM2-2.03.41"){.xref} (libdevmapper for NFSv4 support), [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref} (for LDAP authentication), [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} or [libgssapi](http://www.citi.umich.edu/projects/nfsv4/linux/){.ulink}, and [librpcsecgss](http://www.citi.umich.edu/projects/nfsv4/linux/){.ulink} (for GSS and RPC security support), and [libcap-2.78 with PAM](../postlfs/libcap.md "libcap-2.78 with PAM"){.xref}

#### Required (runtime)

[rpcbind-1.2.9](rpcbind.md "rpcbind-1.2.9"){.xref}
:::::

:::: {.kernel lang="en"}
## []{#nfs-utils-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration (choose client and/or server support as appropriate) and recompile the kernel if necessary:

``` screen
File systems --->
  [*] Network File Systems --->                            [NETWORK_FILESYSTEMS]
    <*/M> NFS client support                                            [NFS_FS]
    <*/M> NFS server support                                              [NFSD]
```

Select the appropriate sub-options that appear when the above options are selected.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

In BLFS we assume that NFSv3 will be used. If the [*server*]{.emphasis} offers NFSv4 (for linux, CONFIG_NFSD_V4) then auto-negotiation for v3 will fail and you will need to add `nfsver=3`{.literal} to the mount options. This also applies if that option is enabled in the [*client's*]{.emphasis} kernel, for example in a distro trying to mount from a BLFS NFSv3 server.

Even if neither end of the connection supports NFSv4, adding `nfsver=3`{.literal} is still beneficial because it prevents an error message "NFS: bad mount option value specified: minorversion=1" being logged on every mount.

Note that for the purposes of BLFS, we are only covering NFSv3 because it is easier to configure. If you depend on some of the more advanced configuration or security features of NFSv4, you may wish to review [this blog post](https://bobcares.com/blog/mastering-nfsv4-mount-setup-in-client-and-server/){.ulink} as it may help you setup configuration for NFSv4.
:::
::::

::: {.installation lang="en"}
## []{#nfs-utils-install}Installation of NFS Utilities {#installation-of-nfs-utilities .sect2}

Install [NFS Utilities]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr       \
            --sysconfdir=/etc   \
            --sbindir=/usr/sbin \
            --disable-nfsv4     \
            --disable-gss &&
make
```

Now, as the `root`{.systemitem} user:

``` root
make install                       &&
chmod u+w,go+r /usr/sbin/mount.nfs &&
chown nobody:nogroup /var/lib/nfs
```

The tests for this package require that the package be installed. In addition, the rpc.statd daemon must not be running and the tests need to be run as the `root`{.systemitem} user.

To test the results, issue, as `root`{.systemitem}:

``` root
make check
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-nfsv4`*: This option prevents building NFSv4 capabilities into the installed programs. Remove it if you need the advanced capabilities provided by NFSv4.

*`--disable-gss`*: Disables GSSAPI support in this package. If you need to use it, make sure that [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} is installed, and that you have GSSAPI support enabled in [libtirpc-1.3.7](libtirpc.md "libtirpc-1.3.7"){.xref} as well.

[**chown nobody:nogroup /var/lib/nfs**]{.command}: The rpc.statd program uses the ownership of this directory to set it's UID and GID. This command sets those to unprivileged entries.
:::

::::::::::::::: {.configuration lang="en"}
## Configuring NFS Utilities {#configuring-nfs-utilities .sect2}

:::::::: {.sect3 lang="en"}
### []{#nfs-utils-server-config}Server Configuration {#server-configuration .sect3}

`/etc/exports`{.filename} contains the exported directories on NFS servers. Refer to the `exports.5`{.filename} manual page for the syntax of this file. Also refer to the "NFS HowTo" available at [https://nfs.sourceforge.net/nfs-howto/](https://nfs.sourceforge.net/nfs-howto/){.ulink} for information on how to configure the servers and clients in a secure manner. For example, for sharing the `/home`{.filename} directory over the local network, the following line may be added:

``` userinput
cat >> /etc/exports << EOF
/home 192.168.0.0/24(rw,subtree_check,anonuid=99,anongid=99)
EOF
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Be sure to replace the directory, network address. and prefix above to match your network. The only space in the line above should be between the directory and the network address.
:::

:::::: sect4
::::: titlepage


##### []{#nfs-utils-server-init} [Systemd Units]{.phrase} {#systemd-units .title}


:::::

If you have enabled building NFSv4 capabilities, install the [NFSv4 server units]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package to start the server at boot.

``` userinput
make install-nfsv4-server
```

If you have disabled NFSv4 support, run the following command as the `root`{.systemitem} user to omit the NFSv4 specific systemd units:

``` root
make install-nfs-server
```

You can edit the `/etc/default/nfs-utils`{.filename} file to change the startup options for NFS daemons. Defaults should be fine for most use cases.
::::::
::::::::

:::::::: {.sect3 lang="en"}
### []{#nfs-utils-client-config}Client Configuration {#client-configuration .sect3}

`/etc/fstab`{.filename} contains the directories that are to be mounted on the client. Alternately the partitions can be mounted by using the [**mount**]{.command} command with the proper options. To mount the `/home`{.filename} and `/usr`{.filename} partitions, add the following to the `/etc/fstab`{.filename}:

``` userinput
<server-name>:/home  /home nfs   rw,_netdev 0 0
<server-name>:/usr   /usr  nfs   ro,_netdev 0 0
```

The options which can be used are specified in [**man 5 nfs**]{.command} . If both the client and server are running recent versions of linux, most of the options will be negotiated (but see the Note above on nfsver=3). You can specify either `rw`{.literal} or `ro`{.literal}, `_netdev`{.literal} if the filesystem is to be automatically mounted at boot, or `noauto`{.literal} (and perhaps `user`{.literal}) for other filesystems.

If the fileserver is not running a recent version of linux, you may need to specify other options.

You may need to enable autofs v4 in your kernel, and add the option `comment=systemd.automount`{.literal}. Some machines may need this because systemd tries to mount the external filesystems before the network is up. An alternative is to run [**mount -a**]{.command} as the `root`{.systemitem} user after the system has started.

::::::: sect4
::::: titlepage


##### []{#nfs-utils-client-init} [Systemd Units]{.phrase} {#systemd-units-1 .title}


:::::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The following [systemd units are]{.phrase} not required if the nfs-server [units are]{.phrase} installed.
:::

Install the [units]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package to start the client services at boot.

``` root
make install-nfs-client
```
:::::::
::::::::
:::::::::::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [exportfs, fsidd, mountstats, mount.nfs, mount.nfs4 (link to mount.nfs), nfsconf, nfsdclnts, nfsiostat, nfsstat, rpc.mountd, rpc.nfsd, rpc.statd, rpcdebug, showmount, sm-notify, start-statd, umount.nfs (link to mount.nfs), and umount.nfs4 (link to mount.nfs)]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/var/lib/nfs]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#exportfs}[[**exportfs**]{.command}]{.term}               maintains a list of NFS exported file systems
  []{#fsidd}[[**fsidd**]{.command}]{.term}                     offers a local UNIX domain socket interface for all NFS userspace to query the reexport database
  []{#mountstats}[[**mountstats**]{.command}]{.term}           displays NFS client per-mount statistics
  []{#mount.nfs}[[**mount.nfs**]{.command}]{.term}             is used to mount a network share using NFS
  []{#mount.nfs4}[[**mount.nfs4**]{.command}]{.term}           is used to mount a network share using NFSv4
  []{#nfsconf}[[**nfsconf**]{.command}]{.term}                 can be used to test for and retrieve configuration settings from a range of nfs-utils configuration files
  []{#nfsdclnts}[[**nfsdclnts**]{.command}]{.term}             prints information about NFS clients
  []{#nfsiostat-nfs-utils}[[**nfsiostat**]{.command}]{.term}   reports input/output statistics for network filesystems
  []{#nfsstat}[[**nfsstat**]{.command}]{.term}                 displays statistics kept about NFS client and server activity
  []{#rpc.mountd}[[**rpc.mountd**]{.command}]{.term}           implements the NFS mount protocol on an NFS server
  []{#rpc.nfsd}[[**rpc.nfsd**]{.command}]{.term}               implements the user level part of the NFS service on the server
  []{#rpc.statd}[[**rpc.statd**]{.command}]{.term}             is used by the NFS file locking service. Run on both sides, client as well as server, when you want file locking enabled
  []{#rpcdebug}[[**rpcdebug**]{.command}]{.term}               sets or clears the kernel's NFS client and server debug flags
  []{#showmount}[[**showmount**]{.command}]{.term}             displays mount information for an NFS server
  []{#sm-notify}[[**sm-notify**]{.command}]{.term}             is used to send Network Status Monitor reboot messages
  []{#start-statd}[[**start-statd**]{.command}]{.term}         is a script called by nfsmount when mounting a filesystem with locking enabled, if statd does not appear to be running. It can be customised with whatever flags are appropriate for the site
  []{#umount.nfs}[[**umount.nfs**]{.command}]{.term}           is used to unmount a network share using NFS
  []{#umount.nfs4}[[**umount.nfs4**]{.command}]{.term}         is used to unmount a network share using NFSv4
  ------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](net-tools.md "Net-tools-2.10"){accesskey="p"}

    Net-tools-2.10

-   [Next](ntp.md "ntp-4.2.8p18"){accesskey="n"}

    ntp-4.2.8p18

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
