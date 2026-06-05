<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 21. Mail Server Software

-   [Prev](dovecot.md "Dovecot-2.4.2")

    Dovecot-2.4.2

-   [Next](postfix.md "Postfix-3.11.3")

    Postfix-3.11.3

-   [Up](mail.md "Chapter 21. Mail Server Software")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Exim-4.99.1 {#exim-4.99.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Exim {#introduction-to-exim}

The <span class="application">Exim</span> package contains a Mail Transport Agent written by the University of Cambridge, released under the GNU Public License.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftp.exim.org/pub/exim/exim4/exim-4.99.1.tar.xz">https://ftp.exim.org/pub/exim/exim4/exim-4.99.1.tar.xz</a>

-   Download MD5 sum: 281df763c79f1d68cb4f9ee9c9d8a2e1

-   Download size: 1.9 MB

-   Estimated disk space required: 17 MB

-   Estimated build time: 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Additional formats of the documentation (text-based docs are shipped with the sources) can be downloaded by following the links shown at <a class="ulink" href="https://exim.org/docs.md">https://exim.org/docs.html</a>.
</div>

### Exim Dependencies

#### Required

<a class="xref" href="../basicnet/libnsl.md" title="libnsl-2.0.1">libnsl-2.0.1</a> and <a class="xref" href="../general/perl-modules.md#perl-file-fcntllock" title="File::FcntlLock-0.22">File-FcntlLock-0.22</a>

#### Optional

<a class="ulink" href="https://sourceforge.net/projects/tdb">TDB</a> (alternative to GDBM, built in LFS), <a class="xref" href="../postlfs/cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a>, <a class="xref" href="../general/libidn.md" title="libidn-1.43">libidn-1.43</a>, <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, <a class="xref" href="mariadb.md" title="MariaDB-12.3.2">MariaDB-12.3.2</a> or <a class="ulink" href="https://www.mysql.com/">MySQL</a>, <a class="xref" href="openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="postgresql.md" title="PostgreSQL-18.4">PostgreSQL-18.4</a>, <a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>, <a class="ulink" href="https://github.com/heimdal/heimdal">Heimdal GSSAPI</a>, <a class="ulink" href="https://github.com/shevek/libspf2/">libspf2</a>, and <a class="ulink" href="http://www.trusteddomain.org/opendmarc/">OpenDMARC</a>
</div>

<div class="installation" lang="en">
## Installation of Exim {#installation-of-exim}

Before building <span class="application">Exim</span>, as the <code class="systemitem">root</code> user you should create the group and user <code class="systemitem">exim</code> which will run the <span class="command"><strong>exim</strong></span> daemon:

```bash
groupadd -g 31 exim &&
useradd -d /dev/null -c "Exim Daemon" -g exim -s /bin/false -u 31 exim
```

Configure <span class="application">Exim</span> with the following commands:

```bash
sed -e 's,^BIN_DIR.*$,BIN_DIRECTORY=/usr/sbin,'    \
    -e 's,^CONF.*$,CONFIGURE_FILE=/etc/exim.conf,' \
    -e 's,^EXIM_USER.*$,EXIM_USER=exim,'           \
    -e '/# USE_OPENSSL/s,^#,,' src/EDITME > Local/Makefile &&

printf "USE_GDBM = yes\nDBMLIB = -lgdbm\n" >> Local/Makefile
```

If you want to add <span class="application">Linux PAM</span> support, also run the following commands:

```bash
sed -i '/# SUPPORT_PAM=yes/s,^#,,' Local/Makefile
echo "EXTRALIBS=-lpam" >> Local/Makefile
```

Build <span class="application">Exim</span> with the following command:

```bash
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install                                    &&
install -v -m644 doc/exim.8 /usr/share/man/man8 &&

install -vdm 755    /usr/share/doc/exim-4.99.1 &&
cp      -Rv doc/*   /usr/share/doc/exim-4.99.1 &&

ln -sfv exim /usr/sbin/sendmail                 &&
install -v -d -m750 -o exim -g exim /var/spool/exim
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -e ... \> Local/Makefile</strong></span>: Most of <span class="application">Exim</span>'s configuration options are defined in <code class="filename">Local/Makefile</code>, which is created from the <code class="filename">src/EDITME</code> file. This command specifies the minimum set of options. Descriptions for the options are listed below.

<span class="command"><strong>printf ... \> Local/Makefile</strong></span>: Setting those variables allows to use GDBM instead of the default Berkeley DB. Remove this command if you have installed <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated).

*`BIN_DIRECTORY=/usr/sbin`*: This installs all of <span class="application">Exim</span>'s binaries and scripts in <code class="filename">/usr/sbin</code>.

*`CONFIGURE_FILE=/etc/exim.conf`*: This installs <span class="application">Exim</span>'s main configuration file in <code class="filename">/etc</code>.

*`EXIM_USER=exim`*: This tells <span class="application">Exim</span> that after the daemon no longer needs <code class="systemitem">root</code> privileges, the process needs to hand off the daemon to the <code class="systemitem">exim</code> user.

*`USE_OPENSSL`*: uncommenting <code class="option">USE_OPENSSL=yes</code> and <code class="option">USE_OPNSSL_PC=yes</code> tells the build system to use <span class="application">OpenSSL</span>, and to find the needed libraries with <span class="application">pkg-config</span>.

Uncomment <code class="option">EXIM_MONITOR</code>: This allows building the <span class="application">Exim</span> monitor program, which requires <span class="application">X Window System</span> support, and is commented out by default.

<span class="command"><strong>ln -sfv exim /usr/sbin/sendmail</strong></span>: Creates a link to <span class="command"><strong>sendmail</strong></span> for applications which need it. <span class="application">Exim</span> will accept most <span class="application">Sendmail</span> command-line options.

<span class="command"><strong>install -v -m750 -o exim -g exim /var/spool/exim</strong></span>: Since /var/spool is owned by root and this version of <span class="command"><strong>exim</strong></span> drops <code class="systemitem">root</code> privileges early, to run as user <code class="systemitem">exim</code>, it cannot create the <code class="filename">/var/spool/exim</code> directory. As a work around, it is created manually.
</div>

<div class="commands" lang="en">
## Adding Additional Functionality {#adding-additional-functionality}

To utilize some or all of the dependency packages, you'll need to modify <code class="filename">Local/Makefile</code> to include the appropriate directives and parameters to link additional libraries before you build <span class="application">Exim</span>. <code class="filename">Local/Makefile</code> is heavily commented with instructions on how to do this. Listed below is additional information to help you link these dependency packages or add additional functionality.

If you wish to build and install the <code class="filename">.info</code> documentation, refer to <a class="ulink" href="https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECTinsinfdoc">https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECTinsinfdoc</a>.

If you wish to build in Exim's interfaces for calling virus and spam scanning software directly from access control lists, uncomment the <code class="option">WITH_CONTENT_SCAN=yes</code> parameter and review the information found at <a class="ulink" href="https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch45.md">https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch45.html</a>.

To use a backend database other than <span class="application">GDBM</span>, see the instructions at <a class="ulink" href="https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECTdb">https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECTdb</a>.

For SSL functionality, see the instructions at <a class="ulink" href="https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECTinctlsssl">https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECTinctlsssl</a> and <a class="ulink" href="https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch42.md">https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch42.html</a>.

For <span class="application">tcpwrappers</span> functionality, see the instructions at <a class="ulink" href="https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECID27">https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECID27</a>.

For information about adding authentication mechanisms to the build, see chapters 33—41 of <a class="ulink" href="https://exim.org/exim-html-4.99.1/doc/html/spec_html/index.md">https://exim.org/exim-html-4.99.1/doc/html/spec_html/index.html</a>.

For information about linking <span class="application">Linux-PAM</span>, refer to the instructions <a class="ulink" href="https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch11.md#SECTexpcond">https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch11.md#SECTexpcond</a>.

For information about linking database engine libraries used for <span class="application">Exim</span> name lookups, see the instructions at <a class="ulink" href="https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch09.md">https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch09.html</a>.

If you wish to add <span class="application">Readline</span> support to <span class="application">Exim</span> when invoked in <span class="quote">“<span class="quote">test expansion</span>”</span> (<code class="option">-be</code>) mode, see the information in the <code class="option">-be</code> section of <a class="ulink" href="https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch05.md#id2525974">https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch05.md#id2525974</a>.

You may wish to modify the default configuration and send log files to syslog instead of the default <code class="filename">/var/spool/exim/log</code> directory. See the information at <a class="ulink" href="https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch-log_files.md">https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch-log_files.html</a>.

A wealth of information can be also found at the <a class="ulink" href="https://github.com/Exim/exim/wiki">Exim Wiki</a>.
</div>

<div class="configuration" lang="en">
## Configuring Exim {#configuring-exim}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/exim.conf</code> and <code class="filename">/etc/aliases</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Review the file <code class="filename">/etc/exim.conf</code>, and modify any settings to suit your needs. Note that the default configuration assumes that the <code class="filename">/var/mail</code> directory is world writable, but has the sticky bit set. If you want to use the default configuration, issue as the <code class="systemitem">root</code> user:

```bash
chmod -v a+wt /var/mail
```

A default (nothing but comments) <code class="filename">/etc/aliases</code> file is installed during the package installation if this file did not exist on your system. Create the necessary aliases and start the <span class="application">Exim</span> daemon using the following commands:

```bash
cat >> /etc/aliases << "EOF"
postmaster: root
MAILER-DAEMON: root
EOF
/usr/sbin/exim -bd -q15m
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

To protect an existing <code class="filename">/etc/aliases</code> file, the command above appends these aliases to it. This file should be checked and duplicate aliases removed, if present.
</div>

The <span class="command"><strong>/usr/sbin/exim -bd -q15m</strong></span> command starts the <span class="application">Exim</span> daemon with a 15 minute interval in processing the mail queue. Adjust this parameter to suit your desires.
</div>

<div class="sect3" lang="en">
### Linux PAM Configuration {#linux-pam-configuration}

If you have built <span class="application">Exim</span> with <span class="application">Linux PAM</span> support, you need to create a <span class="application">PAM</span> configuration file to get it working correctly with BLFS.

Issue the following command as the <code class="systemitem">root</code> user to create the configuration file for <span class="application">Linux PAM</span>:

```bash
cat > /etc/pam.d/exim << "EOF"
# Begin /etc/pam.d/exim

auth    include system-auth
account include system-account
session include system-session

# End /etc/pam.d/exim
EOF
```
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To automatically start <span class="command"><strong>exim</strong></span> at boot, install the <span class="phrase"><code class="filename">exim.service</code> unit</span> included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package:

```bash
make install-exim
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">exicyclog, exigrep, exim, exim-4.99.1-2, exim_checkaccess, exim_dbmbuild, exim_dumpdb, exim_fixdb, exim_id_update, exim_lock, exim_msgdate, exim_tidydb, eximstats, exinext, exipick, exiqgrep, exiqsumm, exiwhat, and optionally, eximon, eximon.bin, and sendmail (symlink)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/doc/exim-4.99.1 and /var/spool/exim</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="exicyclog"></a><span class="command"><span class="term"><strong>exicyclog</strong></span></span>                  cycles <span class="application">Exim</span> log files
  <a id="exigrep"></a><span class="command"><span class="term"><strong>exigrep</strong></span></span>                      searches <span class="application">Exim</span> log files
  <a id="exim-prog"></a><span class="command"><span class="term"><strong>exim</strong></span></span>                       is a symlink to the <span class="command"><strong>exim-4.99.1-2</strong></span> MTA daemon
  <a id="exim-current_version"></a><span class="command"><span class="term"><strong>exim-4.99.1-2</strong></span></span>   is the <span class="application">Exim</span> mail transport agent daemon
  <a id="exim_checkaccess"></a><span class="command"><span class="term"><strong>exim_checkaccess</strong></span></span>    states whether a given recipient address from a given host is acceptable or not
  <a id="exim_dbmbuild"></a><span class="command"><span class="term"><strong>exim_dbmbuild</strong></span></span>          creates and rebuilds <span class="application">Exim</span> databases
  <a id="exim_dumpdb"></a><span class="command"><span class="term"><strong>exim_dumpdb</strong></span></span>              writes the contents of <span class="application">Exim</span> databases to the standard output
  <a id="exim_fixdb"></a><span class="command"><span class="term"><strong>exim_fixdb</strong></span></span>                modifies data in <span class="application">Exim</span> databases
  <a id="exim_update_id"></a><span class="command"><span class="term"><strong>exim_update_id</strong></span></span>        upgrades and downgrades Exim message-id formats in spool files
  <a id="exim_lock"></a><span class="command"><span class="term"><strong>exim_lock</strong></span></span>                  locks a mailbox file
  <a id="exim_msgdate"></a><span class="command"><span class="term"><strong>exim_msgdate</strong></span></span>            converts an Exim message-id to a human readable form
  <a id="exim_tidydb"></a><span class="command"><span class="term"><strong>exim_tidydb</strong></span></span>              removes old records from <span class="application">Exim</span> databases
  <a id="eximstats"></a><span class="command"><span class="term"><strong>eximstats</strong></span></span>                  generates mail statistics from <span class="application">Exim</span> log files
  <a id="exinext"></a><span class="command"><span class="term"><strong>exinext</strong></span></span>                      queries remote host retry times
  <a id="exipick"></a><span class="command"><span class="term"><strong>exipick</strong></span></span>                      selects messages based on various criteria
  <a id="exiqgrep"></a><span class="command"><span class="term"><strong>exiqgrep</strong></span></span>                    is a utility for selective queue listing
  <a id="exiqsumm"></a><span class="command"><span class="term"><strong>exiqsumm</strong></span></span>                    produces a summary of the messages in the mail queue
  <a id="exiwhat"></a><span class="command"><span class="term"><strong>exiwhat</strong></span></span>                      queries running <span class="application">Exim</span> processes
  <a id="eximon"></a><span class="command"><span class="term"><strong>eximon</strong></span></span>                        is a start-up shell script for <span class="command"><strong>eximon.bin</strong></span> used to set the required environment variables before running the program
  <a id="eximon.bin"></a><span class="command"><span class="term"><strong>eximon.bin</strong></span></span>                is a monitor program which displays current information in an <span class="application">X</span> window, and also contains a menu interface to <span class="application">Exim</span>'s command line administration options
  ----------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](dovecot.md "Dovecot-2.4.2")

    Dovecot-2.4.2

-   [Next](postfix.md "Postfix-3.11.3")

    Postfix-3.11.3

-   [Up](mail.md "Chapter 21. Mail Server Software")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
