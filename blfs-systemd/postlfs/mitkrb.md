::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](libpwquality.md "libpwquality-1.4.5"){accesskey="p"}

    libpwquality-1.4.5

-   [Next](nettle.md "Nettle-4.0"){accesskey="n"}

    Nettle-4.0

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mitkrb}MIT Kerberos V5-1.22.2 {#mit-kerberos-v5-1.22.2 .sect1}

:::::::::::::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to MIT Kerberos V5 {#introduction-to-mit-kerberos-v5 .sect2}

[MIT Kerberos V5]{.application} is a free implementation of Kerberos 5. Kerberos is a network authentication protocol. It centralizes the authentication database and uses kerberized applications to work with servers or services that support Kerberos allowing single logins and encrypted communication over internal networks or the Internet.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://kerberos.org/dist/krb5/1.22/krb5-1.22.2.tar.gz](https://kerberos.org/dist/krb5/1.22/krb5-1.22.2.tar.gz){.ulink}

-   Download MD5 sum: 42472b11771d074329e0cc776d2eb5fd

-   Download size: 8.4 MB

-   Estimated disk space required: 149 MB (with tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; add 3.8 SBU for tests)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/mitkrb-1.22.2-upstream_fix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/mitkrb-1.22.2-upstream_fix-1.patch){.ulink}

-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/mitkrb-1.22.2-security_fix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/mitkrb-1.22.2-security_fix-1.patch){.ulink}

