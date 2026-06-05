<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 22. Databases

-   [Prev](mariadb.md "MariaDB-12.3.2")

    MariaDB-12.3.2

-   [Next](other.md "Other Server Software")

    Other Server Software

-   [Up](databases.md "Chapter 22. Databases")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# PostgreSQL-18.4 {#postgresql-18.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to PostgreSQL {#introduction-to-postgresql}

<span class="application">PostgreSQL</span> is an advanced object-relational database management system (ORDBMS), derived from the Berkeley Postgres database management system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftp.postgresql.org/pub/source/v18.4/postgresql-18.4.tar.bz2">https://ftp.postgresql.org/pub/source/v18.4/postgresql-18.4.tar.bz2</a>

-   Download MD5 sum: f985597ebb8e71f338beb2bef974b6ed

-   Download size: 22 MB

-   Estimated disk space required: 348 MB (with tests)

-   Estimated build time: 1.0 SBU (with parallelism=4, add 0.1 SBU for tests)
</div>

### PostgreSQL Dependencies

#### Optional

<a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="../general/libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, <a class="xref" href="openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a> and <a class="ulink" href="https://developer.apple.com/bonjour/">Bonjour</a>

#### Optional (To Generate Documentation)

<a class="xref" href="../pst/fop.md" title="fop-2.11">fop-2.11</a>, <a class="xref" href="../pst/docbook-4.5-dtd.md" title="docbook-4.5-dtd">docbook-4.5-dtd</a>, <a class="xref" href="../pst/docbook-dsssl.md" title="docbook-dsssl-1.79">docbook-dsssl-1.79</a>, <a class="xref" href="../pst/docbook-utils.md" title="DocBook-utils-0.6.14">DocBook-utils-0.6.14</a>, <a class="xref" href="../pst/openjade.md" title="OpenJade-1.3.2">OpenJade-1.3.2</a>, and <a class="xref" href="../general/perl-modules.md#perl-sgmlspm" title="SGMLSpm-1.1">SGMLSpm-1.1</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/postgresql">https://wiki.linuxfromscratch.org/blfs/wiki/postgresql</a>
</div>

<div class="installation" lang="en">
## Installation of PostgreSQL {#installation-of-postgresql}

For enhanced security, it is better to have a dedicated group and user for running the PostgreSQL server. First, issue as the <code class="systemitem">root</code> user:

```bash
groupadd -g 41 postgres &&
useradd -c "PostgreSQL Server" -g postgres -d /srv/pgsql/data \
        -u 41 postgres
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

There are several configuration items that add additional functionality with optional packages to <span class="application">PostgreSQL</span>. Use <span class="command"><strong>./configure --help</strong></span> to see a list.
</div>

Install <span class="application">PostgreSQL</span> with the following commands:

```bash
sed -e '/DEFAULT_PGSOCKET_DIR/s@/tmp@/run/postgresql@' \
    -i src/include/pg_config_manual.h                  &&

./configure --prefix=/usr \
            --docdir=/usr/share/doc/postgresql-18.4 &&
make
```

There are a number of programs in the <code class="filename">contrib/</code> directory. If you are going to run this installation as a server and wish to build some of them, enter <span class="command"><strong>make -C contrib</strong></span> or <span class="command"><strong>make -C contrib/<em>`<SUBDIR-NAME>`</strong></em></span> for each subdirectory.

Tests must be run as an unprivileged user because they need to start a temporary server and this is prevented as the root user. For the same reason, you need to stop all PostgreSQL servers if any are running. If a previous version of PostgreSQL is installed, it may be necessary to use <span class="command"><strong>--disable-rpath</strong></span> with <span class="command"><strong>configure</strong></span> to avoid failures, but <span class="emphasis"><em>installing the binaries created using this switch is not recommended</em></span>. To test the results, issue: <span class="command"><strong>make check</strong></span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you are installing <span class="application">PostgreSQL</span> to upgrade an existing installation, there are important steps that you need to follow. If the major version of the new build is greater than the previous version, there is a chance that the data file format has changed. New software cannot use the existing data files. In this case, the server will not start because the old programs have been overwritten, so the data is unavailable until it's file format has been converted.

Before upgrading an existing installation of PostgreSQL, check the documentation for any considerations that you must keep in mind during the upgrade. Note that new major versions might use a different binary format in the data objects, causing potential incompatibilities. For more information, please review upstream's documentation about upgrading PostgreSQL here: <a class="ulink" href="https://www.postgresql.org/docs/current/upgrading.md">https://www.postgresql.org/docs/current/upgrading.html</a>.

At this point, you may have both the old and the new binaries installed on your filesystem. These binaries can be used to perform an upgrade of your existing database files. For the following instructions it is assumed that

<div class="itemizedlist">
-   The actual data files are stored in <code class="filename">/srv/pgsql/data</code>

-   The upgraded data files will be stored in <code class="filename">/srv/pgsql/newdata</code>

-   There is enough disk space to hold the actual data files twice. The upgrade is not an inline upgrade but it will copy the data to new database files.
</div>

First, do a temporary install which makes access to the new binaries much easier:

```bash
make DESTDIR=$(pwd)/DESTDIR install
```

Next, create a directory which is writable by the <code class="systemitem">postgres</code> user, as the <code class="systemitem">root</code> user:

```bash
install -d -o postgres $(pwd)/DESTDIR/tmp
```

Now, stop the existing instance of <span class="application">PostgreSQL</span> and start the upgrade process as the <code class="systemitem">root</code> user:

```bash
pushd $(pwd)/DESTDIR/tmp
systemctl stop postgresql
su postgres -c "../usr/bin/initdb -D /srv/pgsql/newdata"
su postgres -c "../usr/bin/pg_upgrade \
                    -d /srv/pgsql/data    -b /usr/bin \
                    -D /srv/pgsql/newdata -B ../usr/bin"
