<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](rsync.md "rsync-3.4.3")

    rsync-3.4.3

-   [Next](wget.md "Wget-1.25.0")

    Wget-1.25.0

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Samba-4.24.0 {#samba-4.24.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Samba {#introduction-to-samba}

The <span class="application">Samba</span> package provides file and print services to SMB/CIFS clients and Windows networking to Linux clients. <span class="application">Samba</span> can also be configured as a Windows Domain Controller replacement, a file/print server acting as a member of a Windows Active Directory domain and a NetBIOS (RFC1001/1002) nameserver (which among other things provides LAN browsing support).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.samba.org/pub/samba/stable/samba-4.24.0.tar.gz">https://download.samba.org/pub/samba/stable/samba-4.24.0.tar.gz</a>

-   Download MD5 sum: 70fbbd0189ee6e9dc92b5a2cb2fcfb1d

-   Download size: 41 MB

-   Estimated disk space required: 744 MB (add 46 MB for quicktest)

-   Estimated build time: 1.7 SBU (using parallelism=4; add 0.4 SBU for quicktest)
</div>

### Samba Dependencies

#### Required

<a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a>, <a class="xref" href="../general/perl-modules.md#perl-parse-yapp" title="Parse::Yapp-1.21">Parse-Yapp-1.21</a>, and <a class="xref" href="rpcsvc-proto.md" title="rpcsvc-proto-1.4.4">rpcsvc-proto-1.4.4</a>

#### Recommended

<a class="xref" href="../postlfs/fuse.md" title="Fuse-3.18.2">Fuse-3.18.2</a>, <a class="xref" href="../postlfs/gpgme.md" title="gpgme-2.1.0">gpgme-2.1.0</a>, <a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="../general/jansson.md" title="Jansson-2.15.0">jansson-2.15.0</a>, <a class="xref" href="../general/libtasn1.md" title="libtasn1-4.21.0">libtasn1-4.21.0</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a> (for documentation), <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, <a class="xref" href="../server/lmdb.md" title="lmdb-0.9.35">lmdb-0.9.35</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, and <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>

#### Optional

<a class="xref" href="avahi.md" title="Avahi-0.8">Avahi-0.8</a>, <a class="xref" href="../server/bind.md" title="BIND-9.20.20">BIND-9.20.20</a>, <a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="../postlfs/cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a>, <a class="xref" href="../general/gdb.md" title="GDB-17.2">GDB-17.2</a>, <a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="../postlfs/gnupg.md" title="GnuPG-2.5.20">GnuPG-2.5.20</a> (required for ADS and the test suite), <a class="xref" href="../general/libaio.md" title="libaio-0.3.113">libaio-0.3.113</a>, <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a> (for tar in smbclient), <a class="xref" href="../postlfs/libcap.md" title="libcap-2.78 with PAM">libcap-2.78 with PAM</a>, <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>, <a class="xref" href="libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a>, <a class="xref" href="../general/libunwind.md" title="libunwind-1.8.3">libunwind-1.8.3</a>, <a class="xref" href="../general/python-dependencies.md#markdown" title="Markdown-3.10.2">Markdown-3.10.2</a>, <a class="xref" href="../postlfs/nss.md" title="NSS-3.124">nss-3.124</a>, <a class="xref" href="../general/popt.md" title="Popt-1.19">popt-1.19</a>, <a class="xref" href="../general/talloc.md" title="Talloc-2.4.4">Talloc-2.4.4</a> (used by the test suite), <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a> (optionally used by the test suite), <a class="xref" href="../postlfs/xfsprogs.md" title="xfsprogs-7.0.1">xfsprogs-7.0.1</a>, <a class="ulink" href="https://cmocka.org/">cmocka</a>, <a class="ulink" href="https://cryptography.io/en/latest/">cryptography</a>, <a class="ulink" href="https://ctdb.samba.org/">ctdb</a> (included), <a class="ulink" href="https://cwrap.org/">cwrap</a>, <a class="ulink" href="https://pypi.python.org/pypi/dnspython/">dnspython</a>, <a class="ulink" href="https://packages.debian.org/bullseye/fam">FAM</a>, <a class="ulink" href="https://www.gluster.org/">GlusterFS</a>, <a class="ulink" href="https://github.com/heimdal/">Heimdal</a> (included), <a class="ulink" href="https://pypi.org/project/iso8601/">iso8601</a>, <a class="ulink" href="https://ldb.samba.org/">ldb</a> (included), <a class="ulink" href="https://nghttp2.org/ngtcp2/">ngtcp2</a>, <a class="ulink" href="https://www.openafs.org/">OpenAFS</a>, <a class="ulink" href="https://pypi.org/project/pyasn1/">pyasn1</a>, <a class="ulink" href="https://tevent.samba.org/">tevent</a> (included), and <a class="ulink" href="https://tdb.samba.org/">tdb</a> (included)

#### Optional (for the Developer Test Suite)

Install in listed order: <a class="xref" href="../general/python-modules.md#six" title="six-1.17.0">six-1.17.0</a>, <a class="xref" href="../general/python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="ulink" href="https://pypi.python.org/pypi/argparse/">argparse</a>, <a class="ulink" href="https://pypi.python.org/pypi/testtools/">testtools</a>, <a class="ulink" href="https://pypi.python.org/pypi/testscenarios/">testscenarios</a>, and <a class="ulink" href="https://pypi.python.org/pypi/python-subunit/">python-subunit</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/samba4">https://wiki.linuxfromscratch.org/blfs/wiki/samba4</a>
</div>

<div class="installation" lang="en">
## Installation of Samba {#installation-of-samba}

To support the test suite, set up a Python virtual environment for some Python modules outside of the scope of BLFS:

```bash
python3 -m venv --system-site-packages pyvenv         &&
./pyvenv/bin/pip3 install cryptography pyasn1 iso8601
```

Install <span class="application">Samba</span> by running the following commands:

```bash
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

To test the results, issue: <span class="command"><strong>PATH=\$PWD/pyvenv/bin:\$PATH make quicktest</strong></span>. The test suite will produce lines that look like failures, but these are innocuous. The last few lines of output should report <span class="emphasis"><em>"ALL OK"</em></span> for a good test run. A summary of any failures can be found in <code class="filename">./st/summary</code>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Additionally, developer test suites are available. If you've installed the optional python modules above in the Python virtual environment for building this package, you can run these tests with <span class="command"><strong>make test</strong></span>. It is not recommended for the average builder at around 290 SBU and over a gigabyte of disk space, and you should expect \~73 errors and \~30 failures from the 3000+ tests.
</div>

Fix hard coded paths to Python 3 interpreter:

```bash
sed '1s@^.*$@#!/usr/bin/python3@' \
    -i ./bin/default/source4/scripting/bin/*.inst
```

If upgrading from an old version of samba, as the <code class="systemitem">root</code> user, remove the old Python support files to prevent some issues:

```bash
rm -rf /usr/lib/python3.14/site-packages/samba
```

Still as the <code class="systemitem">root</code> user, install the package:

```bash
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
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.

*`--enable-fhs`*: Assigns all other file paths in a manner compliant with the Filesystem Hierarchy Standard (FHS).

*`--without-ad-dc`*: Disables Active Directory Domain Controller functionality. See <a class="ulink" href="https://wiki.samba.org/index.php/Setup_a_Samba_Active_Directory_Domain_Controller">Set up a Samba Active Directory Domain Controller</a> for detailed information. Remove this switch if you've installed the Python modules needed for ADS support. Note that BLFS does not provide a samba bootscript or systemd unit for an Active Directory domain controller.

*`--with-system-mitkrb5`*: Enables building with the system version of Kerberos. This mitigates security vulnerabilities and reduces build time. Remove this if you do not have <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> installed.

*`--disable-rpath-install`*: Removes the library installation path from embedded shared library search paths in the installed binary executable files and shared libraries. When this package is installed into the standard location the library installation path is <code class="filename">/usr/lib</code>. It's always searched by the dynamic linker, so there is no need to embed it into installed files.

<code class="option">--with-selftest-prefix=SELFTEST_PREFIX</code>: This option specifies the test suite work directory (default=./st).

<span class="command"><strong>install -v -m644 examples/LDAP/\* /etc/openldap/schema</strong></span>: These commands are used to copy sample Samba schemas to the OpenLDAP <code class="filename">schema</code> directory.

<span class="command"><strong>install -v -m644 ../examples/smb.conf.default /etc/samba</strong></span>: This copies a default <code class="filename">smb.conf</code> file into <code class="filename">/etc/samba</code>. This sample configuration will not work until you copy it to <code class="filename">/etc/samba/smb.conf</code> and make the appropriate changes for your installation. See the configuration section for minimum values which must be set.
</div>

<div class="configuration" lang="en">
## Configuring Samba {#configuring-samba}

<div class="sect3" lang="en">
### Config Files {#config-files}

/etc/samba/smb.conf
</div>

<div class="sect3" lang="en">
### Printing to SMB Clients {#printing-to-smb-clients}

If you use <span class="application">CUPS</span> for print services, and you wish to print to a printer attached to an SMB client, you need to create an SMB backend device. To create the device, issue the following command as the <code class="systemitem">root</code> user:

```bash
install -dvm 755 /usr/lib/cups/backend &&
ln -v -sf /usr/bin/smbspool /usr/lib/cups/backend/smb
```
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Due to the complexity and the many various uses for <span class="application">Samba</span>, complete configuration for all the package's capabilities is well beyond the scope of the BLFS book. This section provides instructions to configure the <code class="filename">/etc/samba/smb.conf</code> file for two common scenarios. The complete contents of <code class="filename">/etc/samba/smb.conf</code> will depend on the purpose of <span class="application">Samba</span> installation.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

You may find it easier to copy the configuration parameters shown below into an empty <code class="filename">/etc/samba/smb.conf</code> file instead of copying and editing the default file as mentioned in the <span class="quote">“<span class="quote">Command Explanations</span>”</span> section. How you create/edit the <code class="filename">/etc/samba/smb.conf</code> file will be left up to you. Do ensure the file is only writable by the <code class="systemitem">root</code> user (mode 644).
</div>

<div class="sect4">
<div class="titlepage">


##### Scenario 1: Minimal Standalone Client-Only Installation {#scenario-1-minimal-standalone-client-only-installation}


</div>

Choose this variant if you only want to transfer files using <span class="command"><strong>smbclient</strong></span>, mount Windows shares and print to Windows printers, and don't want to share your files and printers to Windows machines.

A <code class="filename">/etc/samba/smb.conf</code> file with the following three parameters is sufficient:

```bash
[global]
    workgroup = WORKGROUP
    dos charset = cp850
    unix charset = ISO-8859-1
```

The values in this example specify that the computer belongs to a Windows workgroup named *`WORKGROUP`*, uses the *`cp850`* character set on the wire when talking to MS-DOS and MS Windows 9x, and that the filenames are stored in the *`ISO-8859-1`* encoding on the disk. Adjust these values appropriately for your installation. The <code class="literal">unix charset</code> value must be the same as the output of <span class="command"><strong>locale charmap</strong></span> when executed with the <code class="envar">LANG</code> variable set to your preferred locale, otherwise the <span class="command"><strong>ls</strong></span> command may not display correct filenames of downloaded files.

There is no need to run any <span class="application">Samba</span> servers in this scenario, thus you don't need to install the provided <span class="phrase">systemd units.</span>
</div>

<div class="sect4">
<div class="titlepage">


##### Scenario 2: Standalone File/Print Server {#scenario-2-standalone-fileprint-server}


</div>

Choose this variant if you want to share your files and printers to Windows machines in your workgroup in addition to the capabilities described in Scenario 1.

In this case, the <code class="filename">/etc/samba/smb.conf.default</code> file may be a good template to start from. Also, you should add the <span class="quote">“<span class="quote">dos charset</span>”</span> and <span class="quote">“<span class="quote">unix charset</span>”</span> parameters to the [“[\[global\]]{.quote}”]{.quote} section as described in Scenario 1 in order to prevent filename corruption. For security reasons, you may wish to define *`path = /home/alice/shared-files`*, assuming your user name is *`alice`* and you only want to share the files in that directory, instead of your entire home. Then, replace *`homes`* by *`shared-files`* and change also the <span class="quote">“<span class="quote"><code class="literal">comment</code></span>”</span> if used the configuration file below or the <code class="filename">/etc/samba/smb.conf.default</code> to create yours.

The following configuration file creates a separate share for each user's home directory and also makes all printers available to Windows machines:

```bash
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

```bash
    server string =
    security =
    hosts allow =
    load printers =
    log file =
    max log size =
    socket options =
    local master =
```

Reference the comments in the <code class="filename">/etc/samba/smb.conf.default</code> file for information regarding these parameters.

Since the <span class="command"><strong>smbd</strong></span> and <span class="command"><strong>nmbd</strong></span> daemons are needed in this case, install the <code class="filename">samba</code> <span class="phrase">systemd unit.</span> Be sure to run <span class="command"><strong>smbpasswd</strong></span> (with the <code class="option">-a</code> option to add users) to enable and set passwords for all accounts that need <span class="application">Samba</span> access. Using the default <span class="application">Samba</span> passdb backend, any user you attempt to add will also be required to exist in the <code class="filename">/etc/passwd</code> file.
</div>

<div class="sect4">
<div class="titlepage">


##### Advanced Requirements {#advanced-requirements}


</div>

More complex scenarios involving domain control or membership are possible. Such setups are advanced topics and cannot be adequately covered in BLFS. Many complete books have been written on these topics alone. Note that in some domain membership scenarios, the <span class="command"><strong>winbindd</strong></span> daemon and the corresponding <span class="phrase">systemd unit</span> are needed.
</div>

<div class="sect4">
<div class="titlepage">


##### Guest account {#guest-account}


</div>

The default <span class="application">Samba</span> installation uses the <code class="systemitem">nobody</code> user for guest access to the server. This can be overridden by setting the <code class="option">guest account =</code> parameter in the <code class="filename">/etc/samba/smb.conf</code> file. If you utilize the <code class="option">guest account =</code> parameter, ensure this user exists in the <code class="filename">/etc/passwd</code> file.
</div>

<div class="sect4">
<div class="titlepage">


##### Systemd Units {#systemd-units}


</div>

To start the <span class="application">Samba</span> daemons at boot, install the systemd units from the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package by running the following command as the <code class="systemitem">root</code> user:

```bash
make install-samba
```

To start the <span class="command"><strong>winbindd</strong></span> daemon at boot, install the systemd unit from the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package by running the following command as the <code class="systemitem">root</code> user:

```bash
make install-winbindd
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package comes with two types of units: A service file and a socket file. The service file will start the smbd daemon once at boot and it will keep running until the system shuts down. The socket file will make systemd listen on the smbd port (Default 445, needs to be edited for anything else) and will start the smbd daemon when something tries to connect to that port and stop the daemon when the connection is terminated. This is called socket activation and is analogous to using <span class="application">{,x}inetd</span> on a SysVinit based system.

By default, the first method is used - the smbd daemon is started at boot and stopped at shutdown. If the socket method is desired, you need to run the following commands as the <code class="systemitem">root</code> user:

```bash
systemctl stop smbd          &&
systemctl disable smbd       &&
systemctl enable smbd.socket &&
systemctl start smbd.socket
```

Note that only the smbd daemon can be socket activated.
</div>
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cifsdd, dbwrap_tool, dumpmscat, eventlogadm, gentest, ldbadd, ldbdel, ldbedit, ldbmodify, ldbrename, ldbsearch, locktest, masktest, mdsearch, mvxattr, ndrdump, net, nmbd, nmblookup, ntlm_auth, oLschema2ldif, pdbedit, profiles, regdiff, regpatch, regshell, regtree, rpcclient, samba-log-parser, samba-gpupdate, samba-regedit, samba-tool, sharesec, smbcacls, smbclient, smbcontrol, smbcquotas, smbd, smbget, smbpasswd, smbspool, smbstatus, smbtar, smbtorture, smbtree, tdbbackup, tdbdump, tdbrestore, tdbtool, testparm, wbinfo, winbindd, and wspsearch</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libdcerpc-binding.so, libdcerpc-server-core.so, libndr-krb5pac.so, libndr-nbt.so, libndr.so, libndr-standard.so, libnetapi.so, libnss_winbind.so, libnss_wins.so, libsamba-errors.so, libsamba-passdb.so, libsamba-util.so, libsmbclient.so, libsmbconf.so, libsmbldap.so, libwbclient.so, and filesystem and support modules under /usr/lib/{python3.14,samba}</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/samba, /run/samba, /usr/include/samba-4.0, /usr/lib/python3.14/site-packages/samba, /usr/{lib,libexec,share}/samba, and /var/{cache,lib,lock,log,run}/samba</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="cifsdd"></a><span class="command"><span class="term"><strong>cifsdd</strong></span></span>                       is the dd command for SMB
  <a id="dbwrap_tool"></a><span class="command"><span class="term"><strong>dbwrap_tool</strong></span></span>             is used to read and manipulate TDB/CTDB databases using the dbwrap interface
  <a id="dumpmscat"></a><span class="command"><span class="term"><strong>dumpmscat</strong></span></span>                 dumps the content of MS catalog files
  <a id="eventlogadm"></a><span class="command"><span class="term"><strong>eventlogadm</strong></span></span>             is used to write records to eventlogs from STDIN, add the specified source and DLL eventlog registry entries and display the active eventlog names (from <code class="filename">smb.conf</code>)
  <a id="gentest"></a><span class="command"><span class="term"><strong>gentest</strong></span></span>                     is used to run random generic SMB operations against two SMB servers and show the differences in behavior
  <a id="ldbadd"></a><span class="command"><span class="term"><strong>ldbadd</strong></span></span>                       is a command-line utility for adding records to an LDB database
  <a id="ldbdel"></a><span class="command"><span class="term"><strong>ldbdel</strong></span></span>                       is a command-line utility for deleting LDB database records
  <a id="ldbedit"></a><span class="command"><span class="term"><strong>ldbedit</strong></span></span>                     allows you to edit LDB databases using your preferred editor
  <a id="ldbmodify"></a><span class="command"><span class="term"><strong>ldbmodify</strong></span></span>                 allows you to modify records in an LDB database
  <a id="ldbrename"></a><span class="command"><span class="term"><strong>ldbrename</strong></span></span>                 allows you to rename LDB databases
  <a id="ldbsearch"></a><span class="command"><span class="term"><strong>ldbsearch</strong></span></span>                 searches an LDB database for records matching a specified expression
  <a id="locktest"></a><span class="command"><span class="term"><strong>locktest</strong></span></span>                   is used to find differences in locking between two SMB servers
  <a id="masktest"></a><span class="command"><span class="term"><strong>masktest</strong></span></span>                   is used to find differences in wildcard matching between Samba's implementation and that of a remote server
  <a id="mdsearch"></a><span class="command"><span class="term"><strong>mdsearch</strong></span></span>                   runs <span class="application">Spotlight</span> searches against a SMB server
  <a id="mvxattr"></a><span class="command"><span class="term"><strong>mvxattr</strong></span></span>                     is used to recursively rename extended attributes
  <a id="ndrdump"></a><span class="command"><span class="term"><strong>ndrdump</strong></span></span>                     is a DCE/RPC Packet Parser and Dumper
  <a id="net"></a><span class="command"><span class="term"><strong>net</strong></span></span>                             is a tool for administration of <span class="application">Samba</span> and remote CIFS servers, similar to the <span class="command"><strong>net</strong></span> utility for DOS/Windows
  <a id="nmbd"></a><span class="command"><span class="term"><strong>nmbd</strong></span></span>                           is the <span class="application">Samba</span> NetBIOS name server
  <a id="nmblookup"></a><span class="command"><span class="term"><strong>nmblookup</strong></span></span>                 is used to query NetBIOS names and map them to IP addresses
  <a id="ntlm_auth"></a><span class="command"><span class="term"><strong>ntlm_auth</strong></span></span>                 is a tool to allow external access to Winbind's NTLM authentication function
  <a id="oLschema2ldif"></a><span class="command"><span class="term"><strong>oLschema2ldif</strong></span></span>         converts LDAP schema's to LDB-compatible LDIF
  <a id="pdbedit"></a><span class="command"><span class="term"><strong>pdbedit</strong></span></span>                     is a tool used to manage the SAM database
  <a id="profiles"></a><span class="command"><span class="term"><strong>profiles</strong></span></span>                   is a utility that reports and changes SIDs in Windows registry files
  <a id="regdiff"></a><span class="command"><span class="term"><strong>regdiff</strong></span></span>                     is a Diff program for Windows registry files
  <a id="regpatch"></a><span class="command"><span class="term"><strong>regpatch</strong></span></span>                   applies registry patches to registry files
  <a id="regshell"></a><span class="command"><span class="term"><strong>regshell</strong></span></span>                   is a Windows registry file browser using readline
  <a id="regtree"></a><span class="command"><span class="term"><strong>regtree</strong></span></span>                     is a text-mode registry viewer
  <a id="rpcclient"></a><span class="command"><span class="term"><strong>rpcclient</strong></span></span>                 is used to execute MS-RPC client side functions
  <a id="samba-log-parser"></a><span class="command"><span class="term"><strong>samba-log-parser</strong></span></span>   parses winbind logs generated by Samba
  <a id="samba-gpupdate"></a><span class="command"><span class="term"><strong>samba-gpupdate</strong></span></span>       allows you to edit Microsoft Group Policy Objects (GPOs)
  <a id="samba-regedit"></a><span class="command"><span class="term"><strong>samba-regedit</strong></span></span>         is a ncurses based tool to manage the Samba registry
  <a id="samba-tool"></a><span class="command"><span class="term"><strong>samba-tool</strong></span></span>               is the main Samba administration tool
  <a id="sharesec"></a><span class="command"><span class="term"><strong>sharesec</strong></span></span>                   manipulates share ACL permissions on SMB file shares
  <a id="smbcacls"></a><span class="command"><span class="term"><strong>smbcacls</strong></span></span>                   is used to manipulate Windows NT access control lists
  <a id="smbclient"></a><span class="command"><span class="term"><strong>smbclient</strong></span></span>                 is a SMB/CIFS access utility, similar to FTP
  <a id="smbcontrol"></a><span class="command"><span class="term"><strong>smbcontrol</strong></span></span>               is used to control running <span class="command"><strong>smbd</strong></span>, <span class="command"><strong>nmbd</strong></span> and <span class="command"><strong>winbindd</strong></span> daemons
  <a id="smbcquotas"></a><span class="command"><span class="term"><strong>smbcquotas</strong></span></span>               is used to manipulate Windows NT quotas on SMB file shares
  <a id="smbd"></a><span class="command"><span class="term"><strong>smbd</strong></span></span>                           is the main <span class="application">Samba</span> daemon which provides SMB/CIFS services to clients
  <a id="smbget"></a><span class="command"><span class="term"><strong>smbget</strong></span></span>                       is a simple utility with <span class="command"><strong>wget</strong></span>-like semantics, that can download files from SMB servers. You can specify the files you would like to download on the command-line
  <a id="smbpasswd"></a><span class="command"><span class="term"><strong>smbpasswd</strong></span></span>                 changes a user's <span class="application">Samba</span> password
  <a id="smbspool"></a><span class="command"><span class="term"><strong>smbspool</strong></span></span>                   sends a print job to a SMB printer
  <a id="smbstatus"></a><span class="command"><span class="term"><strong>smbstatus</strong></span></span>                 reports current <span class="application">Samba</span> connections
  <a id="smbtar"></a><span class="command"><span class="term"><strong>smbtar</strong></span></span>                       is a shell script used for backing up SMB/CIFS shares directly to Linux tape drives or to a file
  <a id="smbtorture"></a><span class="command"><span class="term"><strong>smbtorture</strong></span></span>               is a test suite that runs several tests against a SMB server
  <a id="smbtree"></a><span class="command"><span class="term"><strong>smbtree</strong></span></span>                     is a text-based SMB network browser
  <a id="tdbbackup"></a><span class="command"><span class="term"><strong>tdbbackup</strong></span></span>                 is a tool for backing up or validating the integrity of <span class="application">Samba</span> <code class="filename">.tdb</code> files
  <a id="tdbdump"></a><span class="command"><span class="term"><strong>tdbdump</strong></span></span>                     is a tool used to print the contents of a <span class="application">Samba</span> <code class="filename">.tdb</code> file
  <a id="tdbrestore"></a><span class="command"><span class="term"><strong>tdbrestore</strong></span></span>               is a tool for creating a <span class="application">Samba</span> <code class="filename">.tdb</code> file out of a ntdbdump
  <a id="tdbtool"></a><span class="command"><span class="term"><strong>tdbtool</strong></span></span>                     is a tool which allows simple database manipulation from the command line
  <a id="testparm"></a><span class="command"><span class="term"><strong>testparm</strong></span></span>                   checks a <code class="filename">smb.conf</code> file for proper syntax
  <a id="wbinfo"></a><span class="command"><span class="term"><strong>wbinfo</strong></span></span>                       queries a running <span class="command"><strong>winbindd</strong></span> daemon
  <a id="winbindd"></a><span class="command"><span class="term"><strong>winbindd</strong></span></span>                   resolves names from Windows NT servers
  <a id="wspsearch"></a><span class="command"><span class="term"><strong>wspsearch</strong></span></span>                 runs Windows Search Protocol queries against a SMB server
  <a id="libnss_winbind"></a><span class="term"><code class="filename">libnss_winbind.so</code></span>       provides Name Service Switch API functions for resolving names from NT servers
  <a id="libnss_wins"></a><span class="term"><code class="filename">libnss_wins.so</code></span>             provides API functions for Samba's implementation of the Windows Internet Naming Service
  <a id="libnetapi"></a><span class="term"><code class="filename">libnetapi.so</code></span>                 provides API functions for the administration tools used for Samba and remote CIFS servers
  <a id="libsmbclient"></a><span class="term"><code class="filename">libsmbclient.so</code></span>           provides API functions for the Samba SMB client tools
  <a id="libwbclient"></a><span class="term"><code class="filename">libwbclient.so</code></span>             provides API functions for Windows domain client services
  ---------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](rsync.md "rsync-3.4.3")

    rsync-3.4.3

-   [Next](wget.md "Wget-1.25.0")

    Wget-1.25.0

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
