::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](apr.md "Apr-1.7.6"){accesskey="p"}

    Apr-1.7.6

-   [Next](aspell.md "Aspell-0.60.8.2"){accesskey="n"}

    Aspell-0.60.8.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#apr-util}Apr-Util-1.6.3 {#apr-util-1.6.3 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Apr Util {#introduction-to-apr-util .sect2}

The Apache Portable Runtime Utility Library provides a predictable and consistent interface to underlying client library interfaces. This application programming interface assures predictable if not identical behavior regardless of which libraries are available on a given platform.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.apache.org/dist/apr/apr-util-1.6.3.tar.bz2](https://archive.apache.org/dist/apr/apr-util-1.6.3.tar.bz2){.ulink}

-   Download MD5 sum: b6e8c9b31d938fe5797ceb0d1ff2eb69

-   Download size: 423 KB

-   Estimated disk space required: 7.6 MB (add 1.4 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.3 SBU for tests)
:::

### Apr Util Dependencies

#### Required

[Apr-1.7.6](apr.md "Apr-1.7.6"){.xref}

#### Optional

[FreeTDS](https://www.freetds.org/){.ulink}, [MariaDB-12.3.2](../server/mariadb.md "MariaDB-12.3.2"){.xref} or [MySQL](https://www.mysql.com/){.ulink}, [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}, [PostgreSQL-18.4](../server/postgresql.md "PostgreSQL-18.4"){.xref}, [unixODBC-2.3.14](unixodbc.md "unixODBC-2.3.14"){.xref}, and [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated)
:::::

::: {.installation lang="en"}
## Installation of Apr Util {#installation-of-apr-util .sect2}

Install [Apr Util]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr       \
            --with-apr=/usr     \
            --with-gdbm=/usr    \
            --with-openssl=/usr \
            --with-crypto &&
make
```

To test the results, issue: [**make -j1 test**]{.command}. One test, testdbm, is known to fail.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-gdbm=/usr`*: This switch enables the `apr_dbm_gdbm-1.so`{.filename} plugin.

*`--with-openssl=/usr`* *`--with-crypto`*: These switches enable the `apr_crypto_openssl-1.so`{.filename} plugin.

`--with-berkeley-db=/usr`{.option}: If you have installed [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated), use this switch to compile the `apr_dbm_db-1.so`{.filename} plugin.

`--with-ldap`{.option}: If you have installed [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}, use this switch to compile the `apr_ldap.so`{.filename} plugin.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [apu-1-config]{.segbody}
:::

::: seg
**Installed Library:** [libaprutil-1.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/lib/apr-util-1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------
  []{#apu-1-config}[[**apu-1-config**]{.command}]{.term}   is an APR-util script designed to allow easy command line access to APR-util configuration parameters
  []{#libaprutil-1}[`libaprutil-1.so`{.filename}]{.term}   contains functions that provide a predictable and consistent interface to underlying client library interfaces
  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](apr.md "Apr-1.7.6"){accesskey="p"}

    Apr-1.7.6

-   [Next](aspell.md "Aspell-0.60.8.2"){accesskey="n"}

    Aspell-0.60.8.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
