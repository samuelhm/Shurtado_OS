<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 21. Mail Server Software

-   [Prev](exim.md "Exim-4.99.1")

    Exim-4.99.1

-   [Next](databases.md "Databases")

    Databases

-   [Up](mail.md "Chapter 21. Mail Server Software")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Postfix-3.11.3 {#postfix-3.11.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Postfix {#introduction-to-postfix}

The <span class="application">Postfix</span> package contains a Mail Transport Agent (MTA). This is useful for sending email to other users of your host machine. It can also be configured to be a central mail server for your domain, a mail relay agent or simply a mail delivery agent to your local Internet Service Provider.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ghostarchive.org/postfix/postfix-release/official/postfix-3.11.3.tar.gz">https://ghostarchive.org/postfix/postfix-release/official/postfix-3.11.3.tar.gz</a>

-   Download MD5 sum: a96d050f085f600ce53a8c3a72f1df76

-   Download size: 5.0 MB

-   Estimated disk space required: 171 MB (48 MB installed)

-   Estimated build time: 0.2 SBU (Using parallelism=4)
</div>

### Postfix Dependencies

#### Recommended

<a class="xref" href="../postlfs/cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a>, <a class="xref" href="../basicnet/libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a>, and <a class="xref" href="lmdb.md" title="lmdb-0.9.35">lmdb-0.9.35</a>

#### Optional

<a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a> for Email Address Internationalization (SMTPUTF8) support, <a class="xref" href="mariadb.md" title="MariaDB-12.3.2">MariaDB-12.3.2</a> or <a class="ulink" href="https://www.mysql.com/">MySQL</a>, <a class="xref" href="openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, <a class="xref" href="postgresql.md" title="PostgreSQL-18.4">PostgreSQL-18.4</a>, <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated), and <a class="ulink" href="https://cr.yp.to/cdb.md">CDB</a> or <a class="ulink" href="https://www.corpit.ru/mjt/tinycdb.md">TinyCDB</a>

Note that <span class="application">SQLite</span>, <span class="application">MySQL</span>, <span class="application">PostgreSQL</span> and <span class="application">CDB</span> are only useful if there is a known need for them.

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/postfix">https://wiki.linuxfromscratch.org/blfs/wiki/postfix</a>
</div>

<div class="installation" lang="en">
## Installation of Postfix {#installation-of-postfix}

<div class="sect3" lang="en">
### Adding Users and Groups {#adding-users-and-groups}

Before you compile the program, you need to create users and groups that will be expected to be in place during the installation. Add the users and groups with the following commands issued by the <code class="systemitem">root</code> user:

```bash
groupadd -g 32 postfix &&
groupadd -g 33 postdrop &&
useradd -c "Postfix Daemon User" -d /var/spool/postfix -g postfix \
        -s /bin/false -u 32 postfix &&
chown -v postfix:postfix /var/mail
```
</div>

<div class="sect3" lang="en">
### Configuring the Build {#configuring-the-build}

The README files are formatted to be read with a pager like <span class="application">less</span> or <span class="application">more</span>. If you want to use a text editor, make them legible with the following sed:

```bash
sed -i 's/.\x08//g' README_FILES/*
```

The <span class="application">Postfix</span> source tree does not contain a <code class="filename">configure</code> script, rather the makefile in the top-level directory contains a <code class="option">makefiles</code> target that regenerates all the other makefiles in the build tree. If you wish to use additional software such as a database back-end for virtual users, or TLS/SSL authentication, you will need to regenerate the makefiles using one or more of the appropriate <code class="envar">CCARGS</code> and <code class="envar">AUXLIBS</code> settings listed below.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

For all variants of the CCARGS you should ensure that '-DNO_NIS' is specified so that the build does not attempt to access an rpcsvc header which do not exist in BLFS. If <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated) is not installed, '-DNO_DB' needs to be specified as well.
</div>

For more details read the readme files.

Initialize the <code class="envar">CCARGS</code> and <code class="envar">AUXLIBS</code> according to the note above:

```bash
CCARGS="-DNO_NIS -DNO_DB"
AUXLIBS=""
```

