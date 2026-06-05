::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 22. Databases

-   [Prev](upgradedb.md "Important Notes About Upgrading Database Server Software"){accesskey="p"}

    Important Notes About Upgrading Database Server Software

-   [Next](mariadb.md "MariaDB-12.3.2"){accesskey="n"}

    MariaDB-12.3.2

-   [Up](databases.md "Chapter 22. Databases"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lmdb}lmdb-0.9.35 {#lmdb-0.9.35 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lmdb {#introduction-to-lmdb .sect2}

The [lmdb]{.application} package is a fast, compact, key-value embedded data store. It uses memory-mapped files, so it has the read performance of a pure in-memory database while still offering the persistence of standard disk-based databases, and is only limited to the size of the virtual address space

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://git.openldap.org/openldap/openldap/-/archive/LMDB_0.9.35/LMDB_0.9.35.tar.bz2](https://git.openldap.org/openldap/openldap/-/archive/LMDB_0.9.35/LMDB_0.9.35.tar.bz2){.ulink}

-   Download MD5 sum: 2b09899a3ea43dbc9833c1325a492bbd

-   Download size: 119 KB

-   Estimated disk space required: 6.6 MB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of lmdb {#installation-of-lmdb .sect2}

Install [lmdb]{.application} by running the following commands:

``` userinput
cd libraries/liblmdb &&
make                 &&
sed -i 's| liblmdb.a||' Makefile
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make prefix=/usr install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ... liblmdb.a ... Makefile**]{.command}: The package executables use a static library so it must be created. This command suppresses installation of the static library.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [mdb_copy, mdb_dump, mdb_load, and mdb_stat]{.segbody}
:::

::: seg
**Installed Library:** [liblmdb.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------
  []{#mdb_copy}[[**mdb_copy**]{.command}]{.term}   copies an LMDB environment from one database to another, including the option to compact the database
  []{#mdb_dump}[[**mdb_dump**]{.command}]{.term}   reads a database and writes its contents to standard output using a portable flat-text format, which can be interpreted by mdb_load
  []{#mdb_load}[[**mdb_load**]{.command}]{.term}   imports a database from standard input or from a file
  []{#mdb_stat}[[**mdb_stat**]{.command}]{.term}   displays the status of a LMDB environment
  []{#liblmdb}[`liblmdb.so`{.filename}]{.term}     provides functions for accessing a LMDB database
  ------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](upgradedb.md "Important Notes About Upgrading Database Server Software"){accesskey="p"}

    Important Notes About Upgrading Database Server Software

-   [Next](mariadb.md "MariaDB-12.3.2"){accesskey="n"}

    MariaDB-12.3.2

-   [Up](databases.md "Chapter 22. Databases"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
