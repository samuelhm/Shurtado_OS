::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](rsync.md "rsync-3.4.3"){accesskey="p"}

    rsync-3.4.3

-   [Next](wget.md "Wget-1.25.0"){accesskey="n"}

    Wget-1.25.0

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#samba}Samba-4.24.0 {#samba-4.24.0 .sect1}

:::::::::::::::::::::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Samba {#introduction-to-samba .sect2}

The [Samba]{.application} package provides file and print services to SMB/CIFS clients and Windows networking to Linux clients. [Samba]{.application} can also be configured as a Windows Domain Controller replacement, a file/print server acting as a member of a Windows Active Directory domain and a NetBIOS (RFC1001/1002) nameserver (which among other things provides LAN browsing support).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.samba.org/pub/samba/stable/samba-4.24.0.tar.gz](https://download.samba.org/pub/samba/stable/samba-4.24.0.tar.gz){.ulink}

-   Download MD5 sum: 70fbbd0189ee6e9dc92b5a2cb2fcfb1d

-   Download size: 41 MB

-   Estimated disk space required: 744 MB (add 46 MB for quicktest)

-   Estimated build time: 1.7 SBU (using parallelism=4; add 0.4 SBU for quicktest)
:::

### Samba Dependencies

#### Required

[GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [libtirpc-1.3.7](libtirpc.md "libtirpc-1.3.7"){.xref}, [Parse-Yapp-1.21](../general/perl-modules.md#perl-parse-yapp "Parse::Yapp-1.21"){.xref}, and [rpcsvc-proto-1.4.4](rpcsvc-proto.md "rpcsvc-proto-1.4.4"){.xref}

#### Recommended

[Fuse-3.18.2](../postlfs/fuse.md "Fuse-3.18.2"){.xref}, [gpgme-2.1.0](../postlfs/gpgme.md "gpgme-2.1.0"){.xref}, [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [jansson-2.15.0](../general/jansson.md "Jansson-2.15.0"){.xref}, [libtasn1-4.21.0](../general/libtasn1.md "libtasn1-4.21.0"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} (for documentation), [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, [lmdb-0.9.35](../server/lmdb.md "lmdb-0.9.35"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, and [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}

#### Optional

[Avahi-0.8](avahi.md "Avahi-0.8"){.xref}, [BIND-9.20.20](../server/bind.md "BIND-9.20.20"){.xref}, [Cups-2.4.19](../pst/cups.md "Cups-2.4.19"){.xref}, [Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref}, [GDB-17.2](../general/gdb.md "GDB-17.2"){.xref}, [git-2.54.0](../general/git.md "Git-2.54.0"){.xref}, [GnuPG-2.5.20](../postlfs/gnupg.md "GnuPG-2.5.20"){.xref} (required for ADS and the test suite), [libaio-0.3.113](../general/libaio.md "libaio-0.3.113"){.xref}, [libarchive-3.8.7](../general/libarchive.md "libarchive-3.8.7"){.xref} (for tar in smbclient), [libcap-2.78 with PAM](../postlfs/libcap.md "libcap-2.78 with PAM"){.xref}, [libgcrypt-1.12.2](../general/libgcrypt.md "libgcrypt-1.12.2"){.xref}, [libnsl-2.0.1](libnsl.md "libnsl-2.0.1"){.xref}, [libunwind-1.8.3](../general/libunwind.md "libunwind-1.8.3"){.xref}, [Markdown-3.10.2](../general/python-dependencies.md#markdown "Markdown-3.10.2"){.xref}, [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}, [popt-1.19](../general/popt.md "Popt-1.19"){.xref}, [Talloc-2.4.4](../general/talloc.md "Talloc-2.4.4"){.xref} (used by the test suite), [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} (optionally used by the test suite), [xfsprogs-7.0.1](../postlfs/xfsprogs.md "xfsprogs-7.0.1"){.xref}, [cmocka](https://cmocka.org/){.ulink}, [cryptography](https://cryptography.io/en/latest/){.ulink}, [ctdb](https://ctdb.samba.org/){.ulink} (included), [cwrap](https://cwrap.org/){.ulink}, [dnspython](https://pypi.python.org/pypi/dnspython/){.ulink}, [FAM](https://packages.debian.org/bullseye/fam){.ulink}, [GlusterFS](https://www.gluster.org/){.ulink}, [Heimdal](https://github.com/heimdal/){.ulink} (included), [iso8601](https://pypi.org/project/iso8601/){.ulink}, [ldb](https://ldb.samba.org/){.ulink} (included), [ngtcp2](https://nghttp2.org/ngtcp2/){.ulink}, [OpenAFS](https://www.openafs.org/){.ulink}, [pyasn1](https://pypi.org/project/pyasn1/){.ulink}, [tevent](https://tevent.samba.org/){.ulink} (included), and [tdb](https://tdb.samba.org/){.ulink} (included)

#### Optional (for the Developer Test Suite)

Install in listed order: [six-1.17.0](../general/python-modules.md#six "six-1.17.0"){.xref}, [pytest-9.0.3](../general/python-modules.md#pytest "Pytest-9.0.3"){.xref}, [argparse](https://pypi.python.org/pypi/argparse/){.ulink}, [testtools](https://pypi.python.org/pypi/testtools/){.ulink}, [testscenarios](https://pypi.python.org/pypi/testscenarios/){.ulink}, and [python-subunit](https://pypi.python.org/pypi/python-subunit/){.ulink}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/samba4](https://wiki.linuxfromscratch.org/blfs/wiki/samba4){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of Samba {#installation-of-samba .sect2}

To support the test suite, set up a Python virtual environment for some Python modules outside of the scope of BLFS:

``` userinput
python3 -m venv --system-site-packages pyvenv         &&
./pyvenv/bin/pip3 install cryptography pyasn1 iso8601
```

Install [Samba]{.application} by running the following commands:

``` userinput
PYTHON=$PWD/pyvenv/bin/python3             \
./configure                                \
    --prefix=/usr                          \
    --sysconfdir=/etc                      \
    --localstatedir=/var                   \
    --with-piddir=/run/samba               \
    --with-pammodulesdir=/usr/lib/security \
    --enable-fhs                           \
    --without-ad-dc                        \
    --with-system-mitkrb5                  \
    --enable-selftest                      \
    --disable-rpath-install                &&
make
```

To test the results, issue: [**PATH=\$PWD/pyvenv/bin:\$PATH make quicktest**]{.command}. The test suite will produce lines that look like failures, but these are innocuous. The last few lines of output should report [*"ALL OK"*]{.emphasis} for a good test run. A summary of any failures can be found in `./st/summary`{.filename}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Additionally, developer test suites are available. If you've installed the optional python modules above in the Python virtual environment for building this package, you can run these tests with [**make test**]{.command}. It is not recommended for the average builder at around 290 SBU and over a gigabyte of disk space, and you should expect \~73 errors and \~30 failures from the 3000+ tests.
:::

Fix hard coded paths to Python 3 interpreter:

``` userinput
sed '1s@^.*$@#!/usr/bin/python3@' \
    -i ./bin/default/source4/scripting/bin/*.inst
```

If upgrading from an old version of samba, as the `root`{.systemitem} user, remove the old Python support files to prevent some issues:

``` root
rm -rf /usr/lib/python3.14/site-packages/samba
```

Still as the `root`{.systemitem} user, install the package:

``` root
make install &&

install -v -m644 examples/smb.conf.default /etc/samba &&

sed -e "s;log file =.*;log file = /var/log/samba/%m.log;"   \
    -e "s;path = /usr/spool/samba;path = /var/spool/samba;" \
    -i /etc/samba/smb.conf.default &&

mkdir -pv /etc/openldap/schema &&

install -v -m644    examples/LDAP/README \
                    /etc/openldap/schema/README.samba &&

install -v -m644    examples/LDAP/samba* \
                    /etc/openldap/schema &&

install -v -m755    examples/LDAP/{get*,ol*} \
                    /etc/openldap/schema
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.

*`--enable-fhs`*: Assigns all other file paths in a manner compliant with the Filesystem Hierarchy Standard (FHS).

*`--without-ad-dc`*: Disables Active Directory Domain Controller functionality. See [Set up a Samba Active Directory Domain Controller](https://wiki.samba.org/index.php/Setup_a_Samba_Active_Directory_Domain_Controller){.ulink} for detailed information. Remove this switch if you've installed the Python modules needed for ADS support. Note that BLFS does not provide a samba bootscript or systemd unit for an Active Directory domain controller.

*`--with-system-mitkrb5`*: Enables building with the system version of Kerberos. This mitigates security vulnerabilities and reduces build time. Remove this if you do not have [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} installed.

*`--disable-rpath-install`*: Removes the library installation path from embedded shared library search paths in the installed binary executable files and shared libraries. When this package is installed into the standard location the library installation path is `/usr/lib`{.filename}. It's always searched by the dynamic linker, so there is no need to embed it into installed files.

`--with-selftest-prefix=SELFTEST_PREFIX`{.option}: This option specifies the test suite work directory (default=./st).

[**install -v -m644 examples/LDAP/\* /etc/openldap/schema**]{.command}: These commands are used to copy sample Samba schemas to the OpenLDAP `schema`{.filename} directory.

[**install -v -m644 ../examples/smb.conf.default /etc/samba**]{.command}: This copies a default `smb.conf`{.filename} file into `/etc/samba`{.filename}. This sample configuration will not work until you copy it to `/etc/samba/smb.conf`{.filename} and make the appropriate changes for your installation. See the configuration section for minimum values which must be set.
:::

:::::::::::::::::::::::::::: {.configuration lang="en"}
## Configuring Samba {#configuring-samba .sect2}

::: {.sect3 lang="en"}
### []{#samba-config}Config Files {#config-files .sect3}

/etc/samba/smb.conf
:::

::: {.sect3 lang="en"}
### Printing to SMB Clients {#printing-to-smb-clients .sect3}

If you use [CUPS]{.application} for print services, and you wish to print to a printer attached to an SMB client, you need to create an SMB backend device. To create the device, issue the following command as the `root`{.systemitem} user:

``` root
install -dvm 755 /usr/lib/cups/backend &&
ln -v -sf /usr/bin/smbspool /usr/lib/cups/backend/smb
```
:::

::::::::::::::::::::::::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Due to the complexity and the many various uses for [Samba]{.application}, complete configuration for all the package's capabilities is well beyond the scope of the BLFS book. This section provides instructions to configure the `/etc/samba/smb.conf`{.filename} file for two common scenarios. The complete contents of `/etc/samba/smb.conf`{.filename} will depend on the purpose of [Samba]{.application} installation.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

You may find it easier to copy the configuration parameters shown below into an empty `/etc/samba/smb.conf`{.filename} file instead of copying and editing the default file as mentioned in the [“[Command Explanations]{.quote}”]{.quote} section. How you create/edit the `/etc/samba/smb.conf`{.filename} file will be left up to you. Do ensure the file is only writable by the `root`{.systemitem} user (mode 644).
:::

:::::: sect4
::::: titlepage


##### []{#idm140011164159936}Scenario 1: Minimal Standalone Client-Only Installation {#scenario-1-minimal-standalone-client-only-installation .title}


:::::

Choose this variant if you only want to transfer files using [**smbclient**]{.command}, mount Windows shares and print to Windows printers, and don't want to share your files and printers to Windows machines.

A `/etc/samba/smb.conf`{.filename} file with the following three parameters is sufficient:

``` root
[global]
    workgroup = WORKGROUP
    dos charset = cp850
    unix charset = ISO-8859-1
```

The values in this example specify that the computer belongs to a Windows workgroup named *`WORKGROUP`*, uses the *`cp850`* character set on the wire when talking to MS-DOS and MS Windows 9x, and that the filenames are stored in the *`ISO-8859-1`* encoding on the disk. Adjust these values appropriately for your installation. The `unix charset`{.literal} value must be the same as the output of [**locale charmap**]{.command} when executed with the `LANG`{.envar} variable set to your preferred locale, otherwise the [**ls**]{.command} command may not display correct filenames of downloaded files.

There is no need to run any [Samba]{.application} servers in this scenario, thus you don't need to install the provided [systemd units.]{.phrase}
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011164146080}Scenario 2: Standalone File/Print Server {#scenario-2-standalone-fileprint-server .title}


:::::

Choose this variant if you want to share your files and printers to Windows machines in your workgroup in addition to the capabilities described in Scenario 1.

In this case, the `/etc/samba/smb.conf.default`{.filename} file may be a good template to start from. Also, you should add the [“[dos charset]{.quote}”]{.quote} and [“[unix charset]{.quote}”]{.quote} parameters to the [“[\[global\]]{.quote}”]{.quote} section as described in Scenario 1 in order to prevent filename corruption. For security reasons, you may wish to define *`path = /home/alice/shared-files`*, assuming your user name is *`alice`* and you only want to share the files in that directory, instead of your entire home. Then, replace *`homes`* by *`shared-files`* and change also the [“[`comment`{.literal}]{.quote}”]{.quote} if used the configuration file below or the `/etc/samba/smb.conf.default`{.filename} to create yours.

The following configuration file creates a separate share for each user's home directory and also makes all printers available to Windows machines:

``` root
[global]
    workgroup = WORKGROUP
    dos charset = cp850
    unix charset = ISO-8859-1

[homes]
    comment = Home Directories
    browseable = no
    writable = yes

[printers]
    comment = All Printers
    path = /var/spool/samba
    browseable = no
    guest ok = no
    printable = yes
```

Other parameters you may wish to customize in the [“[\[global\]]{.quote}”]{.quote} section include:

``` root
    server string =
    security =
    hosts allow =
    load printers =
    log file =
    max log size =
    socket options =
    local master =
```

Reference the comments in the `/etc/samba/smb.conf.default`{.filename} file for information regarding these parameters.

Since the [**smbd**]{.command} and [**nmbd**]{.command} daemons are needed in this case, install the `samba`{.filename} [systemd unit.]{.phrase} Be sure to run [**smbpasswd**]{.command} (with the `-a`{.option} option to add users) to enable and set passwords for all accounts that need [Samba]{.application} access. Using the default [Samba]{.application} passdb backend, any user you attempt to add will also be required to exist in the `/etc/passwd`{.filename} file.
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011164124384}Advanced Requirements {#advanced-requirements .title}


:::::

More complex scenarios involving domain control or membership are possible. Such setups are advanced topics and cannot be adequately covered in BLFS. Many complete books have been written on these topics alone. Note that in some domain membership scenarios, the [**winbindd**]{.command} daemon and the corresponding [systemd unit]{.phrase} are needed.
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011164121728}Guest account {#guest-account .title}


:::::

The default [Samba]{.application} installation uses the `nobody`{.systemitem} user for guest access to the server. This can be overridden by setting the `guest account =`{.option} parameter in the `/etc/samba/smb.conf`{.filename} file. If you utilize the `guest account =`{.option} parameter, ensure this user exists in the `/etc/passwd`{.filename} file.
::::::

::::::: sect4
::::: titlepage


##### []{#samba-init-sysd}Systemd Units {#systemd-units .title}


:::::

To start the [Samba]{.application} daemons at boot, install the systemd units from the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package by running the following command as the `root`{.systemitem} user:

``` root
make install-samba
```

To start the [**winbindd**]{.command} daemon at boot, install the systemd unit from the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package by running the following command as the `root`{.systemitem} user:

``` root
make install-winbindd
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package comes with two types of units: A service file and a socket file. The service file will start the smbd daemon once at boot and it will keep running until the system shuts down. The socket file will make systemd listen on the smbd port (Default 445, needs to be edited for anything else) and will start the smbd daemon when something tries to connect to that port and stop the daemon when the connection is terminated. This is called socket activation and is analogous to using [{,x}inetd]{.application} on a SysVinit based system.

By default, the first method is used - the smbd daemon is started at boot and stopped at shutdown. If the socket method is desired, you need to run the following commands as the `root`{.systemitem} user:

``` root
systemctl stop smbd          &&
systemctl disable smbd       &&
systemctl enable smbd.socket &&
systemctl start smbd.socket
```

Note that only the smbd daemon can be socket activated.
:::
:::::::
:::::::::::::::::::::::::
::::::::::::::::::::::::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cifsdd, dbwrap_tool, dumpmscat, eventlogadm, gentest, ldbadd, ldbdel, ldbedit, ldbmodify, ldbrename, ldbsearch, locktest, masktest, mdsearch, mvxattr, ndrdump, net, nmbd, nmblookup, ntlm_auth, oLschema2ldif, pdbedit, profiles, regdiff, regpatch, regshell, regtree, rpcclient, samba-log-parser, samba-gpupdate, samba-regedit, samba-tool, sharesec, smbcacls, smbclient, smbcontrol, smbcquotas, smbd, smbget, smbpasswd, smbspool, smbstatus, smbtar, smbtorture, smbtree, tdbbackup, tdbdump, tdbrestore, tdbtool, testparm, wbinfo, winbindd, and wspsearch]{.segbody}
:::

::: seg
**Installed Libraries:** [libdcerpc-binding.so, libdcerpc-server-core.so, libndr-krb5pac.so, libndr-nbt.so, libndr.so, libndr-standard.so, libnetapi.so, libnss_winbind.so, libnss_wins.so, libsamba-errors.so, libsamba-passdb.so, libsamba-util.so, libsmbclient.so, libsmbconf.so, libsmbldap.so, libwbclient.so, and filesystem and support modules under /usr/lib/{python3.14,samba}]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/samba, /run/samba, /usr/include/samba-4.0, /usr/lib/python3.14/site-packages/samba, /usr/{lib,libexec,share}/samba, and /var/{cache,lib,lock,log,run}/samba]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#cifsdd}[[**cifsdd**]{.command}]{.term}                       is the dd command for SMB
  []{#dbwrap_tool}[[**dbwrap_tool**]{.command}]{.term}             is used to read and manipulate TDB/CTDB databases using the dbwrap interface
  []{#dumpmscat}[[**dumpmscat**]{.command}]{.term}                 dumps the content of MS catalog files
  []{#eventlogadm}[[**eventlogadm**]{.command}]{.term}             is used to write records to eventlogs from STDIN, add the specified source and DLL eventlog registry entries and display the active eventlog names (from `smb.conf`{.filename})
  []{#gentest}[[**gentest**]{.command}]{.term}                     is used to run random generic SMB operations against two SMB servers and show the differences in behavior
  []{#ldbadd}[[**ldbadd**]{.command}]{.term}                       is a command-line utility for adding records to an LDB database
  []{#ldbdel}[[**ldbdel**]{.command}]{.term}                       is a command-line utility for deleting LDB database records
  []{#ldbedit}[[**ldbedit**]{.command}]{.term}                     allows you to edit LDB databases using your preferred editor
  []{#ldbmodify}[[**ldbmodify**]{.command}]{.term}                 allows you to modify records in an LDB database
  []{#ldbrename}[[**ldbrename**]{.command}]{.term}                 allows you to rename LDB databases
  []{#ldbsearch}[[**ldbsearch**]{.command}]{.term}                 searches an LDB database for records matching a specified expression
  []{#locktest}[[**locktest**]{.command}]{.term}                   is used to find differences in locking between two SMB servers
  []{#masktest}[[**masktest**]{.command}]{.term}                   is used to find differences in wildcard matching between Samba's implementation and that of a remote server
  []{#mdsearch}[[**mdsearch**]{.command}]{.term}                   runs [Spotlight]{.application} searches against a SMB server
  []{#mvxattr}[[**mvxattr**]{.command}]{.term}                     is used to recursively rename extended attributes
  []{#ndrdump}[[**ndrdump**]{.command}]{.term}                     is a DCE/RPC Packet Parser and Dumper
  []{#net}[[**net**]{.command}]{.term}                             is a tool for administration of [Samba]{.application} and remote CIFS servers, similar to the [**net**]{.command} utility for DOS/Windows
  []{#nmbd}[[**nmbd**]{.command}]{.term}                           is the [Samba]{.application} NetBIOS name server
  []{#nmblookup}[[**nmblookup**]{.command}]{.term}                 is used to query NetBIOS names and map them to IP addresses
  []{#ntlm_auth}[[**ntlm_auth**]{.command}]{.term}                 is a tool to allow external access to Winbind's NTLM authentication function
  []{#oLschema2ldif}[[**oLschema2ldif**]{.command}]{.term}         converts LDAP schema's to LDB-compatible LDIF
  []{#pdbedit}[[**pdbedit**]{.command}]{.term}                     is a tool used to manage the SAM database
  []{#profiles}[[**profiles**]{.command}]{.term}                   is a utility that reports and changes SIDs in Windows registry files
  []{#regdiff}[[**regdiff**]{.command}]{.term}                     is a Diff program for Windows registry files
  []{#regpatch}[[**regpatch**]{.command}]{.term}                   applies registry patches to registry files
  []{#regshell}[[**regshell**]{.command}]{.term}                   is a Windows registry file browser using readline
  []{#regtree}[[**regtree**]{.command}]{.term}                     is a text-mode registry viewer
  []{#rpcclient}[[**rpcclient**]{.command}]{.term}                 is used to execute MS-RPC client side functions
  []{#samba-log-parser}[[**samba-log-parser**]{.command}]{.term}   parses winbind logs generated by Samba
  []{#samba-gpupdate}[[**samba-gpupdate**]{.command}]{.term}       allows you to edit Microsoft Group Policy Objects (GPOs)
  []{#samba-regedit}[[**samba-regedit**]{.command}]{.term}         is a ncurses based tool to manage the Samba registry
  []{#samba-tool}[[**samba-tool**]{.command}]{.term}               is the main Samba administration tool
  []{#sharesec}[[**sharesec**]{.command}]{.term}                   manipulates share ACL permissions on SMB file shares
  []{#smbcacls}[[**smbcacls**]{.command}]{.term}                   is used to manipulate Windows NT access control lists
  []{#smbclient}[[**smbclient**]{.command}]{.term}                 is a SMB/CIFS access utility, similar to FTP
  []{#smbcontrol}[[**smbcontrol**]{.command}]{.term}               is used to control running [**smbd**]{.command}, [**nmbd**]{.command} and [**winbindd**]{.command} daemons
  []{#smbcquotas}[[**smbcquotas**]{.command}]{.term}               is used to manipulate Windows NT quotas on SMB file shares
  []{#smbd}[[**smbd**]{.command}]{.term}                           is the main [Samba]{.application} daemon which provides SMB/CIFS services to clients
  []{#smbget}[[**smbget**]{.command}]{.term}                       is a simple utility with [**wget**]{.command}-like semantics, that can download files from SMB servers. You can specify the files you would like to download on the command-line
  []{#smbpasswd}[[**smbpasswd**]{.command}]{.term}                 changes a user's [Samba]{.application} password
  []{#smbspool}[[**smbspool**]{.command}]{.term}                   sends a print job to a SMB printer
  []{#smbstatus}[[**smbstatus**]{.command}]{.term}                 reports current [Samba]{.application} connections
  []{#smbtar}[[**smbtar**]{.command}]{.term}                       is a shell script used for backing up SMB/CIFS shares directly to Linux tape drives or to a file
  []{#smbtorture}[[**smbtorture**]{.command}]{.term}               is a test suite that runs several tests against a SMB server
  []{#smbtree}[[**smbtree**]{.command}]{.term}                     is a text-based SMB network browser
  []{#tdbbackup}[[**tdbbackup**]{.command}]{.term}                 is a tool for backing up or validating the integrity of [Samba]{.application} `.tdb`{.filename} files
  []{#tdbdump}[[**tdbdump**]{.command}]{.term}                     is a tool used to print the contents of a [Samba]{.application} `.tdb`{.filename} file
  []{#tdbrestore}[[**tdbrestore**]{.command}]{.term}               is a tool for creating a [Samba]{.application} `.tdb`{.filename} file out of a ntdbdump
  []{#tdbtool}[[**tdbtool**]{.command}]{.term}                     is a tool which allows simple database manipulation from the command line
  []{#testparm}[[**testparm**]{.command}]{.term}                   checks a `smb.conf`{.filename} file for proper syntax
  []{#wbinfo}[[**wbinfo**]{.command}]{.term}                       queries a running [**winbindd**]{.command} daemon
  []{#winbindd}[[**winbindd**]{.command}]{.term}                   resolves names from Windows NT servers
  []{#wspsearch}[[**wspsearch**]{.command}]{.term}                 runs Windows Search Protocol queries against a SMB server
  []{#libnss_winbind}[`libnss_winbind.so`{.filename}]{.term}       provides Name Service Switch API functions for resolving names from NT servers
  []{#libnss_wins}[`libnss_wins.so`{.filename}]{.term}             provides API functions for Samba's implementation of the Windows Internet Naming Service
  []{#libnetapi}[`libnetapi.so`{.filename}]{.term}                 provides API functions for the administration tools used for Samba and remote CIFS servers
  []{#libsmbclient}[`libsmbclient.so`{.filename}]{.term}           provides API functions for the Samba SMB client tools
  []{#libwbclient}[`libwbclient.so`{.filename}]{.term}             provides API functions for Windows domain client services
  ---------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](rsync.md "rsync-3.4.3"){accesskey="p"}

    rsync-3.4.3

-   [Next](wget.md "Wget-1.25.0"){accesskey="n"}

    Wget-1.25.0

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