popd
```

At this point, your database files are available in two locations on disk. The old data is located in <code class="filename">/srv/pgsql/data</code>, and the new data is in <code class="filename">/srv/pgsql/newdata</code>. Backing up the old database files is recommended before continuing.

Next, remove the old database files, and rename the new data directory as the <code class="systemitem">root</code> user:

```bash
rm -rf /srv/pgsql/data
mv /srv/pgsql/newdata /srv/pgsql/data
```
</div>

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you had the optional dependencies installed that are needed to generate the documentation, install it as the <code class="systemitem">root</code> user:

```bash
make install-docs
```

If you made any of the <code class="filename">contrib/</code> programs, as the <code class="systemitem">root</code> user:

```bash
make -C contrib/<SUBDIR-NAME> install
```

<div class="admon tip">
![\[Tip\]](../images/tip.png)

### Tip

If you only intend to use <span class="application">PostgreSQL</span> as a client to connect to a server on another machine, your installation is complete and you should not run the remaining commands.
</div>

If you have upgraded an existing database, skip the rest of the commands because your database is ready to use. If this is the first time you install <span class="application">PostgreSQL</span>, continue with the initialization.

Initialize a database cluster with the following commands issued by the <code class="systemitem">root</code> user:

```bash
install -v -dm700 /srv/pgsql/data &&
install -v -dm755 /run/postgresql &&
chown -Rv postgres:postgres /srv/pgsql /run/postgresql
```

Now, initialize the database as the <code class="systemitem">root</code> user:

```bash
su - postgres -c '/usr/bin/initdb -D /srv/pgsql/data'
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i ...</strong></span>: This sed changes the server socket location from <code class="filename">/tmp</code> to <code class="filename">/run/postgresql</code>.

<code class="option">--with-openssl</code>: builds the package with support for <span class="application">OpenSSL</span> encrypted connections.

<code class="option">--with-perl</code>: builds the PL/Perl server-side language.

<code class="option">--with-python</code>: builds the PL/Python server-side language.

<code class="option">--with-tcl</code>: builds the PL/Tcl server-side language.
</div>

<div class="configuration" lang="en">
## Configuring PostgreSQL {#configuring-postgresql}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">$PGDATA/pg_ident.con</code>, <code class="filename">$PGDATA/pg_hba.conf</code>, and <code class="filename">$PGDATA/postgresql.conf</code>

The <code class="envar">PGDATA</code> environment variable is used to distinguish database clusters from one another by setting it to the value of the directory which contains the cluster desired. The three configuration files exist in every <code class="filename">PGDATA/</code> directory. Details on the format of the files and the options that can be set in each can be found in <code class="filename">/usr/share/doc/postgresql-18.4/html/index.html</code>.
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

Install the <span class="phrase"><code class="filename">postgresql.service</code> unit</span> included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package:

```bash
make install-postgresql
```
</div>

<div class="sect3" lang="en">
### Starting the PostgreSQL Server and Creating a Sample Database {#starting-the-postgresql-server-and-creating-a-sample-database}

The database server can be manually started with the following command (as the <code class="systemitem">root</code> user):

```bash
su - postgres -c '/usr/bin/postgres -D /srv/pgsql/data > \
                  /srv/pgsql/data/logfile 2>&1 &'
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you are scripting this part, you should wait for the server to start before going on, by adding for example <span class="command"><strong>sleep 2</strong></span> after the above command.
</div>

The instructions below show how to create a database, add a table to it, insert some rows into the table and select them, to verify that the installation is working properly. Still as user <code class="systemitem">root</code>, issue:

```bash
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

