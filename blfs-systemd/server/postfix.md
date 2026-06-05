::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 21. Mail Server Software

-   [Prev](exim.md "Exim-4.99.1"){accesskey="p"}

    Exim-4.99.1

-   [Next](databases.md "Databases"){accesskey="n"}

    Databases

-   [Up](mail.md "Chapter 21. Mail Server Software"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#postfix}Postfix-3.11.3 {#postfix-3.11.3 .sect1}

::::::::::::::::::::::::::::::::::::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Postfix {#introduction-to-postfix .sect2}

The [Postfix]{.application} package contains a Mail Transport Agent (MTA). This is useful for sending email to other users of your host machine. It can also be configured to be a central mail server for your domain, a mail relay agent or simply a mail delivery agent to your local Internet Service Provider.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ghostarchive.org/postfix/postfix-release/official/postfix-3.11.3.tar.gz](https://ghostarchive.org/postfix/postfix-release/official/postfix-3.11.3.tar.gz){.ulink}

-   Download MD5 sum: a96d050f085f600ce53a8c3a72f1df76

-   Download size: 5.0 MB

-   Estimated disk space required: 171 MB (48 MB installed)

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### Postfix Dependencies

#### Recommended

[Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref}, [libnsl-2.0.1](../basicnet/libnsl.md "libnsl-2.0.1"){.xref}, and [lmdb-0.9.35](lmdb.md "lmdb-0.9.35"){.xref}

#### Optional

[ICU-78.3](../general/icu.md "icu-78.3"){.xref} for Email Address Internationalization (SMTPUTF8) support, [MariaDB-12.3.2](mariadb.md "MariaDB-12.3.2"){.xref} or [MySQL](https://www.mysql.com/){.ulink}, [OpenLDAP-2.6.13](openldap.md "OpenLDAP-2.6.13"){.xref}, [PostgreSQL-18.4](postgresql.md "PostgreSQL-18.4"){.xref}, [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated), and [CDB](https://cr.yp.to/cdb.md){.ulink} or [TinyCDB](https://www.corpit.ru/mjt/tinycdb.md){.ulink}

Note that [SQLite]{.application}, [MySQL]{.application}, [PostgreSQL]{.application} and [CDB]{.application} are only useful if there is a known need for them.

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/postfix](https://wiki.linuxfromscratch.org/blfs/wiki/postfix){.ulink}
:::::

::::::::::::::::::::::::::::::::::::::: {.installation lang="en"}
## Installation of Postfix {#installation-of-postfix .sect2}

::: {.sect3 lang="en"}
### Adding Users and Groups {#adding-users-and-groups .sect3}

Before you compile the program, you need to create users and groups that will be expected to be in place during the installation. Add the users and groups with the following commands issued by the `root`{.systemitem} user:

``` root
groupadd -g 32 postfix &&
groupadd -g 33 postdrop &&
useradd -c "Postfix Daemon User" -d /var/spool/postfix -g postfix \
        -s /bin/false -u 32 postfix &&
chown -v postfix:postfix /var/mail
```
:::

:::::::::::::::::::::::::::::::::::: {.sect3 lang="en"}
### Configuring the Build {#configuring-the-build .sect3}

The README files are formatted to be read with a pager like [less]{.application} or [more]{.application}. If you want to use a text editor, make them legible with the following sed:

``` userinput
sed -i 's/.\x08//g' README_FILES/*
```

The [Postfix]{.application} source tree does not contain a `configure`{.filename} script, rather the makefile in the top-level directory contains a `makefiles`{.option} target that regenerates all the other makefiles in the build tree. If you wish to use additional software such as a database back-end for virtual users, or TLS/SSL authentication, you will need to regenerate the makefiles using one or more of the appropriate `CCARGS`{.envar} and `AUXLIBS`{.envar} settings listed below.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

For all variants of the CCARGS you should ensure that '-DNO_NIS' is specified so that the build does not attempt to access an rpcsvc header which do not exist in BLFS. If [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated) is not installed, '-DNO_DB' needs to be specified as well.
:::

For more details read the readme files.

Initialize the `CCARGS`{.envar} and `AUXLIBS`{.envar} according to the note above:

``` userinput
CCARGS="-DNO_NIS -DNO_DB"
AUXLIBS=""
```

Next, the `CCARGS`{.envar} and the `AUXLIBS`{.envar} variables are filled with settings depending on the actual system configuration. If an optional package is installed but should [*not*]{.emphasis} be included in the [Postfix]{.application} build, simply skip the corresponding `if [ ... ]; then`{.code} scriptlets.

:::::: sect4
::::: titlepage


##### []{#idm140011159796336}Cyrus-SASL {#cyrus-sasl .title}


:::::

To use [Cyrus-SASL]{.application} with [Postfix]{.application}, use the following arguments:

``` userinput
if [ -r /usr/lib/libsasl2.so ]; then
  CCARGS="$CCARGS -DUSE_SASL_AUTH -DUSE_CYRUS_SASL -I/usr/include/sasl"
  AUXLIBS="$AUXLIBS -lsasl2"
fi
```
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011159792608}LMDB {#lmdb .title}


:::::

To use [LMDB]{.application} with [Postfix]{.application}, use the following arguments:

``` userinput
if [ -r /usr/lib/liblmdb.so ]; then
  CCARGS="$CCARGS -DHAS_LMDB"
  AUXLIBS_LMDB="-llmdb"
fi
```
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011159788768}OpenLDAP {#openldap .title}


:::::

To use [OpenLDAP]{.application} with [Postfix]{.application}, use the following arguments:

``` userinput
if [ -r /usr/lib/libldap.so -a -r /usr/lib/liblber.so ]; then
  CCARGS="$CCARGS -DHAS_LDAP"
  AUXLIBS="$AUXLIBS -lldap -llber"
fi
```
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011159784896}Sqlite {#sqlite .title}


:::::

To use [Sqlite]{.application} with [Postfix]{.application}, use the following arguments:

``` userinput
if [ -r /usr/lib/libsqlite3.so ]; then
  CCARGS="$CCARGS -DHAS_SQLITE"
  AUXLIBS="$AUXLIBS -lsqlite3 -lpthread"
fi
```
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011159781040}MySQL or MariaDB {#mysql-or-mariadb .title}


:::::

To use [MySQL]{.application} or [MariaDB]{.application} with [Postfix]{.application}, use the following arguments:

``` userinput
if [ -r /usr/lib/libmysqlclient.so ]; then
  CCARGS="$CCARGS -DHAS_MYSQL -I/usr/include/mysql"
  AUXLIBS="$AUXLIBS -lmysqlclient -lz -lm"
fi
```
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011159776432}PostgreSQL {#postgresql .title}


:::::

To use [PostgreSQL]{.application} with [Postfix]{.application}, use the following arguments:

``` userinput
if [ -r /usr/lib/libpq.so ]; then
  CCARGS="$CCARGS -DHAS_PGSQL -I/usr/include/postgresql"
  AUXLIBS="$AUXLIBS -lpq -lz -lm"
fi
```
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011159772560}CDB/TinyCDB {#cdbtinycdb .title}


:::::

To use [CDB]{.application} or [TinyCDB]{.application} with [Postfix]{.application}, use the following arguments:

``` screen
if [ -r </path/to/CDB>/libcdb.a ]; then
  CCARGS="$CCARGS -DHAS_CDB"
  AUXLIBS="$AUXLIBS </path/to/CDB>/libcdb.a"
fi
```
::::::

:::::: sect4
::::: titlepage


##### []{#idm140011159767136}StartTLS Authentication {#starttls-authentication .title}


:::::

To use [OpenSSL]{.application} with [Postfix]{.application}, use the following arguments:

``` userinput
if [ -r /usr/lib/libssl.so -a -r /usr/lib/libcrypto.so ]; then
  CCARGS="$CCARGS -DUSE_TLS -I/usr/include/openssl/"
  AUXLIBS="$AUXLIBS -lssl -lcrypto"
fi
```

[OpenSSL]{.application} is installed by LFS so it should be always there. The `if ... then`{.code} is here just for consistency.
::::::
::::::::::::::::::::::::::::::::::::

::: {.sect3 lang="en"}
### Installing Postfix {#installing-postfix .sect3}

There might be duplicate settings in `AUXLIBS`{.envar} like `-lm`{.code} when both, [MariaDB]{.application} and [PostgreSQL]{.application} are used. They do not harm. Install [Postfix]{.application} by running the following commands:

``` userinput
make makefiles                    \
     CCARGS="$CCARGS"             \
     AUXLIBS="$AUXLIBS"           \
     AUXLIBS_LMDB="$AUXLIBS_LMDB" \
     default_database_type=lmdb   \
     default_cache_db_type=lmdb   &&
make
```

This package does not come with a useful test suite.

Now, as the `root`{.systemitem} user:

``` root
sh postfix-install -non-interactive  \
   daemon_directory=/usr/lib/postfix \
   manpage_directory=/usr/share/man  \
   html_directory=/usr/share/doc/postfix-3.11.3/html \
   readme_directory=/usr/share/doc/postfix-3.11.3/readme
```
:::
:::::::::::::::::::::::::::::::::::::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**make makefiles**]{.command}: This command rebuilds the makefiles throughout the source tree to use the options contained in the `CCARGS`{.envar} and `AUXLIBS`{.envar} variables.

[**sh postfix-install -non-interactive**]{.command}: This keeps the install script from asking any questions, thereby accepting default destination directories in all but the few cases. If the `html_directory`{.option} and `readme_directory`{.option} options are not set then the documentation will not be installed.

`CCARGS="-DNO_EAI ..."`{.option}: This will turn off SMTPUTF8 support, for example if the rest of your email address infrastructure cannot handle UTF-8 email addresses and message header values.

`default_database_type=lmdb`{.option}: Postfix no longer specifies a default database type. It must be specified when creating the makefiles.

`default_cache_db_type=lmdb`{.option}: Postfix no longer specifies a default cache type. It must be specified when creating the makefiles.
:::

:::::::: {.configuration lang="en"}
## Configuring Postfix {#configuring-postfix .sect2}

::: {.sect3 lang="en"}
### []{#postfix-config}Config Files {#config-files .sect3}

`/etc/aliases`{.filename}, `/etc/postfix/main.cf`{.filename}, and `/etc/postfix/master.cf`{.filename}
:::

::::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Create (or append to an existing) `/etc/aliases`{.filename} with the following command. Change *`<LOGIN>`* to your non-root login identity so mail addressed to `root`{.systemitem} can be forwarded to you. As the `root`{.systemitem} user:

``` root
cat >> /etc/aliases << "EOF"
# Begin /etc/aliases

MAILER-DAEMON:    postmaster
postmaster:       root

root:             <LOGIN>
# End /etc/aliases
EOF
```

To protect an existing `/etc/aliases`{.filename} file, the above command appends these aliases to it if it exists. This file should be checked and duplicate aliases removed if present.

The BLFS editors recommend to use LMDB for Postfix tables. Add three lines into `/etc/postfix/main.cf`{.filename} to make [**postmap**]{.command} encode the lookup tables in the LMDB format by default and to change the default hash setting of the alias tables:

``` root
echo 'default_database_type = lmdb'       >> /etc/postfix/main.cf &&
echo 'alias_database = lmdb:/etc/aliases' >> /etc/postfix/main.cf &&
echo 'alias_maps = lmdb:/etc/aliases'     >> /etc/postfix/main.cf
```

To protect your server against the recent SMTP smuggling attacks, additional steps are required. Add two lines into `/etc/postfix/main.cf`{.filename} to disconnect remote SMTP clients that send bare newlines in the DATA section, while also allowing clients on your network with non-standard SMTP implementations to still send mail:

``` root
echo 'smtpd_forbid_bare_newline = normalize' >> /etc/postfix/main.cf &&
echo 'smtpd_forbid_bare_newline_exclusions = $mynetworks' >> /etc/postfix/main.cf
```

Note that if you are following an online tutorial to configure Postfix, the tutorial may refer to a lookup table with `hash:/path/to/lookup_table`{.literal}. You should replace `hash`{.literal} with `lmdb`{.literal} in order to use a lookup table encoded in the LMDB format.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The `/etc/postfix/main.cf`{.filename} and `/etc/postfix/master.cf`{.filename} files must be personalized for your system. The `main.cf`{.filename} file needs your fully qualified hostname. You will find that `main.cf`{.filename} is self documenting, so load it into your editor to make the changes you need for your situation.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[Postfix]{.application} can also be set up to run in a chroot jail. See the file in the source `examples/chroot-setup/LINUX2`{.filename} for details.
:::

To ensure that all permissions are set properly, [postfix]{.application} provides a tool which is to be run as the `root`{.systemitem} user:

``` userinput
/usr/sbin/postfix -c /etc/postfix set-permissions
```

If you have an existing configuration, you can run the [**postfix**]{.command} utility to add any necessary definitions to your existing files. As the `root`{.systemitem} user:

``` userinput
/usr/sbin/postfix upgrade-configuration
```

Before starting [Postfix]{.application}, you should check that your configuration and file permissions will work properly. Run the following commands as the `root`{.systemitem} user to check and start your [Postfix]{.application} server:

``` userinput
/usr/sbin/postfix check &&
/usr/sbin/postfix start
```
:::::

::: {.sect3 lang="en"}
### []{#postfix-init} Systemd Unit {#systemd-unit .sect3}

To automate the running of Postfix at startup, install the [`postfix.service`{.filename} unit]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package:

``` root
make install-postfix
```
:::
::::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [mailq (symlink), newaliases (symlink), postalias, postcat, postconf, postdrop, postfix, postkick, postlock, postlog, postmap, postmulti, postqueue, postsuper, and sendmail]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/{etc,usr/lib}/postfix, /usr/share/doc/postfix-3.11.3 and /var/{lib,spool}/postfix]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#mailq}[[**mailq**]{.command}]{.term}                 A symlink to `sendmail`{.filename}
  []{#newaliases}[[**newaliases**]{.command}]{.term}       A symlink to `sendmail`{.filename}
  []{#postalias}[[**postalias**]{.command}]{.term}         is a utility for [Postfix]{.application} alias database maintenance
  []{#postcat}[[**postcat**]{.command}]{.term}             Prints the contents of files from the [Postfix]{.application} queue in human readable format
  []{#postconf}[[**postconf**]{.command}]{.term}           Displays or changes the value of [Postfix]{.application} configuration parameters
  []{#postdrop}[[**postdrop**]{.command}]{.term}           Creates a file in the maildrop directory and copies its standard input to the file
  []{#postfix-bin}[[**postfix**]{.command}]{.term}         is the [Postfix]{.application} control program
  []{#postkick}[[**postkick**]{.command}]{.term}           Sends requests to the specified service over a local transport channel
  []{#postlock}[[**postlock**]{.command}]{.term}           Locks a mail folder for exclusive use, and executes commands passed to it
  []{#postlog}[[**postlog**]{.command}]{.term}             A [Postfix]{.application}-compatible logging interface for use in, for example, shell scripts
  []{#postmap}[[**postmap**]{.command}]{.term}             Creates or queries one or more Postfix lookup tables, or updates an existing one
  []{#postmulti}[[**postmulti**]{.command}]{.term}         is the [Postfix]{.application} multi-instance manager. It allows a system administrator to manage multiple [Postfix]{.application} instances on a single host
  []{#postqueue}[[**postqueue**]{.command}]{.term}         The [Postfix]{.application} user interface for queue management
  []{#postsuper}[[**postsuper**]{.command}]{.term}         The [Postfix]{.application} user interface for superuser queue management
  []{#sendmail-postfix}[[**sendmail**]{.command}]{.term}   is the [Postfix]{.application} to [Sendmail]{.application} compatibility interface
  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](exim.md "Exim-4.99.1"){accesskey="p"}

    Exim-4.99.1

-   [Next](databases.md "Databases"){accesskey="n"}

    Databases

-   [Up](mail.md "Chapter 21. Mail Server Software"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
