<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 21. Mail Server Software

-   [Prev](mail.md "Mail Server Software")

    Mail Server Software

-   [Next](exim.md "Exim-4.99.1")

    Exim-4.99.1

-   [Up](mail.md "Chapter 21. Mail Server Software")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Dovecot-2.4.2 {#dovecot-2.4.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Dovecot {#introduction-to-dovecot}

<span class="application">Dovecot</span> is an Internet Message Access Protocol (IMAP) and Post Office Protocol (POP) server, written primarily with security in mind. <span class="application">Dovecot</span> aims to be lightweight, fast and easy to set up as well as highly configurable and easily extensible with plugins.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.dovecot.org/releases/2.4/dovecot-2.4.2.tar.gz">https://www.dovecot.org/releases/2.4/dovecot-2.4.2.tar.gz</a>

-   Download MD5 sum: 5c32d194129424b2dd92b864e4c8e16a

-   Download size: 7.5 MB

-   Estimated disk space required: 253 MB

-   Estimated build time: 4.8 SBU
</div>

### Dovecot Dependencies

#### Required

<a class="xref" href="../basicnet/libtirpc.md" title="libtirpc-1.3.7">libtirpc-1.3.7</a> and <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>

#### Optional

<a class="xref" href="../postlfs/cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a>, <a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="../postlfs/libcap.md" title="libcap-2.78 with PAM">libcap-2.78 with PAM</a>, <a class="xref" href="../general/libunwind.md" title="libunwind-1.8.3">libunwind-1.8.3</a>, <a class="xref" href="../general/lua.md" title="Lua-5.4.8">Lua-5.4.8</a>, <a class="xref" href="mariadb.md" title="MariaDB-12.3.2">MariaDB-12.3.2</a> or <a class="ulink" href="https://www.mysql.com/">MySQL</a>, <a class="xref" href="openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, <a class="xref" href="postgresql.md" title="PostgreSQL-18.4">PostgreSQL-18.4</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="xref" href="../general/xapian.md" title="Xapian-2.0.0">xapian-2.0.0</a>, <a class="xref" href="../postlfs/xfsprogs.md" title="xfsprogs-7.0.1">xfsprogs-7.0.1</a>, <a class="ulink" href="https://cassandra.apache.org/">Cassandra</a>, <a class="ulink" href="https://github.com/shibukawa/snowball_py">stemmer</a> and <a class="ulink" href="https://libsodium.gitbook.io/doc/">libsodium</a>
</div>

<div class="installation" lang="en">
## Installation of Dovecot {#installation-of-dovecot}

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

There are significant changes in the configuration of this package that are required when updating to Dovecot 2.4.0. Please review the documentation at <a class="ulink" href="https://doc.dovecot.org/2.4.0/installation/upgrade/2.3-to-2.4.md">Dovecot Upgrade Guide</a> before continuing if you are upgrading this package from a previous version.
</div>

There should be dedicated users and groups for unprivileged Dovecot processes and for processing users' logins. Issue the following commands as the <code class="systemitem">root</code> user:

```bash
groupadd -g 42 dovecot &&
useradd -c "Dovecot unprivileged user" -d /dev/null -u 42 \
        -g dovecot -s /bin/false dovecot &&
groupadd -g 43 dovenull &&
useradd -c "Dovecot login user" -d /dev/null -u 43 \
        -g dovenull -s /bin/false dovenull
```

Install <span class="application">Dovecot</span> by running the following commands:

```bash
./configure --prefix=/usr                          \
            --sysconfdir=/etc                      \
            --localstatedir=/var                   \
            --docdir=/usr/share/doc/dovecot-2.4.2  \
            --disable-static                       &&
make
```

To test the results, issue <span class="command"><strong>make -k check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--with-ldap</code>: This switch enables <span class="application">OpenLDAP</span> authentication support.

<code class="option">--with-pgsql</code>: This switch enables <span class="application">PostgreSQL</span> database support.

<code class="option">--with-mysql</code>: This switch enables <span class="application">MySQL</span> database support.

<code class="option">--with-sqlite</code>: This switch enables <span class="application">SQLite</span> database support.

<code class="option">--with-lua=no</code>: This switch enables <span class="application">Lua</span> plugin support. This includes a mail and push notification plugin.
</div>

<div class="configuration" lang="en">
## Configuring Dovecot {#configuring-dovecot}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/dovecot/dovecot.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The following configuration is a simple proof of concept with IMAP service using local users for authentication and mailbox location.

```bash
mv -v /etc/dovecot/dovecot.conf{,.orig} &&
chmod -v 1777 /var/mail &&
cat > /etc/dovecot/dovecot.conf << "EOF"

# The dovecot configuration requires a minimum version to be set. The server
# will refuse to start if the version set here is older than the version of
# Dovecot installed. This option allows the Dovecot server to set reasonable
# default values based on what version is set here.
dovecot_config_version = 2.4.2

# This option sets the minimum version that is able to read data files from
# the Dovecot server. This is primarily for a cluster which may have several
# different versions of Dovecot installed, but is required for the server to
# run.
dovecot_storage_version = 2.4.2

protocols = imap
ssl = no
# The next line is only needed if you have no IPv6 network interfaces
listen = *
mail_inbox_path = /var/mail/%{user}
mail_driver = mbox
mail_path = ~/Mail
userdb users {
  driver = passwd
}
passdb passwords {
  driver = pam
}
EOF
```

The above configuration also requires a configuration file to be installed for Linux-PAM so dovecot can authenticate users. Issue the following command as the <code class="systemitem">root</code> user to create the configuration file for Linux-PAM:

```bash
cat > /etc/pam.d/dovecot << "EOF"
# Begin /etc/pam.d/dovecot

auth     include system-auth
account  include system-account
password include system-password

# End /etc/pam.d/dovecot
EOF
```

You will definitely want to read the official documentation at <a class="ulink" href="https://doc.dovecot.org/2.4.2/">https://doc.dovecot.org/2.4.2/</a> if you plan to use <span class="application">Dovecot</span> in a production environment.
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the <span class="command"><strong>dovecot</strong></span> daemon at boot, enable the previously installed systemd unit with the following command:

```bash
systemctl enable dovecot
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">doveadm, doveconf, dovecot, and dovecot-sysreport</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">various internal plugins in <code class="filename">/usr/lib/dovecot</code></span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/dovecot, /usr/{include,lib,libexec,share}/dovecot and /usr/share/doc/dovecot-2.4.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------
  <a id="doveadm"></a><span class="command"><span class="term"><strong>doveadm</strong></span></span>                       is the <span class="application">Dovecot</span> administration tool
  <a id="doveconf"></a><span class="command"><span class="term"><strong>doveconf</strong></span></span>                     is <span class="application">Dovecot</span>'s configuration dumping utility
  <a id="dovecot-prog"></a><span class="command"><span class="term"><strong>dovecot</strong></span></span>                  is the IMAP and POP server
  <a id="dovecot-sysreport"></a><span class="command"><span class="term"><strong>dovecot-sysreport</strong></span></span>   prints system information that is useful to the Dovecot developers when submitting bug reports upstream
  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mail.md "Mail Server Software")

    Mail Server Software

-   [Next](exim.md "Exim-4.99.1")

    Exim-4.99.1

-   [Up](mail.md "Chapter 21. Mail Server Software")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
