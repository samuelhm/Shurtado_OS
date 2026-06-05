::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 21. Mail Server Software

-   [Prev](dovecot.md "Dovecot-2.4.2"){accesskey="p"}

    Dovecot-2.4.2

-   [Next](postfix.md "Postfix-3.11.3"){accesskey="n"}

    Postfix-3.11.3

-   [Up](mail.md "Chapter 21. Mail Server Software"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#exim}Exim-4.99.1 {#exim-4.99.1 .sect1}

::::::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Exim {#introduction-to-exim .sect2}

The [Exim]{.application} package contains a Mail Transport Agent written by the University of Cambridge, released under the GNU Public License.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftp.exim.org/pub/exim/exim4/exim-4.99.1.tar.xz](https://ftp.exim.org/pub/exim/exim4/exim-4.99.1.tar.xz){.ulink}

-   Download MD5 sum: 281df763c79f1d68cb4f9ee9c9d8a2e1

-   Download size: 1.9 MB

-   Estimated disk space required: 17 MB

-   Estimated build time: 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Additional formats of the documentation (text-based docs are shipped with the sources) can be downloaded by following the links shown at [https://exim.org/docs.html](https://exim.org/docs.md){.ulink}.
:::

### Exim Dependencies

#### Required

[libnsl-2.0.1](../basicnet/libnsl.md "libnsl-2.0.1"){.xref} and [File-FcntlLock-0.22](../general/perl-modules.md#perl-file-fcntllock "File::FcntlLock-0.22"){.xref}

#### Optional

[TDB](https://sourceforge.net/projects/tdb){.ulink} (alternative to GDBM, built in LFS), [Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref}, [libidn-1.43](../general/libidn.md "libidn-1.43"){.xref}, [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, [MariaDB-12.3.2](mariadb.md "MariaDB-12.3.2"){.xref} or [MySQL](https://www.mysql.com/){.ulink}, [OpenLDAP-2.6.13](openldap.md "OpenLDAP-2.6.13"){.xref}, [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [PostgreSQL-18.4](postgresql.md "PostgreSQL-18.4"){.xref}, [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}, [Heimdal GSSAPI](https://github.com/heimdal/heimdal){.ulink}, [libspf2](https://github.com/shevek/libspf2/){.ulink}, and [OpenDMARC](http://www.trusteddomain.org/opendmarc/){.ulink}
::::::

::: {.installation lang="en"}
## Installation of Exim {#installation-of-exim .sect2}

Before building [Exim]{.application}, as the `root`{.systemitem} user you should create the group and user `exim`{.systemitem} which will run the [**exim**]{.command} daemon:

``` root
groupadd -g 31 exim &&
useradd -d /dev/null -c "Exim Daemon" -g exim -s /bin/false -u 31 exim
```

Configure [Exim]{.application} with the following commands:

``` userinput
sed -e 's,^BIN_DIR.*$,BIN_DIRECTORY=/usr/sbin,'    \
    -e 's,^CONF.*$,CONFIGURE_FILE=/etc/exim.conf,' \
    -e 's,^EXIM_USER.*$,EXIM_USER=exim,'           \
    -e '/# USE_OPENSSL/s,^#,,' src/EDITME > Local/Makefile &&

printf "USE_GDBM = yes\nDBMLIB = -lgdbm\n" >> Local/Makefile
```

If you want to add [Linux PAM]{.application} support, also run the following commands:

``` userinput
sed -i '/# SUPPORT_PAM=yes/s,^#,,' Local/Makefile
echo "EXTRALIBS=-lpam" >> Local/Makefile
```

Build [Exim]{.application} with the following command:

``` userinput
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install                                    &&
install -v -m644 doc/exim.8 /usr/share/man/man8 &&

install -vdm 755    /usr/share/doc/exim-4.99.1 &&
cp      -Rv doc/*   /usr/share/doc/exim-4.99.1 &&

ln -sfv exim /usr/sbin/sendmail                 &&
install -v -d -m750 -o exim -g exim /var/spool/exim
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -e ... \> Local/Makefile**]{.command}: Most of [Exim]{.application}'s configuration options are defined in `Local/Makefile`{.filename}, which is created from the `src/EDITME`{.filename} file. This command specifies the minimum set of options. Descriptions for the options are listed below.

[**printf ... \> Local/Makefile**]{.command}: Setting those variables allows to use GDBM instead of the default Berkeley DB. Remove this command if you have installed [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated).

*`BIN_DIRECTORY=/usr/sbin`*: This installs all of [Exim]{.application}'s binaries and scripts in `/usr/sbin`{.filename}.

*`CONFIGURE_FILE=/etc/exim.conf`*: This installs [Exim]{.application}'s main configuration file in `/etc`{.filename}.

*`EXIM_USER=exim`*: This tells [Exim]{.application} that after the daemon no longer needs `root`{.systemitem} privileges, the process needs to hand off the daemon to the `exim`{.systemitem} user.

*`USE_OPENSSL`*: uncommenting `USE_OPENSSL=yes`{.option} and `USE_OPNSSL_PC=yes`{.option} tells the build system to use [OpenSSL]{.application}, and to find the needed libraries with [pkg-config]{.application}.

Uncomment `EXIM_MONITOR`{.option}: This allows building the [Exim]{.application} monitor program, which requires [X Window System]{.application} support, and is commented out by default.

[**ln -sfv exim /usr/sbin/sendmail**]{.command}: Creates a link to [**sendmail**]{.command} for applications which need it. [Exim]{.application} will accept most [Sendmail]{.application} command-line options.

[**install -v -m750 -o exim -g exim /var/spool/exim**]{.command}: Since /var/spool is owned by root and this version of [**exim**]{.command} drops `root`{.systemitem} privileges early, to run as user `exim`{.systemitem}, it cannot create the `/var/spool/exim`{.filename} directory. As a work around, it is created manually.
:::

::: {.commands lang="en"}
## Adding Additional Functionality {#adding-additional-functionality .sect2}

To utilize some or all of the dependency packages, you'll need to modify `Local/Makefile`{.filename} to include the appropriate directives and parameters to link additional libraries before you build [Exim]{.application}. `Local/Makefile`{.filename} is heavily commented with instructions on how to do this. Listed below is additional information to help you link these dependency packages or add additional functionality.

If you wish to build and install the `.info`{.filename} documentation, refer to [https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECTinsinfdoc](https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECTinsinfdoc){.ulink}.

If you wish to build in Exim's interfaces for calling virus and spam scanning software directly from access control lists, uncomment the `WITH_CONTENT_SCAN=yes`{.option} parameter and review the information found at [https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch45.html](https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch45.md){.ulink}.

To use a backend database other than [GDBM]{.application}, see the instructions at [https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECTdb](https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECTdb){.ulink}.

For SSL functionality, see the instructions at [https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECTinctlsssl](https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECTinctlsssl){.ulink} and [https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch42.html](https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch42.md){.ulink}.

For [tcpwrappers]{.application} functionality, see the instructions at [https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECID27](https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch04.md#SECID27){.ulink}.

For information about adding authentication mechanisms to the build, see chapters 33—41 of [https://exim.org/exim-html-4.99.1/doc/html/spec_html/index.html](https://exim.org/exim-html-4.99.1/doc/html/spec_html/index.md){.ulink}.

For information about linking [Linux-PAM]{.application}, refer to the instructions [https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch11.md#SECTexpcond](https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch11.md#SECTexpcond){.ulink}.

For information about linking database engine libraries used for [Exim]{.application} name lookups, see the instructions at [https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch09.html](https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch09.md){.ulink}.

If you wish to add [Readline]{.application} support to [Exim]{.application} when invoked in [“[test expansion]{.quote}”]{.quote} (`-be`{.option}) mode, see the information in the `-be`{.option} section of [https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch05.md#id2525974](https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch05.md#id2525974){.ulink}.

You may wish to modify the default configuration and send log files to syslog instead of the default `/var/spool/exim/log`{.filename} directory. See the information at [https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch-log_files.html](https://exim.org/exim-html-4.99.1/doc/html/spec_html/ch-log_files.md){.ulink}.

A wealth of information can be also found at the [Exim Wiki](https://github.com/Exim/exim/wiki){.ulink}.
:::

:::::::: {.configuration lang="en"}
## Configuring Exim {#configuring-exim .sect2}

::: {.sect3 lang="en"}
### []{#exim-config}Config Files {#config-files .sect3}

`/etc/exim.conf`{.filename} and `/etc/aliases`{.filename}
:::

:::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Review the file `/etc/exim.conf`{.filename}, and modify any settings to suit your needs. Note that the default configuration assumes that the `/var/mail`{.filename} directory is world writable, but has the sticky bit set. If you want to use the default configuration, issue as the `root`{.systemitem} user:

``` root
chmod -v a+wt /var/mail
```

A default (nothing but comments) `/etc/aliases`{.filename} file is installed during the package installation if this file did not exist on your system. Create the necessary aliases and start the [Exim]{.application} daemon using the following commands:

``` root
cat >> /etc/aliases << "EOF"
postmaster: root
MAILER-DAEMON: root
EOF
/usr/sbin/exim -bd -q15m
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

To protect an existing `/etc/aliases`{.filename} file, the command above appends these aliases to it. This file should be checked and duplicate aliases removed, if present.
:::

The [**/usr/sbin/exim -bd -q15m**]{.command} command starts the [Exim]{.application} daemon with a 15 minute interval in processing the mail queue. Adjust this parameter to suit your desires.
::::

::: {.sect3 lang="en"}
### Linux PAM Configuration {#linux-pam-configuration .sect3}

If you have built [Exim]{.application} with [Linux PAM]{.application} support, you need to create a [PAM]{.application} configuration file to get it working correctly with BLFS.

Issue the following command as the `root`{.systemitem} user to create the configuration file for [Linux PAM]{.application}:

``` root
cat > /etc/pam.d/exim << "EOF"
# Begin /etc/pam.d/exim

auth    include system-auth
account include system-account
session include system-session

# End /etc/pam.d/exim
EOF
```
:::

::: {.sect3 lang="en"}
### []{#exim-init} Systemd Unit {#systemd-unit .sect3}

To automatically start [**exim**]{.command} at boot, install the [`exim.service`{.filename} unit]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package:

``` root
make install-exim
```
:::
::::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [exicyclog, exigrep, exim, exim-4.99.1-2, exim_checkaccess, exim_dbmbuild, exim_dumpdb, exim_fixdb, exim_id_update, exim_lock, exim_msgdate, exim_tidydb, eximstats, exinext, exipick, exiqgrep, exiqsumm, exiwhat, and optionally, eximon, eximon.bin, and sendmail (symlink)]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/exim-4.99.1 and /var/spool/exim]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#exicyclog}[[**exicyclog**]{.command}]{.term}                  cycles [Exim]{.application} log files
  []{#exigrep}[[**exigrep**]{.command}]{.term}                      searches [Exim]{.application} log files
  []{#exim-prog}[[**exim**]{.command}]{.term}                       is a symlink to the [**exim-4.99.1-2**]{.command} MTA daemon
  []{#exim-current_version}[[**exim-4.99.1-2**]{.command}]{.term}   is the [Exim]{.application} mail transport agent daemon
  []{#exim_checkaccess}[[**exim_checkaccess**]{.command}]{.term}    states whether a given recipient address from a given host is acceptable or not
  []{#exim_dbmbuild}[[**exim_dbmbuild**]{.command}]{.term}          creates and rebuilds [Exim]{.application} databases
  []{#exim_dumpdb}[[**exim_dumpdb**]{.command}]{.term}              writes the contents of [Exim]{.application} databases to the standard output
  []{#exim_fixdb}[[**exim_fixdb**]{.command}]{.term}                modifies data in [Exim]{.application} databases
  []{#exim_update_id}[[**exim_update_id**]{.command}]{.term}        upgrades and downgrades Exim message-id formats in spool files
  []{#exim_lock}[[**exim_lock**]{.command}]{.term}                  locks a mailbox file
  []{#exim_msgdate}[[**exim_msgdate**]{.command}]{.term}            converts an Exim message-id to a human readable form
  []{#exim_tidydb}[[**exim_tidydb**]{.command}]{.term}              removes old records from [Exim]{.application} databases
  []{#eximstats}[[**eximstats**]{.command}]{.term}                  generates mail statistics from [Exim]{.application} log files
  []{#exinext}[[**exinext**]{.command}]{.term}                      queries remote host retry times
  []{#exipick}[[**exipick**]{.command}]{.term}                      selects messages based on various criteria
  []{#exiqgrep}[[**exiqgrep**]{.command}]{.term}                    is a utility for selective queue listing
  []{#exiqsumm}[[**exiqsumm**]{.command}]{.term}                    produces a summary of the messages in the mail queue
  []{#exiwhat}[[**exiwhat**]{.command}]{.term}                      queries running [Exim]{.application} processes
  []{#eximon}[[**eximon**]{.command}]{.term}                        is a start-up shell script for [**eximon.bin**]{.command} used to set the required environment variables before running the program
  []{#eximon.bin}[[**eximon.bin**]{.command}]{.term}                is a monitor program which displays current information in an [X]{.application} window, and also contains a menu interface to [Exim]{.application}'s command line administration options
  ----------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::

::: navfooter
-   [Prev](dovecot.md "Dovecot-2.4.2"){accesskey="p"}

    Dovecot-2.4.2

-   [Next](postfix.md "Postfix-3.11.3"){accesskey="n"}

    Postfix-3.11.3

-   [Up](mail.md "Chapter 21. Mail Server Software"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