Next, the <code class="envar">CCARGS</code> and the <code class="envar">AUXLIBS</code> variables are filled with settings depending on the actual system configuration. If an optional package is installed but should <span class="emphasis"><em>not</em></span> be included in the <span class="application">Postfix</span> build, simply skip the corresponding <code class="code">if [ ... ]; then</code> scriptlets.

<div class="sect4">
<div class="titlepage">


##### Cyrus-SASL {#cyrus-sasl}


</div>

To use <span class="application">Cyrus-SASL</span> with <span class="application">Postfix</span>, use the following arguments:

```bash
if [ -r /usr/lib/libsasl2.so ]; then
  CCARGS="$CCARGS -DUSE_SASL_AUTH -DUSE_CYRUS_SASL -I/usr/include/sasl"
  AUXLIBS="$AUXLIBS -lsasl2"
fi
```
</div>

<div class="sect4">
<div class="titlepage">


##### LMDB {#lmdb}


</div>

To use <span class="application">LMDB</span> with <span class="application">Postfix</span>, use the following arguments:

```bash
if [ -r /usr/lib/liblmdb.so ]; then
  CCARGS="$CCARGS -DHAS_LMDB"
  AUXLIBS_LMDB="-llmdb"
fi
```
</div>

<div class="sect4">
<div class="titlepage">


##### OpenLDAP {#openldap}


</div>

To use <span class="application">OpenLDAP</span> with <span class="application">Postfix</span>, use the following arguments:

```bash
if [ -r /usr/lib/libldap.so -a -r /usr/lib/liblber.so ]; then
  CCARGS="$CCARGS -DHAS_LDAP"
  AUXLIBS="$AUXLIBS -lldap -llber"
fi
```
</div>

<div class="sect4">
<div class="titlepage">


##### Sqlite {#sqlite}


</div>

To use <span class="application">Sqlite</span> with <span class="application">Postfix</span>, use the following arguments:

```bash
if [ -r /usr/lib/libsqlite3.so ]; then
  CCARGS="$CCARGS -DHAS_SQLITE"
  AUXLIBS="$AUXLIBS -lsqlite3 -lpthread"
fi
```
</div>

<div class="sect4">
<div class="titlepage">


##### MySQL or MariaDB {#mysql-or-mariadb}


</div>

To use <span class="application">MySQL</span> or <span class="application">MariaDB</span> with <span class="application">Postfix</span>, use the following arguments:

```bash
if [ -r /usr/lib/libmysqlclient.so ]; then
  CCARGS="$CCARGS -DHAS_MYSQL -I/usr/include/mysql"
  AUXLIBS="$AUXLIBS -lmysqlclient -lz -lm"
fi
```
</div>

<div class="sect4">
<div class="titlepage">


##### PostgreSQL {#postgresql}


</div>

To use <span class="application">PostgreSQL</span> with <span class="application">Postfix</span>, use the following arguments:

```bash
if [ -r /usr/lib/libpq.so ]; then
  CCARGS="$CCARGS -DHAS_PGSQL -I/usr/include/postgresql"
  AUXLIBS="$AUXLIBS -lpq -lz -lm"
fi
```
</div>

<div class="sect4">
<div class="titlepage">


##### CDB/TinyCDB {#cdbtinycdb}


</div>

To use <span class="application">CDB</span> or <span class="application">TinyCDB</span> with <span class="application">Postfix</span>, use the following arguments:

```console
if [ -r </path/to/CDB>/libcdb.a ]; then
  CCARGS="$CCARGS -DHAS_CDB"
  AUXLIBS="$AUXLIBS </path/to/CDB>/libcdb.a"
fi
```
</div>

<div class="sect4">
<div class="titlepage">


##### StartTLS Authentication {#starttls-authentication}


</div>

To use <span class="application">OpenSSL</span> with <span class="application">Postfix</span>, use the following arguments:

```bash
if [ -r /usr/lib/libssl.so -a -r /usr/lib/libcrypto.so ]; then
  CCARGS="$CCARGS -DUSE_TLS -I/usr/include/openssl/"
  AUXLIBS="$AUXLIBS -lssl -lcrypto"
fi
```

<span class="application">OpenSSL</span> is installed by LFS so it should be always there. The <code class="code">if ... then</code> is here just for consistency.
</div>
</div>

<div class="sect3" lang="en">
### Installing Postfix {#installing-postfix}

