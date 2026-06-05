::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 21. Mail Server Software

-   [Prev](mail.md "Mail Server Software"){accesskey="p"}

    Mail Server Software

-   [Next](exim.md "Exim-4.99.1"){accesskey="n"}

    Exim-4.99.1

-   [Up](mail.md "Chapter 21. Mail Server Software"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dovecot}Dovecot-2.4.2 {#dovecot-2.4.2 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Dovecot {#introduction-to-dovecot .sect2}

[Dovecot]{.application} is an Internet Message Access Protocol (IMAP) and Post Office Protocol (POP) server, written primarily with security in mind. [Dovecot]{.application} aims to be lightweight, fast and easy to set up as well as highly configurable and easily extensible with plugins.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.dovecot.org/releases/2.4/dovecot-2.4.2.tar.gz](https://www.dovecot.org/releases/2.4/dovecot-2.4.2.tar.gz){.ulink}

-   Download MD5 sum: 5c32d194129424b2dd92b864e4c8e16a

-   Download size: 7.5 MB

-   Estimated disk space required: 253 MB

-   Estimated build time: 4.8 SBU
:::

### Dovecot Dependencies

#### Required

[libtirpc-1.3.7](../basicnet/libtirpc.md "libtirpc-1.3.7"){.xref} and [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}

#### Optional

[Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref}, [ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [libcap-2.78 with PAM](../postlfs/libcap.md "libcap-2.78 with PAM"){.xref}, [libunwind-1.8.3](../general/libunwind.md "libunwind-1.8.3"){.xref}, [Lua-5.4.8](../general/lua.md "Lua-5.4.8"){.xref}, [MariaDB-12.3.2](mariadb.md "MariaDB-12.3.2"){.xref} or [MySQL](https://www.mysql.com/){.ulink}, [OpenLDAP-2.6.13](openldap.md "OpenLDAP-2.6.13"){.xref}, [PostgreSQL-18.4](postgresql.md "PostgreSQL-18.4"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [xapian-2.0.0](../general/xapian.md "Xapian-2.0.0"){.xref}, [xfsprogs-7.0.1](../postlfs/xfsprogs.md "xfsprogs-7.0.1"){.xref}, [Cassandra](https://cassandra.apache.org/){.ulink}, [stemmer](https://github.com/shibukawa/snowball_py){.ulink} and [libsodium](https://libsodium.gitbook.io/doc/){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of Dovecot {#installation-of-dovecot .sect2}

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

There are significant changes in the configuration of this package that are required when updating to Dovecot 2.4.0. Please review the documentation at [Dovecot Upgrade Guide](https://doc.dovecot.org/2.4.0/installation/upgrade/2.3-to-2.4.md){.ulink} before continuing if you are upgrading this package from a previous version.
:::

There should be dedicated users and groups for unprivileged Dovecot processes and for processing users' logins. Issue the following commands as the `root`{.systemitem} user:

``` root
groupadd -g 42 dovecot &&
useradd -c "Dovecot unprivileged user" -d /dev/null -u 42 \
        -g dovecot -s /bin/false dovecot &&
groupadd -g 43 dovenull &&
useradd -c "Dovecot login user" -d /dev/null -u 43 \
        -g dovenull -s /bin/false dovenull
```

Install [Dovecot]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                          \
            --sysconfdir=/etc                      \
            --localstatedir=/var                   \
            --docdir=/usr/share/doc/dovecot-2.4.2  \
            --disable-static                       &&
make
```

To test the results, issue [**make -k check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--with-ldap`{.option}: This switch enables [OpenLDAP]{.application} authentication support.

`--with-pgsql`{.option}: This switch enables [PostgreSQL]{.application} database support.

`--with-mysql`{.option}: This switch enables [MySQL]{.application} database support.

`--with-sqlite`{.option}: This switch enables [SQLite]{.application} database support.

`--with-lua=no`{.option}: This switch enables [Lua]{.application} plugin support. This includes a mail and push notification plugin.
:::

:::::: {.configuration lang="en"}
## Configuring Dovecot {#configuring-dovecot .sect2}

::: {.sect3 lang="en"}
### []{#dovecot-config}Config Files {#config-files .sect3}

`/etc/dovecot/dovecot.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The following configuration is a simple proof of concept with IMAP service using local users for authentication and mailbox location.

``` root
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

The above configuration also requires a configuration file to be installed for Linux-PAM so dovecot can authenticate users. Issue the following command as the `root`{.systemitem} user to create the configuration file for Linux-PAM:

``` root
cat > /etc/pam.d/dovecot << "EOF"
# Begin /etc/pam.d/dovecot

auth     include system-auth
account  include system-account
password include system-password

# End /etc/pam.d/dovecot
EOF
```

You will definitely want to read the official documentation at [https://doc.dovecot.org/2.4.2/](https://doc.dovecot.org/2.4.2/){.ulink} if you plan to use [Dovecot]{.application} in a production environment.
:::

::: {.sect3 lang="en"}
### []{#dovecot-init} Systemd Unit {#systemd-unit .sect3}

To start the [**dovecot**]{.command} daemon at boot, enable the previously installed systemd unit with the following command:

``` root
systemctl enable dovecot
```
:::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [doveadm, doveconf, dovecot, and dovecot-sysreport]{.segbody}
:::

::: seg
**Installed Libraries:** [various internal plugins in `/usr/lib/dovecot`{.filename}]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/dovecot, /usr/{include,lib,libexec,share}/dovecot and /usr/share/doc/dovecot-2.4.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------
  []{#doveadm}[[**doveadm**]{.command}]{.term}                       is the [Dovecot]{.application} administration tool
  []{#doveconf}[[**doveconf**]{.command}]{.term}                     is [Dovecot]{.application}'s configuration dumping utility
  []{#dovecot-prog}[[**dovecot**]{.command}]{.term}                  is the IMAP and POP server
  []{#dovecot-sysreport}[[**dovecot-sysreport**]{.command}]{.term}   prints system information that is useful to the Dovecot developers when submitting bug reports upstream
  ------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](mail.md "Mail Server Software"){accesskey="p"}

    Mail Server Software

-   [Next](exim.md "Exim-4.99.1"){accesskey="n"}

    Exim-4.99.1

-   [Up](mail.md "Chapter 21. Mail Server Software"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
