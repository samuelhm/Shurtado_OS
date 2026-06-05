<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](cryptsetup.md "cryptsetup-2.8.6")

    cryptsetup-2.8.6

-   [Next](gnupg.md "GnuPG-2.5.20")

    GnuPG-2.5.20

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Cyrus SASL-2.1.28 {#cyrus-sasl-2.1.28}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Cyrus SASL {#introduction-to-cyrus-sasl}

The <span class="application">Cyrus SASL</span> package contains a Simple Authentication and Security Layer implementation, a method for adding authentication support to connection-based protocols. To use SASL, a protocol includes a command for identifying and authenticating a user to a server and for optionally negotiating protection of subsequent protocol interactions. If its use is negotiated, a security layer is inserted between the protocol and the connection.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/cyrusimap/cyrus-sasl/releases/download/cyrus-sasl-2.1.28/cyrus-sasl-2.1.28.tar.gz">https://github.com/cyrusimap/cyrus-sasl/releases/download/cyrus-sasl-2.1.28/cyrus-sasl-2.1.28.tar.gz</a>

-   Download MD5 sum: 6f228a692516f5318a64505b46966cfa

-   Download size: 3.9 MB

-   Estimated disk space required: 28 MB

-   Estimated build time: 0.2 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/cyrus-sasl-2.1.28-gcc15_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/cyrus-sasl-2.1.28-gcc15_fixes-1.patch</a>
</div>

### Cyrus SASL Dependencies

#### Recommended

<a class="xref" href="../server/lmdb.md" title="lmdb-0.9.35">lmdb-0.9.35</a>

#### Optional

<a class="xref" href="linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, <a class="xref" href="mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../server/mariadb.md" title="MariaDB-12.3.2">MariaDB-12.3.2</a> or <a class="ulink" href="https://www.mysql.com/">MySQL</a>, <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, <a class="xref" href="../server/postgresql.md" title="PostgreSQL-18.4">PostgreSQL-18.4</a>, <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> (needed for regenerating the documentation), <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated), <a class="ulink" href="https://stuff.mit.edu/afs/net.mit.edu/project/attic/krb4/">krb4</a>, <a class="ulink" href="https://dmalloc.com/">Dmalloc</a>, and <a class="ulink" href="https://metacpan.org/pod/Pod::POM::View::Restructured">Pod::POM::View::Restructured</a> (needed for regenerating the documentation)
</div>

<div class="installation" lang="en">
## Installation of Cyrus SASL {#installation-of-cyrus-sasl}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package does not support parallel build.
</div>

First, fix the package to be compatible with gcc-15:

```bash
patch -Np1 -i ../cyrus-sasl-2.1.28-gcc15_fixes-1.patch &&
autoreconf -fiv
```

Also, fix a problem revealed by gcc-14 and later:

```bash
sed '/saslint/a #include <time.h>'       -i lib/saslutil.c &&
sed '/plugin_common/a #include <time.h>' -i plugins/cram.c
```

Install <span class="application">Cyrus SASL</span> by running the following commands:

```bash
./configure --prefix=/usr                       \
            --sysconfdir=/etc                   \
            --enable-auth-sasldb                \
            --with-dblib=lmdb                   \
            --with-dbpath=/var/lib/sasl/sasldb2 \
            --with-sphinx-build=no              \
            --with-saslauthd=/var/run/saslauthd &&
make -j1
```

This package does not come with a test suite. If you are planning on using the GSSAPI authentication mechanism, test it after installing the package using the sample server and client programs which were built in the preceding step. Instructions for performing the tests can be found at <a class="ulink" href="https://www.linuxfromscratch.org/hints/downloads/files/cyrus-sasl.txt">https://www.linuxfromscratch.org/hints/downloads/files/cyrus-sasl.txt</a>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
install -v -dm755                          /usr/share/doc/cyrus-sasl-2.1.28/html &&
install -v -m644  saslauthd/LDAP_SASLAUTHD /usr/share/doc/cyrus-sasl-2.1.28      &&
install -v -m644  doc/legacy/*.md        /usr/share/doc/cyrus-sasl-2.1.28/html &&
install -v -dm700 /var/lib/sasl
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-dbpath=/var/lib/sasl/sasldb2`*: This switch forces the <span class="command"><strong>sasldb</strong></span> database to be created in <code class="filename">/var/lib/sasl</code> instead of <code class="filename">/etc</code>.

*`--with-saslauthd=/var/run/saslauthd`*: This switch forces <span class="command"><strong>saslauthd</strong></span> to use the FHS compliant directory <code class="filename">/var/run/saslauthd</code> for variable run-time data.

*`--enable-auth-sasldb`*: This switch enables the SASLDB authentication backend.

<code class="option">--with-dblib=gdbm</code>: This switch forces <span class="application">GDBM</span> to be used instead of <span class="application">LMDB</span>. Use this if you have not installed <span class="application">LMDB</span>.

<code class="option">--with-ldap</code>: This switch enables LDAP support through <span class="application">OpenLDAP</span>.

<code class="option">--enable-ldapdb</code>: This switch enables the LDAPDB authentication backend.

<code class="option">--enable-login</code>: This option enables the unsupported LOGIN authentication method. Do not use it unless you have a specific reason to do so as it is insecure by nature.

<code class="option">--enable-ntlm</code>: This option enables the unsupported NTLM authentication method. Do not use it unless you have a specific reason to do so as it is insecure by nature, and the protocol has been phased out from the latest versions of Windows.

<span class="command"><strong>install -v -m644 ...</strong></span>: These commands install additional documentation which is not installed by the <span class="command"><strong>make install</strong></span> command.

<span class="command"><strong>install -v -m700 -d /var/lib/sasl</strong></span>: This directory must exist when starting <span class="command"><strong>saslauthd</strong></span> or using the sasldb plugin. If you're not going to be running the daemon or using the plugins, you may omit the creation of this directory.
</div>

<div class="configuration" lang="en">
## Configuring Cyrus SASL {#configuring-cyrus-sasl}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/saslauthd.conf</code> (for <span class="command"><strong>saslauthd</strong></span> LDAP configuration) and <code class="filename">/etc/sasl2/Appname.conf</code> (where "Appname" is the application defined name of the application)
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

See <a class="ulink" href="https://www.cyrusimap.org/sasl/sasl/sysadmin.md">https://www.cyrusimap.org/sasl/sasl/sysadmin.html</a> for information on what to include in the application configuration files.

See <a class="ulink" href="file:///usr/share/doc/cyrus-sasl-2.1.28/LDAP_SASLAUTHD">file:///usr/share/doc/cyrus-sasl-2.1.28/LDAP_SASLAUTHD</a> for configuring <span class="command"><strong>saslauthd</strong></span> with <span class="application">OpenLDAP</span>.

See <a class="ulink" href="https://www.cyrusimap.org/sasl/sasl/gssapi.md#gssapi">https://www.cyrusimap.org/sasl/sasl/gssapi.md#gssapi</a> for configuring <span class="command"><strong>saslauthd</strong></span> with <span class="application">Kerberos</span>.
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

If you need to run the <span class="command"><strong>saslauthd</strong></span> daemon at system startup, install the <code class="filename">saslauthd.service</code> unit included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package using the following command:

```bash
make install-saslauthd
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

You'll need to modify <code class="filename">/etc/default/saslauthd</code> and modify the <code class="option">MECHANISM</code> parameter with your desired authentication mechanism. <span class="phrase">The default authentication mechanism is "shadow".</span>
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">pluginviewer, saslauthd, sasldblistusers2, saslpasswd2, and testsaslauthd</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libsasl2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/sasl, /usr/lib/sasl2, /usr/share/doc/cyrus-sasl-2.1.28 and /var/lib/sasl</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
  <a id="pluginviewer"></a><span class="command"><span class="term"><strong>pluginviewer</strong></span></span>           is used to list loadable SASL plugins and their properties
  <a id="saslauthd"></a><span class="command"><span class="term"><strong>saslauthd</strong></span></span>                 is the SASL authentication server
  <a id="sasldblistusers2"></a><span class="command"><span class="term"><strong>sasldblistusers2</strong></span></span>   is used to list the users in the SASL password database <code class="filename">sasldb2</code>
  <a id="saslpasswd2"></a><span class="command"><span class="term"><strong>saslpasswd2</strong></span></span>             is used to set and delete a user's SASL password and mechanism specific secrets in the SASL password database <code class="filename">sasldb2</code>
  <a id="testsaslauthd"></a><span class="command"><span class="term"><strong>testsaslauthd</strong></span></span>         is a test utility for the SASL authentication server
  <a id="libsasl2"></a><span class="term"><code class="filename">libsasl2.so</code></span>                   is a general purpose authentication library for server and client applications
  ---------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cryptsetup.md "cryptsetup-2.8.6")

    cryptsetup-2.8.6

-   [Next](gnupg.md "GnuPG-2.5.20")

    GnuPG-2.5.20

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
