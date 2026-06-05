::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](cryptsetup.md "cryptsetup-2.8.6"){accesskey="p"}

    cryptsetup-2.8.6

-   [Next](gnupg.md "GnuPG-2.5.20"){accesskey="n"}

    GnuPG-2.5.20

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#cyrus-sasl}Cyrus SASL-2.1.28 {#cyrus-sasl-2.1.28 .sect1}

:::::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Cyrus SASL {#introduction-to-cyrus-sasl .sect2}

The [Cyrus SASL]{.application} package contains a Simple Authentication and Security Layer implementation, a method for adding authentication support to connection-based protocols. To use SASL, a protocol includes a command for identifying and authenticating a user to a server and for optionally negotiating protection of subsequent protocol interactions. If its use is negotiated, a security layer is inserted between the protocol and the connection.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/cyrusimap/cyrus-sasl/releases/download/cyrus-sasl-2.1.28/cyrus-sasl-2.1.28.tar.gz](https://github.com/cyrusimap/cyrus-sasl/releases/download/cyrus-sasl-2.1.28/cyrus-sasl-2.1.28.tar.gz){.ulink}

-   Download MD5 sum: 6f228a692516f5318a64505b46966cfa

-   Download size: 3.9 MB

-   Estimated disk space required: 28 MB

-   Estimated build time: 0.2 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/cyrus-sasl-2.1.28-gcc15_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/cyrus-sasl-2.1.28-gcc15_fixes-1.patch){.ulink}
:::

### Cyrus SASL Dependencies

#### Recommended

[lmdb-0.9.35](../server/lmdb.md "lmdb-0.9.35"){.xref}

#### Optional