There might be duplicate settings in <code class="envar">AUXLIBS</code> like <code class="code">-lm</code> when both, <span class="application">MariaDB</span> and <span class="application">PostgreSQL</span> are used. They do not harm. Install <span class="application">Postfix</span> by running the following commands:

```bash
make makefiles                    \
     CCARGS="$CCARGS"             \
     AUXLIBS="$AUXLIBS"           \
     AUXLIBS_LMDB="$AUXLIBS_LMDB" \
     default_database_type=lmdb   \
     default_cache_db_type=lmdb   &&
make
```

This package does not come with a useful test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
sh postfix-install -non-interactive  \
   daemon_directory=/usr/lib/postfix \
   manpage_directory=/usr/share/man  \
   html_directory=/usr/share/doc/postfix-3.11.3/html \
   readme_directory=/usr/share/doc/postfix-3.11.3/readme
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>make makefiles</strong></span>: This command rebuilds the makefiles throughout the source tree to use the options contained in the <code class="envar">CCARGS</code> and <code class="envar">AUXLIBS</code> variables.

<span class="command"><strong>sh postfix-install -non-interactive</strong></span>: This keeps the install script from asking any questions, thereby accepting default destination directories in all but the few cases. If the <code class="option">html_directory</code> and <code class="option">readme_directory</code> options are not set then the documentation will not be installed.

<code class="option">CCARGS="-DNO_EAI ..."</code>: This will turn off SMTPUTF8 support, for example if the rest of your email address infrastructure cannot handle UTF-8 email addresses and message header values.

<code class="option">default_database_type=lmdb</code>: Postfix no longer specifies a default database type. It must be specified when creating the makefiles.

<code class="option">default_cache_db_type=lmdb</code>: Postfix no longer specifies a default cache type. It must be specified when creating the makefiles.
</div>

<div class="configuration" lang="en">
## Configuring Postfix {#configuring-postfix}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/aliases</code>, <code class="filename">/etc/postfix/main.cf</code>, and <code class="filename">/etc/postfix/master.cf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Create (or append to an existing) <code class="filename">/etc/aliases</code> with the following command. Change *`<LOGIN>`* to your non-root login identity so mail addressed to <code class="systemitem">root</code> can be forwarded to you. As the <code class="systemitem">root</code> user:

```bash
cat >> /etc/aliases << "EOF"
# Begin /etc/aliases

MAILER-DAEMON:    postmaster
postmaster:       root

root:             <LOGIN>
# End /etc/aliases
EOF
```

To protect an existing <code class="filename">/etc/aliases</code> file, the above command appends these aliases to it if it exists. This file should be checked and duplicate aliases removed if present.

The BLFS editors recommend to use LMDB for Postfix tables. Add three lines into <code class="filename">/etc/postfix/main.cf</code> to make <span class="command"><strong>postmap</strong></span> encode the lookup tables in the LMDB format by default and to change the default hash setting of the alias tables:

```bash
echo 'default_database_type = lmdb'       >> /etc/postfix/main.cf &&
echo 'alias_database = lmdb:/etc/aliases' >> /etc/postfix/main.cf &&
echo 'alias_maps = lmdb:/etc/aliases'     >> /etc/postfix/main.cf
```

To protect your server against the recent SMTP smuggling attacks, additional steps are required. Add two lines into <code class="filename">/etc/postfix/main.cf</code> to disconnect remote SMTP clients that send bare newlines in the DATA section, while also allowing clients on your network with non-standard SMTP implementations to still send mail:

```bash
echo 'smtpd_forbid_bare_newline = normalize' >> /etc/postfix/main.cf &&
echo 'smtpd_forbid_bare_newline_exclusions = $mynetworks' >> /etc/postfix/main.cf
```

Note that if you are following an online tutorial to configure Postfix, the tutorial may refer to a lookup table with <code class="literal">hash:/path/to/lookup_table</code>. You should replace <code class="literal">hash</code> with <code class="literal">lmdb</code> in order to use a lookup table encoded in the LMDB format.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The <code class="filename">/etc/postfix/main.cf</code> and <code class="filename">/etc/postfix/master.cf</code> files must be personalized for your system. The <code class="filename">main.cf</code> file needs your fully qualified hostname. You will find that <code class="filename">main.cf</code> is self documenting, so load it into your editor to make the changes you need for your situation.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<span class="application">Postfix</span> can also be set up to run in a chroot jail. See the file in the source <code class="filename">examples/chroot-setup/LINUX2</code> for details.
</div>