-   Required patch for OpenSSL-4: [https://www.linuxfromscratch.org/patches/blfs/svn/mitkrb-1.22.2-openssl_4_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/mitkrb-1.22.2-openssl_4_fixes-1.patch){.ulink}
:::

### MIT Kerberos V5 Dependencies

#### Optional

[BIND Utilities-9.20.20](../basicnet/bind-utils.md "BIND Utilities-9.20.20"){.xref}, [CrackLib-2.10.3](cracklib.md "CrackLib-2.10.3"){.xref} (`/usr/share/dict/words`{.filename} referred by some tests), [keyutils-1.6.3](../general/keyutils.md "keyutils-1.6.3"){.xref}, [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} (used during the test suite), [yasm-1.3.0](../general/yasm.md "yasm-1.3.0"){.xref}, [libedit](https://thrysoee.dk/editline/){.ulink}, [cmocka](https://cmocka.org/){.ulink}, [kdcproxy](https://pypi.org/project/kdcproxy/){.ulink}, [pyrad](https://pypi.org/project/pyrad/){.ulink}, and [resolv_wrapper](https://cwrap.org/resolv_wrapper.md){.ulink}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Some sort of time synchronization facility on your system (like [systemd-timesyncd]{.phrase}) is required since Kerberos won't authenticate if there is a time difference between a kerberized client and the KDC server.
:::
:::::::

::: {.installation lang="en"}
## Installation of MIT Kerberos V5 {#installation-of-mit-kerberos-v5 .sect2}

First, fix an issue identified by glibc-2.43:

``` userinput
patch -Np1 -i ../mitkrb-1.22.2-upstream_fix-1.patch
```

Next, fix two security issues identified upstream:

``` userinput
patch -Np1 -i ../mitkrb-1.22.2-security_fix-1.patch
```

Next, fix building with OpenSSL-4:

``` userinput
patch -Np1 -i ../mitkrb-1.22.2-openssl_4_fixes-1.patch
```

Build [MIT Kerberos V5]{.application} by running the following commands:

``` userinput
cd src &&
sed -i -e '/eq 0/{N;s/12 //}' plugins/kdb/db2/libdb2/test/run.test &&

./configure --prefix=/usr            \
            --sysconfdir=/etc        \
            --localstatedir=/var/lib \
            --runstatedir=/run       \
            --with-system-et         \
            --with-system-ss         \
            --with-system-verto=no   \
            --enable-dns-for-realm   \
            --disable-rpath          &&
make
```

To test the build, issue: [**make -j1 -k check**]{.command}. Some tests may fail with the latest version of dejagnu and glibc. Some tests may hang for a long time and fail if the system is not connected to a network. One test, `t_kadm5srv`{.filename}, is known to fail. If [keyutils-1.6.3](../general/keyutils.md "keyutils-1.6.3"){.xref} is installed but [Keyutils Kernel Configuration](../general/keyutils.md#keyutils-test-kernel "Kernel Configuration"){.xref} is not satisfied, some tests will fail complaining `keyctl failed with code 1`{.computeroutput}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
cp -vfr ../doc -T /usr/share/doc/krb5-1.22.2
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

The [**sed**]{.command} command removes a test that is known to fail.

*`--localstatedir=/var/lib`*: This option is used so that the Kerberos variable runtime data is located in `/var/lib`{.filename} instead of `/usr/var`{.filename}.

*`--runstatedir=/run`*: This option is used so that the Kerberos runtime state information is located in `/run`{.filename} instead of the deprecated `/var/run`{.filename}.

*`--with-system-et`*: This switch causes the build to use the system-installed versions of the error-table support software.

*`--with-system-ss`*: This switch causes the build to use the system-installed versions of the subsystem command-line interface software.

*`--with-system-verto=no`*: This switch fixes a bug in the package where the build system does not recognize its own verto library if this package has been installed before. This is not a problem if you are reinstalling the same version, but can be problematic if you are updating because the old version of the verto library will be used instead of installing the newer version.

*`--enable-dns-for-realm`*: This switch allows realms to be resolved using the DNS server.

*`--disable-rpath`*: This switch prevents hard coding library search paths (rpath) into the binary executable files and shared libraries. This package does not need rpath for an installation into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

`--with-ldap`{.option}: Use this switch if you want to compile the [OpenLDAP]{.application} database backend module.
:::

::::::::::::::: {.configuration lang="en"}
## Configuring MIT Kerberos V5 {#configuring-mit-kerberos-v5 .sect2}

::: {.sect3 lang="en"}
### []{#krb5-config}Config Files {#config-files .sect3}

`/etc/krb5.conf`{.filename} and `/var/lib/krb5kdc/kdc.conf`{.filename}
:::

:::::::::::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

::::::: sect4
::::: titlepage


##### []{#idm140011193420160}Kerberos Configuration {#kerberos-configuration .title}


:::::

::: {.admon .tip}
![\[Tip\]](../images/tip.png)

### Tip

You should consider installing some sort of password checking dictionary so that you can configure the installation to only accept strong passwords. A suitable dictionary to use is installed in the [CrackLib-2.10.3](cracklib.md "CrackLib-2.10.3"){.xref} instructions. Note that only one file can be used, but you can concatenate many files into one. The configuration file shown below assumes you have installed a dictionary to `/usr/share/dict/words`{.filename}.
:::

Create the Kerberos configuration file with the following commands issued by the `root`{.systemitem} user:

``` root
cat > /etc/krb5.conf << "EOF"
# Begin /etc/krb5.conf

[libdefaults]
    default_realm = <EXAMPLE.ORG>
    encrypt = true

[realms]
    <EXAMPLE.ORG> = {
        kdc = <belgarath.example.org>
        admin_server = <belgarath.example.org>
        dict_file = /usr/share/dict/words
    }

[domain_realm]
    .<example.org> = <EXAMPLE.ORG>

[logging]
    kdc = SYSLOG:INFO:AUTH
    admin_server = SYSLOG:INFO:AUTH
    default = SYSLOG:DEBUG:DAEMON

# End /etc/krb5.conf
EOF
```

You will need to substitute your domain and proper hostname for the occurrences of the *`<belgarath>`* and *`<example.org>`* names.

`default_realm`{.option} should be the name of your domain changed to ALL CAPS. This isn't required, but both [Heimdal]{.application} and MIT recommend it.

`encrypt = true`{.option} provides encryption of all traffic between kerberized clients and servers. It's not necessary and can be left off. If you leave it off, you can encrypt all traffic from the client to the server using a switch on the client program instead.

The `[realms]`{.option} parameters tell the client programs where to look for the KDC authentication services.

The `[domain_realm]`{.option} section maps a domain to a realm.

Next, create the KDC database:

``` root
kdb5_util create -r <EXAMPLE.ORG> -s
```

Now, you should populate the database with principals (users). For now, just use your regular login name or `root`{.systemitem}.

``` root
kadmin.local
kadmin.local: add_policy dict-only
kadmin.local: addprinc -policy dict-only <loginname>
```

The KDC server and any machine running kerberized server daemons must have a host key installed:

``` root
kadmin.local: addprinc -randkey host/<belgarath.example.org>
```

After choosing the defaults when prompted, you will have to export the data to a keytab file:

``` root
kadmin.local: ktadd host/<belgarath.example.org>
```

This should have created a file in `/etc`{.filename} named `krb5.keytab`{.filename} (Kerberos 5). This file should have 600 (`root`{.systemitem} rw only) permissions. Keeping the keytab files from public access is crucial to the overall security of the Kerberos installation.

Exit the [**kadmin**]{.command} program (use [**quit**]{.command} or [**exit**]{.command}) and return back to the shell prompt. Start the KDC daemon manually, just to test out the installation:

``` root
/usr/sbin/krb5kdc
```

Attempt to get a ticket with the following command:

``` userinput
kinit <loginname>
```

You will be prompted for the password you created. After you get your ticket, you can list it with the following command:

``` userinput
klist
```

Information about the ticket should be displayed on the screen.

To test the functionality of the keytab file, issue the following command as the `root`{.systemitem} user:

``` root
ktutil
ktutil: rkt /etc/krb5.keytab
ktutil: l
```

This should dump a list of the host principal, along with the encryption methods used to access the principal.

Create an empty ACL file that can be modified later:

``` root
touch /var/lib/krb5kdc/kadm5.acl
```

At this point, if everything has been successful so far, you can feel fairly confident in the installation and configuration of the package.
:::::::

:::::: sect4
::::: titlepage


##### []{#idm140011193373200}Additional Information {#additional-information .title}


:::::

For additional information consult the [documentation for krb5-1.22.2](https://web.mit.edu/kerberos/www/krb5-1.22/#documentation){.ulink} on which the above instructions are based.
::::::
::::::::::::

::: {.sect3 lang="en"}
### []{#mitkrb-init} Systemd Unit {#systemd-unit .sect3}

If you want to start [Kerberos]{.application} services at boot, install the `krb5-krdc.service`{.filename}, `krb5-kpropd`{.filename}, and `krb5-kadmind.service`{.filename} units included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package using the following command:

``` root
make install-krb5
```
:::
:::::::::::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gss-client, gss-server, k5srvutil, kadmin, kadmin.local, kadmind, kdb5_ldap_util (optional), kdb5_util, kdestroy, kinit, klist, kpasswd, kprop, kpropd, kproplog, krb5-config, krb5-send-pr, krb5kdc, ksu, kswitch, ktutil, kvno, sclient, sim_client, sim_server, sserver, uuclient, and uuserver]{.segbody}
:::

::: seg
**Installed Libraries:** [libgssapi_krb5.so, libgssrpc.so, libk5crypto.so, libkadm5clnt_mit.so, libkadm5clnt.so, libkadm5srv_mit.so, libkadm5srv.so, libkdb_ldap.so (optional), libkdb5.so, libkrad.so, libkrb5.so, libkrb5support.so, libverto.so, and some plugins under the /usr/lib/krb5 tree]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/{gssapi,gssrpc,kadm5,krb5}, /usr/lib/krb5, /usr/share/{doc/krb5-1.22.2,examples/krb5}, /var/lib/krb5kdc, and /run/krb5kdc]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gss-client}[[**gss-client**]{.command}]{.term}                      is a GSSAPI test client
  []{#gss-server}[[**gss-server**]{.command}]{.term}                      is a GSSAPI test server
  []{#k5srvutil}[[**k5srvutil**]{.command}]{.term}                        is a host keytable manipulation utility
  []{#kadmin}[[**kadmin**]{.command}]{.term}                              is a utility used to make modifications to the Kerberos database
  []{#kadmin.local}[[**kadmin.local**]{.command}]{.term}                  is a utility similar to [**kadmin**]{.command}, but if the database is db2, the local client [**kadmin.local**]{.command}, is intended to run directly on the master KDC without Kerberos authentication
  []{#kadmind}[[**kadmind**]{.command}]{.term}                            is a server for administrative access to a Kerberos database
  []{#kdb5_ldap_util}[[**kdb5_ldap_util (optional)**]{.command}]{.term}   allows an administrator to manage realms, Kerberos services and ticket policies
  []{#kdb5_util}[[**kdb5_util**]{.command}]{.term}                        is the KDC database utility
  []{#kdestroy}[[**kdestroy**]{.command}]{.term}                          removes the current set of tickets
  []{#kinit}[[**kinit**]{.command}]{.term}                                is used to authenticate to the Kerberos server as a principal and acquire a ticket granting ticket that can later be used to obtain tickets for other services
  []{#klist}[[**klist**]{.command}]{.term}                                reads and displays the current tickets in the credential cache
  []{#kpasswd}[[**kpasswd**]{.command}]{.term}                            is a program for changing Kerberos 5 passwords
  []{#kprop}[[**kprop**]{.command}]{.term}                                takes a principal database in a specified format and converts it into a stream of database records
  []{#kpropd}[[**kpropd**]{.command}]{.term}                              receives a database sent by [**kprop**]{.command} and writes it as a local database
  []{#kproplog}[[**kproplog**]{.command}]{.term}                          displays the contents of the KDC database update log to standard output
  []{#krb5-config-prog2}[[**krb5-config**]{.command}]{.term}              provides information about how to link programs against the [Kerberos 5]{.application} libraries
  []{#krb5kdc}[[**krb5kdc**]{.command}]{.term}                            is the [Kerberos 5]{.application} server
  []{#krb5-send-pr}[[**krb5-send-pr**]{.command}]{.term}                  sends a problem report (PR) to a central support site
  []{#ksu}[[**ksu**]{.command}]{.term}                                    is the super user program using the Kerberos protocol. It requires a properly configured `/etc/shells`{.filename} and `~/.k5login`{.filename} containing principals authorized to become super users
  []{#kswitch}[[**kswitch**]{.command}]{.term}                            makes the specified credential cache the primary cache for the collection, if a cache collection is available
  []{#ktutil}[[**ktutil**]{.command}]{.term}                              is a program for managing Kerberos keytabs
  []{#kvno}[[**kvno**]{.command}]{.term}                                  prints keyversion numbers of Kerberos principals
  []{#sclient}[[**sclient**]{.command}]{.term}                            is used to contact a sample server and authenticate to it using Kerberos 5 tickets, and then display the server's response
  []{#sim_client}[[**sim_client**]{.command}]{.term}                      is a simple UDP-based sample client program for demonstration purposes
  []{#sim_server}[[**sim_server**]{.command}]{.term}                      is a simple UDP-based server application for demonstration purposes
  []{#sserver}[[**sserver**]{.command}]{.term}                            is a sample Kerberos 5 server
  []{#uuclient}[[**uuclient**]{.command}]{.term}                          is another sample client
  []{#uuserver}[[**uuserver**]{.command}]{.term}                          is another sample server
  []{#libgssapi_krb5}[`libgssapi_krb5.so`{.filename}]{.term}              contains the Generic Security Service Application Programming Interface (GSSAPI) functions which provide security services to callers in a generic fashion, supportable with a range of underlying mechanisms and technologies and hence allowing source-level portability of applications to different environments
  []{#libkadm5clnt}[`libkadm5clnt.so`{.filename}]{.term}                  contains the administrative authentication and password checking functions required by Kerberos 5 client-side programs
  []{#libkadm5srv}[`libkadm5srv.so`{.filename}]{.term}                    contains the administrative authentication and password checking functions required by Kerberos 5 servers
  []{#libkdb5}[`libkdb5.so`{.filename}]{.term}                            is a Kerberos 5 authentication/authorization database access library
  []{#libkrad}[`libkrad.so`{.filename}]{.term}                            contains the internal support library for RADIUS functionality
  []{#libkrb5}[`libkrb5.so`{.filename}]{.term}                            is an all-purpose [Kerberos 5]{.application} library
  ----------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](libpwquality.md "libpwquality-1.4.5"){accesskey="p"}

    libpwquality-1.4.5

-   [Next](nettle.md "Nettle-4.0"){accesskey="n"}

    Nettle-4.0

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
