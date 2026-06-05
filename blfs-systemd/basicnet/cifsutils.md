::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](netprogs.md "Networking Programs"){accesskey="p"}

    Networking Programs

-   [Next](ncftp.md "NcFTP-3.3.0"){accesskey="n"}

    NcFTP-3.3.0

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cifsutils}cifs-utils-7.5 {#cifs-utils-7.5 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to cifs-utils {#introduction-to-cifs-utils .sect2}

The [cifs-utils]{.application} package provides a means for mounting SMB/CIFS shares on a Linux system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.samba.org/ftp/linux-cifs/cifs-utils/cifs-utils-7.5.tar.bz2](https://www.samba.org/ftp/linux-cifs/cifs-utils/cifs-utils-7.5.tar.bz2){.ulink}

-   Download MD5 sum: c091101fcf202e729407b110979b5990

-   Download size: 416 KB

-   Estimated disk space required: 5.1 MB

-   Estimated build time: 0.1 SBU
:::

### cifs-utils Dependencies

#### Required

[Talloc-2.4.4](../general/talloc.md "Talloc-2.4.4"){.xref}

#### Recommended

[MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}

#### Optional

[docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref} (to create the man pages), [keyutils-1.6.3](../general/keyutils.md "keyutils-1.6.3"){.xref} (required to build PAM module), [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, [Samba-4.24.0](samba.md "Samba-4.24.0"){.xref}, and [libcap-2.78 with PAM](../postlfs/libcap.md "libcap-2.78 with PAM"){.xref} or [libcap-ng](https://people.redhat.com/sgrubb/libcap-ng/){.ulink}
:::::

::: {.kernel lang="en"}
## []{#cifsutils-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

``` screen
File systems --->
  [*] Network File Systems --->                            [NETWORK_FILESYSTEMS]
    <*/M> SMB3 and CIFS support (advanced network filesystem)             [CIFS]
```

Depending on your server configuration, additional kernel options may be required.
:::

::: {.installation lang="en"}
## Installation of cifs-utils {#installation-of-cifs-utils .sect2}

First, make the build system compatible with GCC-15:

``` userinput
autoreconf -fiv
```

Install [cifs-utils]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr \
            --disable-pam &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-pam`*: Do not build PAM support. Remove it and use `--with-pamdir`{.option} (see below), if [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref} is installed and you wish PAM support.

`--with-pamdir=/usr/lib/security`{.option}: Install the PAM module in `/usr/lib/security`{.filename}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cifs.idmap, cifs.upcall, cifscreds, getcifsacl, mount.cifs, mount.smb3, setcifsacl, smb2-quota, and smbinfo]{.segbody}
:::

::: seg
**Installed Library:** [/usr/lib/cifs-utils/idmapwb.so and optionally PAM module /usr/lib/security/pam_cifscreds.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/cifs-utils]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#cifs.idmap}[[**cifs.idmap**]{.command}]{.term}     is a userspace helper program for the linux CIFS client filesystem. There are a number of activities that the kernel cannot easily do itself. This program is a callout program that does these things for the kernel and then returns the result. It is not intended to be run from the command-line
  []{#cifs.upcall}[[**cifs.upcall**]{.command}]{.term}   is a userspace helper program for the linux CIFS client filesystem. It is intended to be run when the kernel calls request-key for a particular key type. It is not intended to be run from the command-line
  []{#cifscreds}[[**cifscreds**]{.command}]{.term}       is a tool for managing credentials (username and password) for the purpose of establishing sessions in multiuser mounts
  []{#getcifsacl}[[**getcifsacl**]{.command}]{.term}     is a userspace helper to display an ACL in a security descriptor for Common Internet File System (CIFS)
  []{#mount.cifs}[[**mount.cifs**]{.command}]{.term}     mounts a Linux CIFS filesystem. It is usually invoked indirectly by the [mount(8)](https://man.archlinux.org/man/mount.8){.ulink} command when using the `-t cifs`{.option} option
  []{#mount.smb3}[[**mount.smb3**]{.command}]{.term}     mounts a SMB3-based filesystem. It is usually invoked indirectly by the [mount(8)](https://man.archlinux.org/man/mount.8){.ulink} command when using the `-t smb3`{.option} option
  []{#setcifsacl}[[**setcifsacl**]{.command}]{.term}     is intended to alter an ACL of a security descriptor for a file system object
  []{#smb2-quota}[[**smb3-quota**]{.command}]{.term}     displays quota information for a SMB filesystem
  []{#smbinfo}[[**smbinfo**]{.command}]{.term}           displays SMB-specific file information, such as security descriptors and quotas
  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](netprogs.md "Networking Programs"){accesskey="p"}

    Networking Programs

-   [Next](ncftp.md "NcFTP-3.3.0"){accesskey="n"}

    NcFTP-3.3.0

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