To ensure that all permissions are set properly, <span class="application">postfix</span> provides a tool which is to be run as the <code class="systemitem">root</code> user:

```bash
/usr/sbin/postfix -c /etc/postfix set-permissions
```

If you have an existing configuration, you can run the <span class="command"><strong>postfix</strong></span> utility to add any necessary definitions to your existing files. As the <code class="systemitem">root</code> user:

```bash
/usr/sbin/postfix upgrade-configuration
```

Before starting <span class="application">Postfix</span>, you should check that your configuration and file permissions will work properly. Run the following commands as the <code class="systemitem">root</code> user to check and start your <span class="application">Postfix</span> server:

```bash
/usr/sbin/postfix check &&
/usr/sbin/postfix start
```
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To automate the running of Postfix at startup, install the <span class="phrase"><code class="filename">postfix.service</code> unit</span> included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package:

```bash
make install-postfix
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">mailq (symlink), newaliases (symlink), postalias, postcat, postconf, postdrop, postfix, postkick, postlock, postlog, postmap, postmulti, postqueue, postsuper, and sendmail</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/{etc,usr/lib}/postfix, /usr/share/doc/postfix-3.11.3 and /var/{lib,spool}/postfix</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="mailq"></a><span class="command"><span class="term"><strong>mailq</strong></span></span>                 A symlink to <code class="filename">sendmail</code>
  <a id="newaliases"></a><span class="command"><span class="term"><strong>newaliases</strong></span></span>       A symlink to <code class="filename">sendmail</code>
  <a id="postalias"></a><span class="command"><span class="term"><strong>postalias</strong></span></span>         is a utility for <span class="application">Postfix</span> alias database maintenance
  <a id="postcat"></a><span class="command"><span class="term"><strong>postcat</strong></span></span>             Prints the contents of files from the <span class="application">Postfix</span> queue in human readable format
  <a id="postconf"></a><span class="command"><span class="term"><strong>postconf</strong></span></span>           Displays or changes the value of <span class="application">Postfix</span> configuration parameters
  <a id="postdrop"></a><span class="command"><span class="term"><strong>postdrop</strong></span></span>           Creates a file in the maildrop directory and copies its standard input to the file
  <a id="postfix-bin"></a><span class="command"><span class="term"><strong>postfix</strong></span></span>         is the <span class="application">Postfix</span> control program
  <a id="postkick"></a><span class="command"><span class="term"><strong>postkick</strong></span></span>           Sends requests to the specified service over a local transport channel
  <a id="postlock"></a><span class="command"><span class="term"><strong>postlock</strong></span></span>           Locks a mail folder for exclusive use, and executes commands passed to it
  <a id="postlog"></a><span class="command"><span class="term"><strong>postlog</strong></span></span>             A <span class="application">Postfix</span>-compatible logging interface for use in, for example, shell scripts
  <a id="postmap"></a><span class="command"><span class="term"><strong>postmap</strong></span></span>             Creates or queries one or more Postfix lookup tables, or updates an existing one
  <a id="postmulti"></a><span class="command"><span class="term"><strong>postmulti</strong></span></span>         is the <span class="application">Postfix</span> multi-instance manager. It allows a system administrator to manage multiple <span class="application">Postfix</span> instances on a single host
  <a id="postqueue"></a><span class="command"><span class="term"><strong>postqueue</strong></span></span>         The <span class="application">Postfix</span> user interface for queue management
  <a id="postsuper"></a><span class="command"><span class="term"><strong>postsuper</strong></span></span>         The <span class="application">Postfix</span> user interface for superuser queue management
  <a id="sendmail-postfix"></a><span class="command"><span class="term"><strong>sendmail</strong></span></span>   is the <span class="application">Postfix</span> to <span class="application">Sendmail</span> compatibility interface
  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](exim.md "Exim-4.99.1")

    Exim-4.99.1

-   [Next](databases.md "Databases")

    Databases

-   [Up](mail.md "Chapter 21. Mail Server Software")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
