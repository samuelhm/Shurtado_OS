::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 22. Databases

-   [Prev](mariadb.md "MariaDB-12.3.2"){accesskey="p"}

    MariaDB-12.3.2

-   [Next](other.md "Other Server Software"){accesskey="n"}

    Other Server Software

-   [Up](databases.md "Chapter 22. Databases"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#postgresql}PostgreSQL-18.4 {#postgresql-18.4 .sect1}

:::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to PostgreSQL {#introduction-to-postgresql .sect2}

[PostgreSQL]{.application} is an advanced object-relational database management system (ORDBMS), derived from the Berkeley Postgres database management system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftp.postgresql.org/pub/source/v18.4/postgresql-18.4.tar.bz2](https://ftp.postgresql.org/pub/source/v18.4/postgresql-18.4.tar.bz2){.ulink}

-   Download MD5 sum: f985597ebb8e71f338beb2bef974b6ed

-   Download size: 22 MB

-   Estimated disk space required: 348 MB (with tests)

-   Estimated build time: 1.0 SBU (with parallelism=4, add 0.1 SBU for tests)
:::

### PostgreSQL Dependencies

#### Optional

[ICU-78.3](../general/icu.md "icu-78.3"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, [OpenLDAP-2.6.13](openldap.md "OpenLDAP-2.6.13"){.xref}, [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref} and [Bonjour](https://developer.apple.com/bonjour/){.ulink}

#### Optional (To Generate Documentation)

[fop-2.11](../pst/fop.md "fop-2.11"){.xref}, [docbook-4.5-dtd](../pst/docbook-4.5-dtd.md "docbook-4.5-dtd"){.xref}, [docbook-dsssl-1.79](../pst/docbook-dsssl.md "docbook-dsssl-1.79"){.xref}, [DocBook-utils-0.6.14](../pst/docbook-utils.md "DocBook-utils-0.6.14"){.xref}, [OpenJade-1.3.2](../pst/openjade.md "OpenJade-1.3.2"){.xref}, and [SGMLSpm-1.1](../general/perl-modules.md#perl-sgmlspm "SGMLSpm-1.1"){.xref}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/postgresql](https://wiki.linuxfromscratch.org/blfs/wiki/postgresql){.ulink}
:::::

::::::: {.installation lang="en"}
## Installation of PostgreSQL {#installation-of-postgresql .sect2}

For enhanced security, it is better to have a dedicated group and user for running the PostgreSQL server. First, issue as the `root`{.systemitem} user:

``` root
groupadd -g 41 postgres &&
useradd -c "PostgreSQL Server" -g postgres -d /srv/pgsql/data \
        -u 41 postgres
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There are several configuration items that add additional functionality with optional packages to [PostgreSQL]{.application}. Use [**./configure --help**]{.command} to see a list.
:::

Install [PostgreSQL]{.application} with the following commands:

``` userinput
sed -e '/DEFAULT_PGSOCKET_DIR/s@/tmp@/run/postgresql@' \
    -i src/include/pg_config_manual.h                  &&

./configure --prefix=/usr \
            --docdir=/usr/share/doc/postgresql-18.4 &&
make
```

There are a number of programs in the `contrib/`{.filename} directory. If you are going to run this installation as a server and wish to build some of them, enter [**make -C contrib**]{.command} or [**make -C contrib/*`<SUBDIR-NAME>`***]{.command} for each subdirectory.

Tests must be run as an unprivileged user because they need to start a temporary server and this is prevented as the root user. For the same reason, you need to stop all PostgreSQL servers if any are running. If a previous version of PostgreSQL is installed, it may be necessary to use [**--disable-rpath**]{.command} with [**configure**]{.command} to avoid failures, but [*installing the binaries created using this switch is not recommended*]{.emphasis}. To test the results, issue: [**make check**]{.command}.

:::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you are installing [PostgreSQL]{.application} to upgrade an existing installation, there are important steps that you need to follow. If the major version of the new build is greater than the previous version, there is a chance that the data file format has changed. New software cannot use the existing data files. In this case, the server will not start because the old programs have been overwritten, so the data is unavailable until it's file format has been converted.

Before upgrading an existing installation of PostgreSQL, check the documentation for any considerations that you must keep in mind during the upgrade. Note that new major versions might use a different binary format in the data objects, causing potential incompatibilities. For more information, please review upstream's documentation about upgrading PostgreSQL here: [https://www.postgresql.org/docs/current/upgrading.html](https://www.postgresql.org/docs/current/upgrading.md){.ulink}.

At this point, you may have both the old and the new binaries installed on your filesystem. These binaries can be used to perform an upgrade of your existing database files. For the following instructions it is assumed that

::: itemizedlist
-   The actual data files are stored in `/srv/pgsql/data`{.filename}

-   The upgraded data files will be stored in `/srv/pgsql/newdata`{.filename}

-   There is enough disk space to hold the actual data files twice. The upgrade is not an inline upgrade but it will copy the data to new database files.
:::

First, do a temporary install which makes access to the new binaries much easier:

``` userinput
make DESTDIR=$(pwd)/DESTDIR install
```

Next, create a directory which is writable by the `postgres`{.systemitem} user, as the `root`{.systemitem} user:

``` userinput
install -d -o postgres $(pwd)/DESTDIR/tmp
```

Now, stop the existing instance of [PostgreSQL]{.application} and start the upgrade process as the `root`{.systemitem} user:

``` userinput
pushd $(pwd)/DESTDIR/tmp
systemctl stop postgresql
su postgres -c "../usr/bin/initdb -D /srv/pgsql/newdata"
su postgres -c "../usr/bin/pg_upgrade \
                    -d /srv/pgsql/data    -b /usr/bin \
                    -D /srv/pgsql/newdata -B ../usr/bin"
popd
```

At this point, your database files are available in two locations on disk. The old data is located in `/srv/pgsql/data`{.filename}, and the new data is in `/srv/pgsql/newdata`{.filename}. Backing up the old database files is recommended before continuing.

Next, remove the old database files, and rename the new data directory as the `root`{.systemitem} user:

``` userinput
rm -rf /srv/pgsql/data
mv /srv/pgsql/newdata /srv/pgsql/data
```
::::

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you had the optional dependencies installed that are needed to generate the documentation, install it as the `root`{.systemitem} user:

``` root
make install-docs
```

If you made any of the `contrib/`{.filename} programs, as the `root`{.systemitem} user:

``` userinput
make -C contrib/<SUBDIR-NAME> install
```

::: {.admon .tip}
![\[Tip\]](../images/tip.png)

### Tip

If you only intend to use [PostgreSQL]{.application} as a client to connect to a server on another machine, your installation is complete and you should not run the remaining commands.
:::

If you have upgraded an existing database, skip the rest of the commands because your database is ready to use. If this is the first time you install [PostgreSQL]{.application}, continue with the initialization.

Initialize a database cluster with the following commands issued by the `root`{.systemitem} user:

``` root
install -v -dm700 /srv/pgsql/data &&
install -v -dm755 /run/postgresql &&
chown -Rv postgres:postgres /srv/pgsql /run/postgresql
```

Now, initialize the database as the `root`{.systemitem} user:

``` root
su - postgres -c '/usr/bin/initdb -D /srv/pgsql/data'
```
:::::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i ...**]{.command}: This sed changes the server socket location from `/tmp`{.filename} to `/run/postgresql`{.filename}.

`--with-openssl`{.option}: builds the package with support for [OpenSSL]{.application} encrypted connections.

`--with-perl`{.option}: builds the PL/Perl server-side language.

`--with-python`{.option}: builds the PL/Python server-side language.

`--with-tcl`{.option}: builds the PL/Tcl server-side language.
:::

::::::: {.configuration lang="en"}
## Configuring PostgreSQL {#configuring-postgresql .sect2}

::: {.sect3 lang="en"}
### []{#postgresql-config}Config Files {#config-files .sect3}

`$PGDATA/pg_ident.con`{.filename}, `$PGDATA/pg_hba.conf`{.filename}, and `$PGDATA/postgresql.conf`{.filename}

The `PGDATA`{.envar} environment variable is used to distinguish database clusters from one another by setting it to the value of the directory which contains the cluster desired. The three configuration files exist in every `PGDATA/`{.filename} directory. Details on the format of the files and the options that can be set in each can be found in `/usr/share/doc/postgresql-18.4/html/index.html`{.filename}.
:::

::: {.sect3 lang="en"}
### []{#postgresql-init} Systemd Unit {#systemd-unit .sect3}

Install the [`postgresql.service`{.filename} unit]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package:

``` root
make install-postgresql
```
:::

:::: {.sect3 lang="en"}
### Starting the PostgreSQL Server and Creating a Sample Database {#starting-the-postgresql-server-and-creating-a-sample-database .sect3}

The database server can be manually started with the following command (as the `root`{.systemitem} user):

``` root
su - postgres -c '/usr/bin/postgres -D /srv/pgsql/data > \
                  /srv/pgsql/data/logfile 2>&1 &'
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you are scripting this part, you should wait for the server to start before going on, by adding for example [**sleep 2**]{.command} after the above command.
:::

The instructions below show how to create a database, add a table to it, insert some rows into the table and select them, to verify that the installation is working properly. Still as user `root`{.systemitem}, issue:

``` root
su - postgres -c '/usr/bin/createdb test' &&
echo "create table t1 ( name varchar(20), state_province varchar(20) );" \
    | (su - postgres -c '/usr/bin/psql test ') &&
echo "insert into t1 values ('Billy', 'NewYork');" \
    | (su - postgres -c '/usr/bin/psql test ') &&
echo "insert into t1 values ('Evanidus', 'Quebec');" \
    | (su - postgres -c '/usr/bin/psql test ') &&
echo "insert into t1 values ('Jesse', 'Ontario');" \
    | (su - postgres -c '/usr/bin/psql test ') &&
echo "select * from t1;" | (su - postgres -c '/usr/bin/psql test')
```

When you are done with testing, you can shut down the server, by issuing as `root`{.systemitem}:

``` root
su - postgres -c "/usr/bin/pg_ctl stop -D /srv/pgsql/data"
```
::::
:::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [clusterdb, createdb, createuser, dropdb, dropuser, ecpg, initdb, pg_amcheck, pg_archivecleanup, pg_basebackup, pg_checksums, pg_config, pg_controldata, pg_ctl, pg_dump, pg_dumpall, pg_isready, pg_receivewal, pg_recvlogical, pg_resetwal, pg_restore, pg_rewind, pg_test_fsync, pg_test_timing, pg_upgrade, pg_verifybackup, pg_waldump, pgbench, postgres, psql, reindexdb, vacuumdb, optionally, if Tcl support has been built, pltcl_delmod, pltcl_listmod, pltcl_loadmod, and optionally (in contrib/) oid2name, pg_standby, vacuumlo, and many others]{.segbody}
:::

::: seg
**Installed Libraries:** [libecpg.{so,a}, libecpg_compat.{so,a}, libpgcommon.a, libpgcommon_shlib.a, libpgfeutils.a, libpgport.a, libpgport_shlib.a, libpgtypes.{so,a}, libpq.{so,a}, various charset modules and optionally programming language modules under /usr/lib/postgresql]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/{libpq,postgresql}, /usr/lib/postgresql, /usr/share/{doc/postgresql-18.4,postgresql}, and /srv/pgsql]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#clusterdb}[[**clusterdb**]{.command}]{.term}                   is a utility for reclustering tables in a [PostgreSQL]{.application} database
  []{#createdb}[[**createdb**]{.command}]{.term}                     creates a new [PostgreSQL]{.application} database
  []{#createuser}[[**createuser**]{.command}]{.term}                 defines a new [PostgreSQL]{.application} user account
  []{#dropdb}[[**dropdb**]{.command}]{.term}                         removes a [PostgreSQL]{.application} database
  []{#dropuser}[[**dropuser**]{.command}]{.term}                     removes a [PostgreSQL]{.application} user account
  []{#ecpg}[[**ecpg**]{.command}]{.term}                             is the embedded SQL preprocessor
  []{#initdb}[[**initdb**]{.command}]{.term}                         creates a new database cluster
  []{#oid2name}[[**oid2name**]{.command}]{.term}                     resolves OIDs (Object IDs) and file nodes in a PostgreSQL data directory
  []{#pg_amcheck}[[**pg_amcheck**]{.command}]{.term}                 checks for corruption in one or more PostgreSQL databases
  []{#pg_archivecleanup}[[**pg_archivecleanup**]{.command}]{.term}   cleans up PostgreSQL WAL (write-ahead log) archive files
  []{#pg_basebackup}[[**pg_basebackup**]{.command}]{.term}           takes base backups of a running [PostgreSQL]{.application} cluster
  []{#pg_checksums}[[**pg_checksums**]{.command}]{.term}             enables, disables, or checks data checksums in a [PostgreSQL]{.application} database cluster
  []{#pg_config}[[**pg_config**]{.command}]{.term}                   retrieves [PostgreSQL]{.application} version information
  []{#pg_controldata}[[**pg_controldata**]{.command}]{.term}         returns information initialized during [**initdb**]{.command}, such as the catalog version and server locale
  []{#pg_ctl}[[**pg_ctl**]{.command}]{.term}                         controls stopping and starting the database server
  []{#pg_dump}[[**pg_dump**]{.command}]{.term}                       dumps database data and metadata into scripts which are used to recreate the database
  []{#pg_dumpall}[[**pg_dumpall**]{.command}]{.term}                 recursively calls [**pg_dump**]{.command} for each database in a cluster
  []{#pg_isready}[[**pg_isready**]{.command}]{.term}                 checks the connection status of a PostgreSQL server
  []{#pg_receivewal}[[**pg_receivewal**]{.command}]{.term}           is used to stream write-ahead logs from a PostgreSQL server
  []{#pg_recvlogical}[[**pg_recvlogical**]{.command}]{.term}         controls PostgreSQL logical decoding streams
  []{#pg_resetwal}[[**pg_resetwal**]{.command}]{.term}               resets the write-ahead log and other control information of a PostgreSQL database cluster
  []{#pg_restore}[[**pg_restore**]{.command}]{.term}                 creates databases from dump files created by [**pg_dump**]{.command}
  []{#pg_rewind}[[**pg_rewind**]{.command}]{.term}                   synchronizes a PostgreSQL data directory with another data directory that was forked from the first one
  []{#pg_standby}[[**pg_standby**]{.command}]{.term}                 supports the creation of a PostgreSQL warm standby server
  []{#pg_test_fsync}[[**pg_test_fsync**]{.command}]{.term}           determines the fastest wal_sync method for PostgreSQL
  []{#pg_test_timing}[[**pg_test_timing**]{.command}]{.term}         measures timing overhead
  []{#pg_upgrade}[[**pg_upgrade**]{.command}]{.term}                 upgrades a PostgreSQL server instance
  []{#pg_verifybackup}[[**pg_verifybackup**]{.command}]{.term}       verifies the integrity of a base backup of a PostgreSQL cluster
  []{#pg_waldump}[[**pg_waldump**]{.command}]{.term}                 displays a human-readable rendering of the write-ahead log of a PostgreSQL database cluster
  []{#pgbench}[[**pgbench**]{.command}]{.term}                       runs a benchmark test on PostgreSQL
  []{#pltcl_delmod}[[**pltcl_delmod**]{.command}]{.term}             is a support script used to delete a module from a PL/[Tcl]{.application} table. The command requires the [Pgtcl](https://flightaware.github.io/Pgtcl/){.ulink} package to be installed
  []{#pltcl_listmod}[[**pltcl_listmod**]{.command}]{.term}           is a support script used to list the modules in a PL/[Tcl]{.application} table. The command requires the [Pgtcl](https://flightaware.github.io/Pgtcl/){.ulink} package to be installed
  []{#pltcl_loadmod}[[**pltcl_loadmod**]{.command}]{.term}           is a support script used to load a module into a PL/[Tcl]{.application} table. The command requires the [Pgtcl](https://flightaware.github.io/Pgtcl/){.ulink} package to be installed
  []{#postgres}[[**postgres**]{.command}]{.term}                     is the PostgreSQL database server
  []{#psql}[[**psql**]{.command}]{.term}                             is a console based database shell
  []{#reindexdb}[[**reindexdb**]{.command}]{.term}                   is a utility for rebuilding indexes in a database
  []{#vacuumdb}[[**vacuumdb**]{.command}]{.term}                     compacts databases and generates statistics for the query analyzer
  []{#vacuumlo}[[**vacuumlo**]{.command}]{.term}                     removes orphaned large objects from a PostgreSQL database
  []{#libecpg}[`libecpg.{so,a}`{.filename}]{.term}                   contains functions to support embedded SQL in C programs
  []{#libecpg_compat}[`libecpg_compat.{so,a}`{.filename}]{.term}     is the ecpg compatibility library
  []{#libgport}[`libgport.a`{.filename}]{.term}                      is the port-specific subsystem of the Postgres backend
  []{#libpgtypes}[`libpgtypes.{so,a}`{.filename}]{.term}             contains functions for dealing with Postgres data types
  []{#libpq}[`libpq.{so,a}`{.filename}]{.term}                       is the C programmer's API to Postgres
  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::::

::: navfooter
-   [Prev](mariadb.md "MariaDB-12.3.2"){accesskey="p"}

    MariaDB-12.3.2

-   [Next](other.md "Other Server Software"){accesskey="n"}

    Other Server Software

-   [Up](databases.md "Chapter 22. Databases"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