[Linux-PAM-1.7.2](linux-pam.md "Linux-PAM-1.7.2"){.xref}, [MIT Kerberos V5-1.22.2](mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [MariaDB-12.3.2](../server/mariadb.md "MariaDB-12.3.2"){.xref} or [MySQL](https://www.mysql.com/){.ulink}, [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}, [PostgreSQL-18.4](../server/postgresql.md "PostgreSQL-18.4"){.xref}, [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref} (needed for regenerating the documentation), [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated), [krb4](https://stuff.mit.edu/afs/net.mit.edu/project/attic/krb4/){.ulink}, [Dmalloc](https://dmalloc.com/){.ulink}, and [Pod::POM::View::Restructured](https://metacpan.org/pod/Pod::POM::View::Restructured){.ulink} (needed for regenerating the documentation)
::::::

:::: {.installation lang="en"}
## Installation of Cyrus SASL {#installation-of-cyrus-sasl .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package does not support parallel build.
:::

First, fix the package to be compatible with gcc-15:

``` userinput
patch -Np1 -i ../cyrus-sasl-2.1.28-gcc15_fixes-1.patch &&
autoreconf -fiv
```

Also, fix a problem revealed by gcc-14 and later:

``` userinput
sed '/saslint/a #include <time.h>'       -i lib/saslutil.c &&
sed '/plugin_common/a #include <time.h>' -i plugins/cram.c
```

Install [Cyrus SASL]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                       \
            --sysconfdir=/etc                   \
            --enable-auth-sasldb                \
            --with-dblib=lmdb                   \
            --with-dbpath=/var/lib/sasl/sasldb2 \
            --with-sphinx-build=no              \
            --with-saslauthd=/var/run/saslauthd &&
make -j1
```

This package does not come with a test suite. If you are planning on using the GSSAPI authentication mechanism, test it after installing the package using the sample server and client programs which were built in the preceding step. Instructions for performing the tests can be found at [https://www.linuxfromscratch.org/hints/downloads/files/cyrus-sasl.txt](https://www.linuxfromscratch.org/hints/downloads/files/cyrus-sasl.txt){.ulink}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -dm755                          /usr/share/doc/cyrus-sasl-2.1.28/html &&
install -v -m644  saslauthd/LDAP_SASLAUTHD /usr/share/doc/cyrus-sasl-2.1.28      &&
install -v -m644  doc/legacy/*.md        /usr/share/doc/cyrus-sasl-2.1.28/html &&
install -v -dm700 /var/lib/sasl
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-dbpath=/var/lib/sasl/sasldb2`*: This switch forces the [**sasldb**]{.command} database to be created in `/var/lib/sasl`{.filename} instead of `/etc`{.filename}.

*`--with-saslauthd=/var/run/saslauthd`*: This switch forces [**saslauthd**]{.command} to use the FHS compliant directory `/var/run/saslauthd`{.filename} for variable run-time data.

*`--enable-auth-sasldb`*: This switch enables the SASLDB authentication backend.

`--with-dblib=gdbm`{.option}: This switch forces [GDBM]{.application} to be used instead of [LMDB]{.application}. Use this if you have not installed [LMDB]{.application}.

`--with-ldap`{.option}: This switch enables LDAP support through [OpenLDAP]{.application}.

`--enable-ldapdb`{.option}: This switch enables the LDAPDB authentication backend.

`--enable-login`{.option}: This option enables the unsupported LOGIN authentication method. Do not use it unless you have a specific reason to do so as it is insecure by nature.

`--enable-ntlm`{.option}: This option enables the unsupported NTLM authentication method. Do not use it unless you have a specific reason to do so as it is insecure by nature, and the protocol has been phased out from the latest versions of Windows.

[**install -v -m644 ...**]{.command}: These commands install additional documentation which is not installed by the [**make install**]{.command} command.

[**install -v -m700 -d /var/lib/sasl**]{.command}: This directory must exist when starting [**saslauthd**]{.command} or using the sasldb plugin. If you're not going to be running the daemon or using the plugins, you may omit the creation of this directory.
:::

::::::: {.configuration lang="en"}
## Configuring Cyrus SASL {#configuring-cyrus-sasl .sect2}

::: {.sect3 lang="en"}
### []{#cyrus-sasl-config}Config Files {#config-files .sect3}

`/etc/saslauthd.conf`{.filename} (for [**saslauthd**]{.command} LDAP configuration) and `/etc/sasl2/Appname.conf`{.filename} (where "Appname" is the application defined name of the application)
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

See [https://www.cyrusimap.org/sasl/sasl/sysadmin.html](https://www.cyrusimap.org/sasl/sasl/sysadmin.md){.ulink} for information on what to include in the application configuration files.

See [file:///usr/share/doc/cyrus-sasl-2.1.28/LDAP_SASLAUTHD](file:///usr/share/doc/cyrus-sasl-2.1.28/LDAP_SASLAUTHD){.ulink} for configuring [**saslauthd**]{.command} with [OpenLDAP]{.application}.

See [https://www.cyrusimap.org/sasl/sasl/gssapi.md#gssapi](https://www.cyrusimap.org/sasl/sasl/gssapi.md#gssapi){.ulink} for configuring [**saslauthd**]{.command} with [Kerberos]{.application}.
:::

:::: {.sect3 lang="en"}
### []{#cyrus-sasl-init} Systemd Unit {#systemd-unit .sect3}

If you need to run the [**saslauthd**]{.command} daemon at system startup, install the `saslauthd.service`{.filename} unit included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package using the following command:

``` root
make install-saslauthd
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

You'll need to modify `/etc/default/saslauthd`{.filename} and modify the `MECHANISM`{.option} parameter with your desired authentication mechanism. [The default authentication mechanism is "shadow".]{.phrase}
:::
::::
:::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [pluginviewer, saslauthd, sasldblistusers2, saslpasswd2, and testsaslauthd]{.segbody}
:::

::: seg
**Installed Library:** [libsasl2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/sasl, /usr/lib/sasl2, /usr/share/doc/cyrus-sasl-2.1.28 and /var/lib/sasl]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
  []{#pluginviewer}[[**pluginviewer**]{.command}]{.term}           is used to list loadable SASL plugins and their properties
  []{#saslauthd}[[**saslauthd**]{.command}]{.term}                 is the SASL authentication server
  []{#sasldblistusers2}[[**sasldblistusers2**]{.command}]{.term}   is used to list the users in the SASL password database `sasldb2`{.filename}
  []{#saslpasswd2}[[**saslpasswd2**]{.command}]{.term}             is used to set and delete a user's SASL password and mechanism specific secrets in the SASL password database `sasldb2`{.filename}
  []{#testsaslauthd}[[**testsaslauthd**]{.command}]{.term}         is a test utility for the SASL authentication server
  []{#libsasl2}[`libsasl2.so`{.filename}]{.term}                   is a general purpose authentication library for server and client applications
  ---------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::

::: navfooter
-   [Prev](cryptsetup.md "cryptsetup-2.8.6"){accesskey="p"}

    cryptsetup-2.8.6

-   [Next](gnupg.md "GnuPG-2.5.20"){accesskey="n"}

    GnuPG-2.5.20

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