When you are done with testing, you can shut down the server, by issuing as <code class="systemitem">root</code>:

```bash
su - postgres -c "/usr/bin/pg_ctl stop -D /srv/pgsql/data"
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">clusterdb, createdb, createuser, dropdb, dropuser, ecpg, initdb, pg_amcheck, pg_archivecleanup, pg_basebackup, pg_checksums, pg_config, pg_controldata, pg_ctl, pg_dump, pg_dumpall, pg_isready, pg_receivewal, pg_recvlogical, pg_resetwal, pg_restore, pg_rewind, pg_test_fsync, pg_test_timing, pg_upgrade, pg_verifybackup, pg_waldump, pgbench, postgres, psql, reindexdb, vacuumdb, optionally, if Tcl support has been built, pltcl_delmod, pltcl_listmod, pltcl_loadmod, and optionally (in contrib/) oid2name, pg_standby, vacuumlo, and many others</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libecpg.{so,a}, libecpg_compat.{so,a}, libpgcommon.a, libpgcommon_shlib.a, libpgfeutils.a, libpgport.a, libpgport_shlib.a, libpgtypes.{so,a}, libpq.{so,a}, various charset modules and optionally programming language modules under /usr/lib/postgresql</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/{libpq,postgresql}, /usr/lib/postgresql, /usr/share/{doc/postgresql-18.4,postgresql}, and /srv/pgsql</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="clusterdb"></a><span class="command"><span class="term"><strong>clusterdb</strong></span></span>                   is a utility for reclustering tables in a <span class="application">PostgreSQL</span> database
  <a id="createdb"></a><span class="command"><span class="term"><strong>createdb</strong></span></span>                     creates a new <span class="application">PostgreSQL</span> database
  <a id="createuser"></a><span class="command"><span class="term"><strong>createuser</strong></span></span>                 defines a new <span class="application">PostgreSQL</span> user account
  <a id="dropdb"></a><span class="command"><span class="term"><strong>dropdb</strong></span></span>                         removes a <span class="application">PostgreSQL</span> database
  <a id="dropuser"></a><span class="command"><span class="term"><strong>dropuser</strong></span></span>                     removes a <span class="application">PostgreSQL</span> user account
  <a id="ecpg"></a><span class="command"><span class="term"><strong>ecpg</strong></span></span>                             is the embedded SQL preprocessor
  <a id="initdb"></a><span class="command"><span class="term"><strong>initdb</strong></span></span>                         creates a new database cluster
  <a id="oid2name"></a><span class="command"><span class="term"><strong>oid2name</strong></span></span>                     resolves OIDs (Object IDs) and file nodes in a PostgreSQL data directory
  <a id="pg_amcheck"></a><span class="command"><span class="term"><strong>pg_amcheck</strong></span></span>                 checks for corruption in one or more PostgreSQL databases
  <a id="pg_archivecleanup"></a><span class="command"><span class="term"><strong>pg_archivecleanup</strong></span></span>   cleans up PostgreSQL WAL (write-ahead log) archive files
  <a id="pg_basebackup"></a><span class="command"><span class="term"><strong>pg_basebackup</strong></span></span>           takes base backups of a running <span class="application">PostgreSQL</span> cluster
  <a id="pg_checksums"></a><span class="command"><span class="term"><strong>pg_checksums</strong></span></span>             enables, disables, or checks data checksums in a <span class="application">PostgreSQL</span> database cluster
  <a id="pg_config"></a><span class="command"><span class="term"><strong>pg_config</strong></span></span>                   retrieves <span class="application">PostgreSQL</span> version information
  <a id="pg_controldata"></a><span class="command"><span class="term"><strong>pg_controldata</strong></span></span>         returns information initialized during <span class="command"><strong>initdb</strong></span>, such as the catalog version and server locale
  <a id="pg_ctl"></a><span class="command"><span class="term"><strong>pg_ctl</strong></span></span>                         controls stopping and starting the database server
  <a id="pg_dump"></a><span class="command"><span class="term"><strong>pg_dump</strong></span></span>                       dumps database data and metadata into scripts which are used to recreate the database
  <a id="pg_dumpall"></a><span class="command"><span class="term"><strong>pg_dumpall</strong></span></span>                 recursively calls <span class="command"><strong>pg_dump</strong></span> for each database in a cluster
  <a id="pg_isready"></a><span class="command"><span class="term"><strong>pg_isready</strong></span></span>                 checks the connection status of a PostgreSQL server
  <a id="pg_receivewal"></a><span class="command"><span class="term"><strong>pg_receivewal</strong></span></span>           is used to stream write-ahead logs from a PostgreSQL server
  <a id="pg_recvlogical"></a><span class="command"><span class="term"><strong>pg_recvlogical</strong></span></span>         controls PostgreSQL logical decoding streams
  <a id="pg_resetwal"></a><span class="command"><span class="term"><strong>pg_resetwal</strong></span></span>               resets the write-ahead log and other control information of a PostgreSQL database cluster
  <a id="pg_restore"></a><span class="command"><span class="term"><strong>pg_restore</strong></span></span>                 creates databases from dump files created by <span class="command"><strong>pg_dump</strong></span>
  <a id="pg_rewind"></a><span class="command"><span class="term"><strong>pg_rewind</strong></span></span>                   synchronizes a PostgreSQL data directory with another data directory that was forked from the first one
  <a id="pg_standby"></a><span class="command"><span class="term"><strong>pg_standby</strong></span></span>                 supports the creation of a PostgreSQL warm standby server
  <a id="pg_test_fsync"></a><span class="command"><span class="term"><strong>pg_test_fsync</strong></span></span>           determines the fastest wal_sync method for PostgreSQL
  <a id="pg_test_timing"></a><span class="command"><span class="term"><strong>pg_test_timing</strong></span></span>         measures timing overhead
  <a id="pg_upgrade"></a><span class="command"><span class="term"><strong>pg_upgrade</strong></span></span>                 upgrades a PostgreSQL server instance
  <a id="pg_verifybackup"></a><span class="command"><span class="term"><strong>pg_verifybackup</strong></span></span>       verifies the integrity of a base backup of a PostgreSQL cluster
  <a id="pg_waldump"></a><span class="command"><span class="term"><strong>pg_waldump</strong></span></span>                 displays a human-readable rendering of the write-ahead log of a PostgreSQL database cluster
  <a id="pgbench"></a><span class="command"><span class="term"><strong>pgbench</strong></span></span>                       runs a benchmark test on PostgreSQL
  <a id="pltcl_delmod"></a><span class="command"><span class="term"><strong>pltcl_delmod</strong></span></span>             is a support script used to delete a module from a PL/<span class="application">Tcl</span> table. The command requires the <a class="ulink" href="https://flightaware.github.io/Pgtcl/">Pgtcl</a> package to be installed
  <a id="pltcl_listmod"></a><span class="command"><span class="term"><strong>pltcl_listmod</strong></span></span>           is a support script used to list the modules in a PL/<span class="application">Tcl</span> table. The command requires the <a class="ulink" href="https://flightaware.github.io/Pgtcl/">Pgtcl</a> package to be installed
  <a id="pltcl_loadmod"></a><span class="command"><span class="term"><strong>pltcl_loadmod</strong></span></span>           is a support script used to load a module into a PL/<span class="application">Tcl</span> table. The command requires the <a class="ulink" href="https://flightaware.github.io/Pgtcl/">Pgtcl</a> package to be installed
  <a id="postgres"></a><span class="command"><span class="term"><strong>postgres</strong></span></span>                     is the PostgreSQL database server
  <a id="psql"></a><span class="command"><span class="term"><strong>psql</strong></span></span>                             is a console based database shell
  <a id="reindexdb"></a><span class="command"><span class="term"><strong>reindexdb</strong></span></span>                   is a utility for rebuilding indexes in a database
  <a id="vacuumdb"></a><span class="command"><span class="term"><strong>vacuumdb</strong></span></span>                     compacts databases and generates statistics for the query analyzer
  <a id="vacuumlo"></a><span class="command"><span class="term"><strong>vacuumlo</strong></span></span>                     removes orphaned large objects from a PostgreSQL database
  <a id="libecpg"></a><span class="term"><code class="filename">libecpg.{so,a}</code></span>                   contains functions to support embedded SQL in C programs
  <a id="libecpg_compat"></a><span class="term"><code class="filename">libecpg_compat.{so,a}</code></span>     is the ecpg compatibility library
  <a id="libgport"></a><span class="term"><code class="filename">libgport.a</code></span>                      is the port-specific subsystem of the Postgres backend
  <a id="libpgtypes"></a><span class="term"><code class="filename">libpgtypes.{so,a}</code></span>             contains functions for dealing with Postgres data types
  <a id="libpq"></a><span class="term"><code class="filename">libpq.{so,a}</code></span>                       is the C programmer's API to Postgres
  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mariadb.md "MariaDB-12.3.2")

    MariaDB-12.3.2

-   [Next](other.md "Other Server Software")

    Other Server Software

-   [Up](databases.md "Chapter 22. Databases")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
