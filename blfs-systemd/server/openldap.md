::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 23. Other Server Software

-   [Prev](other.md "Other Server Software"){accesskey="p"}

    Other Server Software

-   [Next](../x/x.md "Graphical Components"){accesskey="n"}

    Graphical Components

-   [Up](other.md "Chapter 23. Other Server Software"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#openldap}OpenLDAP-2.6.13 {#openldap-2.6.13 .sect1}

::::::::::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to OpenLDAP {#introduction-to-openldap .sect2}

The [OpenLDAP]{.application} package provides an open source implementation of the Lightweight Directory Access Protocol.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.openldap.org/software/download/OpenLDAP/openldap-release/openldap-2.6.13.tgz](https://www.openldap.org/software/download/OpenLDAP/openldap-release/openldap-2.6.13.tgz){.ulink}

-   Download MD5 sum: 761be850c8ff85dbf5031af7c6c6da44

-   Download size: 6.2 MB

-   Estimated disk space required: 100 MB (client and server)

-   Estimated build time: 0.3 SBU (client), 0.8 SBU (server)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/openldap-2.6.13-consolidated-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/openldap-2.6.13-consolidated-1.patch){.ulink}
:::

### OpenLDAP Dependencies

#### Recommended

[Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref}

#### Optional

[GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [unixODBC-2.3.14](../general/unixodbc.md "unixODBC-2.3.14"){.xref}, [MariaDB-12.3.2](mariadb.md "MariaDB-12.3.2"){.xref} or [PostgreSQL-18.4](postgresql.md "PostgreSQL-18.4"){.xref} or [MySQL](https://www.mysql.com/){.ulink}, [OpenSLP](http://www.openslp.org/){.ulink}, [WiredTiger](https://docs.mongodb.com/manual/core/wiredtiger/){.ulink}, and [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated) (for slapd, also deprecated)
::::::

:::: {.installation lang="en"}
## Installation of OpenLDAP {#installation-of-openldap .sect2}

Whether you need the client or the server, first apply a fix to build with OpenSSL-4:

``` userinput
sed -e 's/cn->length/ASN1_STRING_length(cn)/g'  \
    -e 's/cn->data/ASN1_STRING_get0_data(cn)/g' \
    -i libraries/libldap/tls_o.c
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you only need to install the client side [**ldap\***]{.command} binaries, corresponding man pages, libraries and header files (referred to as a [“[client-only]{.quote}”]{.quote} install), issue these commands instead of the following ones (no test suite available):

``` userinput
patch -Np1 -i ../openldap-2.6.13-consolidated-1.patch &&
autoconf &&

./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  \
            --enable-dynamic  \
            --disable-debug   \
            --disable-slapd   &&

make depend &&
make
```

Then, as the `root`{.systemitem} user:

``` userinput
make install
```
:::

There should be a dedicated user and group to take control of the [**slapd**]{.command} daemon after it is started. Issue the following commands as the `root`{.systemitem} user:

``` root
groupadd -g 83 ldap &&
useradd  -c "OpenLDAP Daemon Owner" \
         -d /var/lib/openldap -u 83 \
         -g ldap -s /bin/false ldap
```

Install [OpenLDAP]{.application} by running the following commands:

``` userinput
patch -Np1 -i ../openldap-2.6.13-consolidated-1.patch &&
autoconf &&

./configure --prefix=/usr         \
            --sysconfdir=/etc     \
            --localstatedir=/var  \
            --libexecdir=/usr/lib \
            --disable-static      \
            --disable-debug       \
            --with-tls=openssl    \
            --with-cyrus-sasl     \
            --without-systemd     \
            --enable-dynamic      \
            --enable-crypt        \
            --enable-spasswd      \
            --enable-slapd        \
            --enable-modules      \
            --enable-rlookups     \
            --enable-backends=mod \
            --disable-sql         \
            --disable-wt          \
            --enable-overlays=mod &&

make depend &&
make
```

The tests are fragile, and errors may cause the tests to abort prior to finishing. Some errors may happen due to timing problems. The tests take around an hour, and the time is CPU independent due to delays in the tests. On most systems, the tests will run up to the `test065-proxyauth for mdb`{.filename} test. To test the results, issue: [**make test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&

sed -e "s/\.la/.so/" -i /etc/openldap/slapd.{conf,ldif}{,.default} &&

install -v -dm700 -o ldap -g ldap /var/lib/openldap     &&

install -v -dm700 -o ldap -g ldap /etc/openldap/slapd.d &&
chmod   -v    640     /etc/openldap/slapd.{conf,ldif}   &&
chown   -v  root:ldap /etc/openldap/slapd.{conf,ldif}   &&

install -v -dm755 /usr/share/doc/openldap-2.6.13 &&
cp      -vfr      doc/{drafts,rfc,guide} \
                  /usr/share/doc/openldap-2.6.13
```
::::

:::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--disable-debug`*: This switch disables the debugging code in [OpenLDAP]{.application}.

*`--enable-dynamic`*: This switch forces the [OpenLDAP]{.application} libraries to be dynamically linked to the executable programs.

*`--enable-crypt`*: This switch enables using [crypt(3)](https://man.archlinux.org/man/crypt.3){.ulink} passwords.

*`--enable-spasswd`*: This switch enables [SASL]{.application} password verification.

*`--enable-modules`*: This switch enables dynamic module support.

*`--enable-rlookups`*: This switch enables reverse lookups of client hostnames.

*`--enable-backends`*: This switch enables all available backends.

*`--enable-overlays`*: This switch enables all available overlays.

*`--disable-sql`*: This switch explicitly disables the SQL backend. Omit this switch if a SQL server is installed and you are going to use a SQL backend.

*`--disable-wt`*: This switch explicitly disables the WiredTiger backend. Omit this switch if WiredTiger is installed and you are going to use a WiredTiger backend.

*`--without-systemd`*: This switch explicitly disables the bundled systemd units from being installed. These units do not work correctly because of configuration assumptions that are overridden by the consolidated patch, and also do not install a working basic configuration file like the BLFS systemd units provide.

*`--libexecdir=/usr/lib`*: This switch controls where the `/usr/lib/openldap`{.filename} directory is installed. Everything in that directory is a library, so it belongs under `/usr/lib`{.filename} instead of `/usr/libexec`{.filename}.

`--enable-slp`{.option}: This switch enables SLPv2 support. Use it if you have installed [OpenSLP](http://www.openslp.org/){.ulink}.

`--disable-versioning`{.option}: This switch disables symbol versioning in the [OpenLDAP]{.application} libraries. The default is to have symbol versioning. Note that if you have built applications using this package with symbol versioning, and remove the symbols, the applications may fail to run.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

You can run [**./configure --help**]{.command} to see if there are other switch you can pass to the [**configure**]{.command} command to enable other options or dependency packages.
:::

[**install ...**]{.command}, [**chown ...**]{.command}, and [**chmod ...**]{.command}: Having slapd configuration files and ldap databases in /var/lib/openldap readable by anyone is a SECURITY ISSUE, especially since a file stores the admin password in PLAIN TEXT. That's why mode 640 and root:ldap ownership were used. The owner is root, so only root can modify the file, and group is ldap, so that the group which owns slapd daemon could read but not modify the file in case of a security breach.
::::

::::::::::: {.configuration lang="en"}
## Configuring OpenLDAP {#configuring-openldap .sect2}

:::: {.sect3 lang="en"}
### []{#openldap-config}Config Files {#config-files .sect3}

::: itemizedlist
-   For LDAP client: `/etc/openldap/ldap.conf`{.filename} and `~/.ldaprc`{.filename}

-   For LDAP server, two configuration mechanisms are used: a legacy `/etc/openldap/slapd.conf`{.filename} configuration file and the recommended [*slapd-config*]{.emphasis} system, using an LDIF database stored in `/etc/openldap/slapd.d`{.filename}.
:::
::::

::::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Configuring the [**slapd**]{.command} servers can be complex. Securing the LDAP directory, especially if you are storing non-public data such as password databases, can also be a challenging task. In order to set up [OpenLDAP]{.application}, you'll need to modify either the `/etc/openldap/slapd.conf`{.filename} file (old method), or the `/etc/openldap/slapd.ldif`{.filename} file and then use [**ldapadd**]{.command} to create the LDAP configuration database in `/etc/openldap/slapd.d`{.filename} (recommended by the OpenLDAP documentation).

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

The instructions above install an empty LDAP structure and a default `/etc/openldap/slapd.conf`{.filename} file, which are suitable for testing the build and other packages using LDAP. Do not use them on a production server.
:::

Resources to assist you with topics such as choosing a directory configuration, backend and database definitions, access control settings, running as a user other than `root`{.systemitem} and setting a [**chroot**]{.command} environment include:

::: itemizedlist
-   The [slapd(8)](https://man.archlinux.org/man/slapd.8){.ulink} man page.

-   The [slapd.conf(5)](https://man.archlinux.org/man/slapd.conf.5){.ulink} and [slapd-config(5)](https://man.archlinux.org/man/slapd-config.5){.ulink} man pages.

-   The [OpenLDAP 2.6 Administrator's Guide](https://www.openldap.org/doc/admin26/){.ulink} (also installed locally in `/usr/share/doc/openldap-2.6.13/guide/admin`{.filename}).

-   Documents located at [https://www.openldap.org/pub/](https://www.openldap.org/pub/){.ulink}.
:::
:::::

:::: {.sect3 lang="en"}
### []{#openldap-init} Systemd Unit {#systemd-unit .sect3}

To automate the startup of the LDAP server at system bootup, install the [`slapd.service`{.filename} unit]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package using the following command:

``` root
make install-slapd
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

You'll need to modify [`/etc/default/slapd`{.filename}]{.phrase} to include the parameters needed for your specific configuration. See the [**slapd**]{.command} man page for parameter information.
:::
::::

::: {.sect3 lang="en"}
### Testing the Configuration {#testing-the-configuration .sect3}

Start the LDAP server using [systemctl:]{.phrase}

``` root
systemctl start slapd
```

Verify access to the LDAP server with the following command:

``` userinput
ldapsearch -x -b '' -s base '(objectclass=*)' namingContexts
```

The expected result is:

``` screen
# extended LDIF
#
# LDAPv3
# base <> with scope baseObject
# filter: (objectclass=*)
# requesting: namingContexts
#

#
dn:
namingContexts: dc=my-domain,dc=com

# search result
search: 2
result: 0 Success

# numResponses: 2
# numEntries: 1
```
:::
:::::::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ldapadd, ldapcompare, ldapdelete, ldapexop, ldapmodify, ldapmodrdn, ldappasswd, ldapsearch, ldapurl, ldapvc, ldapwhoami, slapacl, slapadd, slapauth, slapcat, slapd, slapdn, slapindex, slapmodify, slappasswd, slapschema, and slaptest]{.segbody}
:::

::: seg
**Installed Libraries:** [liblber.so, libldap.so, and several under /usr/lib/openldap]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/openldap, /{usr,var}/lib/openldap, and /usr/share/doc/openldap-2.6.13]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#ldapadd}[[**ldapadd**]{.command}]{.term}           opens a connection to an LDAP server, binds and adds entries
  []{#ldapcompare}[[**ldapcompare**]{.command}]{.term}   opens a connection to an LDAP server, binds and performs a compare using specified parameters
  []{#ldapdelete}[[**ldapdelete**]{.command}]{.term}     opens a connection to an LDAP server, binds and deletes one or more entries
  []{#ldapexop}[[**ldapexop**]{.command}]{.term}         issues the LDAP extended operation specified by oid or one of the special keywords whoami, cancel, or refresh
  []{#ldapmodify}[[**ldapmodify**]{.command}]{.term}     opens a connection to an LDAP server, binds and modifies entries
  []{#ldapmodrdn}[[**ldapmodrdn**]{.command}]{.term}     opens a connection to an LDAP server, binds and modifies the RDN of entries
  []{#ldappasswd}[[**ldappasswd**]{.command}]{.term}     is a tool used to set the password of an LDAP user
  []{#ldapsearch}[[**ldapsearch**]{.command}]{.term}     opens a connection to an LDAP server, binds and performs a search using specified parameters
  []{#ldapurl}[[**ldapurl**]{.command}]{.term}           is a command that allows to either compose or decompose LDAP URIs
  []{#ldapvc}[[**ldapvc**]{.command}]{.term}             verifies LDAP credentials
  []{#ldapwhoami}[[**ldapwhoami**]{.command}]{.term}     opens a connection to an LDAP server, binds and displays whoami information
  []{#slapacl}[[**slapacl**]{.command}]{.term}           is used to check the behavior of slapd by verifying access to directory data according to the access control list directives defined in its configuration
  []{#slapadd}[[**slapadd**]{.command}]{.term}           is used to add entries specified in LDAP Directory Interchange Format (LDIF) to an LDAP database
  []{#slapauth}[[**slapauth**]{.command}]{.term}         is used to check the behavior of the slapd in mapping identities for authentication and authorization purposes, as specified in slapd.conf
  []{#slapcat}[[**slapcat**]{.command}]{.term}           is used to generate an LDAP LDIF output based upon the contents of a slapd database
  []{#slapd}[[**slapd**]{.command}]{.term}               is the standalone LDAP server
  []{#slapdn}[[**slapdn**]{.command}]{.term}             checks a list of string-represented DNs based on schema syntax
  []{#slapindex}[[**slapindex**]{.command}]{.term}       is used to regenerate slapd indexes based upon the current contents of a database
  []{#slapmodify}[[**slapmodify**]{.command}]{.term}     modifies entries in a slapd database
  []{#slappasswd}[[**slappasswd**]{.command}]{.term}     is an [OpenLDAP]{.application} password utility
  []{#slapschema}[[**slapschema**]{.command}]{.term}     is used to check schema compliance of the contents of a slapd database
  []{#slaptest}[[**slaptest**]{.command}]{.term}         checks the sanity of the `slapd.conf`{.filename} file
  []{#liblber}[`liblber.so`{.filename}]{.term}           is a set of Lightweight Basic Encoding Rules routines. These routines are used by the LDAP library routines to encode and decode LDAP protocol elements using the (slightly simplified) Basic Encoding Rules defined by LDAP. They are not normally used directly by an LDAP application program except in the handling of controls and extended operations
  []{#libldap}[`libldap.so`{.filename}]{.term}           supports the LDAP programs and provide functionality for other programs interacting with LDAP
  ------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::::::

::: navfooter
-   [Prev](other.md "Other Server Software"){accesskey="p"}

    Other Server Software

-   [Next](../x/x.md "Graphical Components"){accesskey="n"}

    Graphical Components

-   [Up](other.md "Chapter 23. Other Server Software"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
