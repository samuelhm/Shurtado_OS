::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](at.md "at-3.2.5"){accesskey="p"}

    at-3.2.5

-   [Next](bluez.md "BlueZ-5.86"){accesskey="n"}

    BlueZ-5.86

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#autofs}autofs-5.1.9 {#autofs-5.1.9 .sect1}

::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Autofs {#introduction-to-autofs .sect2}

[Autofs]{.application} controls the operation of the automount daemons. The automount daemons automatically mount filesystems when they are accessed and unmount them after a period of inactivity. This is done based on a set of pre-configured maps.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.kernel.org/pub/linux/daemons/autofs/v5/autofs-5.1.9.tar.xz](https://www.kernel.org/pub/linux/daemons/autofs/v5/autofs-5.1.9.tar.xz){.ulink}

-   Download MD5 sum: 06fb59a03c82364a0d788435b6853d70

-   Download size: 328 KB

-   Estimated disk space required: 5.7 MB

-   Estimated build time: less than 0.1 SBU
:::

### Autofs Dependencies

#### Required

[libtirpc-1.3.7](../basicnet/libtirpc.md "libtirpc-1.3.7"){.xref} and [rpcsvc-proto-1.4.4](../basicnet/rpcsvc-proto.md "rpcsvc-proto-1.4.4"){.xref}

#### Optional

[nfs-utils-2.9.1](../basicnet/nfs-utils.md "NFS-Utils-2.9.1"){.xref}, [libnsl-2.0.1](../basicnet/libnsl.md "libnsl-2.0.1"){.xref}, [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref} (client only), and [Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref}
:::::

::: {.kernel lang="en"}
## []{#autofs-kernel}Kernel Configuration {#kernel-configuration .sect2}

Verify that automounter kernel support has been enabled:

``` screen
File systems --->
  <*/M> Kernel automounter support (supports v3, v4 and v5)          [AUTOFS_FS]
```

Optionally, enable the following options in the kernel configuration:

``` screen
File systems --->
  [*] Network File Systems --->                            [NETWORK_FILESYSTEMS]
    <*/M> NFS client support                                            [NFS_FS]
    <*/M> SMB3 and CIFS support (advanced network filesystem)             [CIFS]
```

Recompile and install the new kernel, if necessary.
:::

:::: {.installation lang="en"}
## Installation of Autofs {#installation-of-autofs .sect2}

Install [Autofs]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr             \
            --with-mapdir=/etc/autofs \
            --with-libtirpc           \
            --with-systemd            \
            --without-openldap        \
            --mandir=/usr/share/man   &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

If [autofs]{.application} is already installed on your system, be sure to backup your configuration files. They'll be overwritten by the following command.
:::

Install the default configuration files, still as the `root`{.systemitem} user:

``` root
make install_samples
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-libtirpc`*: This switch forces the package to use libtirpc for RPC functionality instead of relying on implementation from Glibc, which was removed in LFS 8.1.

*`--with-systemd`*: This switch enables installation of the bundled systemd units.

*`--without-openldap`*: This switch disables openldap if found. If openldap is desired, omit this switch. Note that openldap support in autofs requires [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}.
:::

:::::::: {.configuration lang="en"}
## Configuring Autofs {#configuring-autofs .sect2}

::: {.sect3 lang="en"}
### []{#autofs-config}Config Files {#config-files .sect3}

`/etc/sysconfig/autofs.conf`{.filename}, `/etc/autofs/auto.master`{.filename}, `/etc/autofs/auto.misc`{.filename}, and `/etc/autofs/auto.net`{.filename}
:::

:::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The installation process creates `auto.master`{.filename}, `auto.misc`{.filename}, `auto.smb`{.filename}, and `auto.net`{.filename}. Replace the `auto.master`{.filename} file with the following commands as the `root`{.systemitem} user:

``` root
mv /etc/autofs/auto.master /etc/autofs/auto.master.bak &&
cat > /etc/autofs/auto.master << "EOF"
# Begin /etc/autofs/auto.master

/media/auto  /etc/autofs/auto.misc  --ghost
#/home        /etc/autofs/auto.home

# End /etc/autofs/auto.master
EOF
```

This file creates a new media directory, `/media/auto`{.filename} that will overlay any existing directory of the same name. In this example, the file, `/etc/autofs/auto.misc`{.filename}, has a line:

``` screen
cd   -fstype=iso9660,ro,nosuid,nodev :/dev/cdrom
```

that will mount a cdrom as `/media/auto/cd`{.filename} if that directory is accessed. The `--ghost`{.option} option tells the automounter to create [“[ghost]{.quote}”]{.quote} versions (i.e. empty directories) of all the mount points listed in the configuration file regardless whether any of the file systems are actually mounted or not. This is very convenient and highly recommended, because it will show you the available auto-mountable file systems as existing directories, even when their file systems aren't currently mounted. Without the `--ghost`{.option} option, you'll have to remember the names of the directories. As soon as you try to access one of them, the directory will be created and the file system will be mounted. When the file system gets unmounted again, the directory is destroyed too, unless the `--ghost`{.option} option was given.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An alternative method would be to specify another automount location such as `/var/lib/auto/cdrom`{.filename} and create a symbolic link from `/media/cdrom`{.filename} to the automount location.
:::

The `auto.misc`{.filename} file must be configured to your working hardware. The loaded configuration file should load your cdrom if `/dev/cdrom`{.filename} is active or it can be edited to match your device setup. Examples for floppies are available in the file and easily activated. Documentation for this file is available using the [**man 5 autofs**]{.command} command.

In the second line, if enabled, a user's home directory would be mounted via NFS upon login. The `/etc/home.auto`{.filename} would need to exist and have an entry similar to:

``` screen
joe  example.org:/export/home/joe
```

where the directory `/export/home/joe`{.filename} is exported via NFS from the system example.org. NFS shares are covered on the next page.

This package could also be used to mount SMB shares, however that feature is not configured in these instructions. For additional configuration information, see the man pages for [auto.master(5)](https://linux.die.net/man/5/auto.master){.ulink}. There are also web resources such as this [AUTOFS HOWTO](https://wiki.gentoo.org/wiki/AutoFS){.ulink} available.
::::

:::: {.sect3 lang="en"}
### []{#autofs-init} Systemd Unit {#systemd-unit .sect3}

To start [Autofs]{.application} at boot, enable the previously installed systemd unit by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable autofs
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

You can also specify `OPTIONS`{.envar} variable in the `/etc/sysconfig/autofs`{.filename} file with any additional parameters that you might want to pass to the automount daemon.
:::
::::
::::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [automount]{.segbody}
:::

::: seg
**Installed Libraries:** [libautofs.so. lookup_dir.so, lookup_file.so, lookup_files.so (symlink to lookup_file.so), lookup_hosts.so, lookup_ldap.so (optional), lookup_multi.so, lookup_nis.so (symlink to lookup_yp.so), lookup_program.so, lookup_userhome.so, lookup_yp.so, mount_afs.so, mount_autofs.so, mount_bind.so, mount_changer.so, mount_ext2.so, mount_ext3.so (symlink to mount_ext2.so), mount_ext4.so (symlink to mount_ext2.so), mount_generic.so, mount_nfs.so, mount_nfs4.so (symlink to mount_nfs.so), parse_amd.so, and parse_sun.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/autofs and /etc/autofs]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------------------
  []{#automount}[[**automount**]{.command}]{.term}   is the daemon that performs the mounting when a request is made for the device
  -------------------------------------------------- --------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::

::: navfooter
-   [Prev](at.md "at-3.2.5"){accesskey="p"}

    at-3.2.5

-   [Next](bluez.md "BlueZ-5.86"){accesskey="n"}

    BlueZ-5.86

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
