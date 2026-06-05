<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 22. Databases

-   [Prev](lmdb.md "lmdb-0.9.35")

    lmdb-0.9.35

-   [Next](postgresql.md "PostgreSQL-18.4")

    PostgreSQL-18.4

-   [Up](databases.md "Chapter 22. Databases")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# MariaDB-12.3.2 {#mariadb-12.3.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to MariaDB {#introduction-to-mariadb}

<span class="application">MariaDB</span> is a community-developed fork and a drop-in replacement for the <span class="application">MySQL</span> relational database management system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.mariadb.org/interstitial/mariadb-12.3.2/source/mariadb-12.3.2.tar.gz">https://downloads.mariadb.org/interstitial/mariadb-12.3.2/source/mariadb-12.3.2.tar.gz</a>

-   Download MD5 sum: e6ec06ab51a7afa581562499616624a4

-   Download size: 115 MB

-   Estimated disk space required: 2.5 GB (832 MB installed)

-   Estimated build time: 4.3 SBU (with parallelism=8, add 2.6 SBU for tests)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/mariadb-12.3.2-openssl4_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/mariadb-12.3.2-openssl4_fixes-1.patch</a>
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The installed size of MariaDB is 778 MB, but this can be reduced by about 270 MB, if desired, by removing the <code class="filename">/usr/share/mariadb/test</code> directory after installation.
</div>

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

If you are upgrading an existing database, please see the <a class="ulink" href="https://mariadb.com/docs/release-notes/community-server/12.3/mariadb-12.3-changes-and-improvements">MariaDB Release Notes</a> for additional information, and use the instructions after the Configuration Information section to ensure a safe upgrade.
</div>

### MariaDB Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Recommended

<a class="xref" href="../basicnet/libevent.md" title="libevent-2.1.12">libevent-2.1.12</a>

#### Optional

<a class="xref" href="../general/boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a>, <a class="xref" href="../general/fmt.md" title="fmt-12.1.0">fmt-12.1.0</a>, <a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a>, <a class="xref" href="../general/java.md" title="Java-21.0.10">Java-21.0.10</a>, <a class="xref" href="../general/libaio.md" title="libaio-0.3.113">libaio-0.3.113</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, <a class="xref" href="../general/lzo.md" title="LZO-2.10">LZO-2.10</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../general/ruby.md" title="Ruby-4.0.5">Ruby-4.0.5</a>, <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>, <a class="xref" href="../general/unixodbc.md" title="unixODBC-2.3.14">unixODBC-2.3.14</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="ulink" href="https://groonga.org/">Groonga</a>, <a class="ulink" href="https://www.phontron.com/kytea/">KyTea</a>, <a class="ulink" href="https://sourceforge.net/projects/judy/">Judy</a>, <a class="ulink" href="https://snowballstem.org/">libstemmer</a>, <a class="ulink" href="https://taku910.github.io/mecab">MeCab</a>, <a class="ulink" href="https://msgpack.org/">MessagePack</a>, <a class="ulink" href="https://www.mruby.org/">mruby</a>, <a class="ulink" href="https://mariadb.com/kb/en/myrocks/">MyRocks</a>, <a class="ulink" href="https://github.com/google/snappy">Snappy</a>, and <a class="ulink" href="https://zeromq.org/">ZeroMQ</a>
</div>

<div class="installation" lang="en">
## Installation of MariaDB {#installation-of-mariadb}

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

MariaDB and MySQL cannot be installed on the same system without extensive changes to the build configuration of one of the two applications.
</div>

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

If you are upgrading MariaDB from 11.x to 12.x, please pay special attention to the upgrade notes later in this page. Users of existing MariaDB installations may want to consider staying on the 11.8.x LTS branch instead, especially if they rely on the Galera functionality which was removed from MariaDB-12.x.
</div>

For security reasons, running the server as an unprivileged user and group is strongly encouraged. Issue the following (as <code class="systemitem">root</code>) to create the user and group:

```bash
groupadd -g 40 mariadb &&
useradd -c "MariaDB Server" -d /srv/mariadb -g mariadb -s /bin/false -u 40 mariadb
```

Fix runtime issues with OpenSSL-4.0 and later:

```bash
patch -Np1 -i ../mariadb-12.3.2-openssl4_fixes-1.patch
```

Install <span class="application">MariaDB</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_BUILD_TYPE=Release                       \
      -D CMAKE_INSTALL_PREFIX=/usr                      \
      -D GRN_LOG_PATH=/var/log/groonga.log              \
      -D INSTALL_DOCDIR=share/doc/mariadb-12.3.2        \
      -D INSTALL_DOCREADMEDIR=share/doc/mariadb-12.3.2  \
      -D INSTALL_MANDIR=share/man                       \
      -D INSTALL_MYSQLSHAREDIR=share/mariadb            \
      -D INSTALL_MYSQLTESTDIR=share/mariadb/test        \
      -D INSTALL_PAMDIR=lib/security                    \
      -D INSTALL_PAMDATADIR=/etc/security               \
      -D INSTALL_PLUGINDIR=lib/mariadb/plugin           \
      -D INSTALL_SBINDIR=sbin                           \
      -D INSTALL_SCRIPTDIR=bin                          \
      -D INSTALL_SQLBENCHDIR=share/mariadb/bench        \
      -D INSTALL_SUPPORTFILESDIR=share/mariadb          \
      -D MYSQL_DATADIR=/srv/mariadb                     \
      -D MYSQL_UNIX_ADDR=/run/mariadb/mariadb.sock      \
      -D WITH_EXTRA_CHARSETS=complex                    \
      -D WITH_EMBEDDED_SERVER=ON                        \
      -D SKIP_TESTS=ON                                  \
      -D TOKUDB_OK=0                                    \
      -W no-dev                                         \
      .. &&
make
```

To test the results, issue: <span class="command"><strong>make test</strong></span>. Two tests, my_tzinfo and test-connect, are known to fail.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D WITH_EMBEDDED_SERVER=ON`*: This switch enables compiling the embedded server library needed by certain applications, such as <span class="application">Amarok</span>.

*`-D WITH_EXTRA_CHARSETS=complex`*: This switch enables support for the complex character sets.

*`-D SKIP_TESTS=ON`*: This switch disables tests for MariaDB Connector/C which are not supported without additional setup.

<code class="option">-D WITHOUT_SERVER=ON</code>: Use this :wqswitch if you don't want the server and would like to build the client only.

*`-W no-dev`*: This switch turns off some warnings that are only useful for developers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

There are numerous options available to <span class="command"><strong>cmake</strong></span>. Check the output of the <span class="command"><strong>cmake . -LH</strong></span> for additional customization options.
</div>
</div>

<div class="configuration" lang="en">
## Configuring MariaDB {#configuring-mariadb}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/my.cnf</code> and <code class="filename">~/.my.cnf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Create a basic <code class="filename">/etc/my.cnf</code> file using the following command as the <code class="systemitem">root</code> user:

```bash
cat > /etc/my.cnf << "EOF"
# Begin /etc/my.cnf

# The following options will be passed to all MySQL clients
[client]
#password       = your_password
port            = 3306
socket          = /run/mariadb/mariadb.sock

# The MySQL server
[server]
port            = 3306
socket          = /run/mariadb/mariadb.sock
datadir         = /srv/mariadb
skip-external-locking
key_buffer_size = 16M
max_allowed_packet = 1M
sort_buffer_size = 512K
net_buffer_length = 16K
myisam_sort_buffer_size = 8M

# Don't listen on a TCP/IP port at all.
skip-networking

# required unique id between 1 and 2^32 - 1
server-id       = 1

# Uncomment the following if you are using BDB tables
#bdb_cache_size = 4M
#bdb_max_lock = 10000

# InnoDB tables are now used by default
innodb_data_home_dir = /srv/mariadb
innodb_log_group_home_dir = /srv/mariadb
# All the innodb_xxx values below are the default ones:
innodb_data_file_path = ibdata1:12M:autoextend
# You can set .._buffer_pool_size up to 50 - 80 %
# of RAM but beware of setting memory usage too high
innodb_buffer_pool_size = 128M
innodb_log_file_size = 48M
innodb_log_buffer_size = 16M
innodb_flush_log_at_trx_commit = 1
innodb_lock_wait_timeout = 50

[mariadbdump]
quick
max_allowed_packet = 16M

[mysql]
no-auto-rehash
# Remove the next comment character if you are not familiar with SQL
#safe-updates

[isamchk]
key_buffer = 20M
sort_buffer_size = 20M
read_buffer = 2M
write_buffer = 2M

[myisamchk]
key_buffer_size = 20M
sort_buffer_size = 20M
read_buffer = 2M
write_buffer = 2M

[mariadbhotcopy]
interactive-timeout

# End /etc/my.cnf
EOF
```

You can now install a database and change the ownership to the unprivileged user and group (perform as the <code class="systemitem">root</code> user):

```bash
mariadb-install-db --basedir=/usr --datadir=/srv/mariadb --user=mariadb &&
chown -R mariadb:mariadb /srv/mariadb
```

Further configuration requires that the <span class="application">MariaDB</span> server is running. Start the server using the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m755 -o mariadb -g mariadb -d /run/mariadb &&
mariadbd-safe --user=mariadb 2>&1 >/dev/null &
```

A default installation does not set up a password for the administrator, so use the following command as the <code class="systemitem">root</code> user to set one.

```bash
mariadb-admin -u root password
```

Configuration of the server is now finished. Shut the server down using the following command as the <code class="systemitem">root</code> user:

```bash
mariadb-admin -p shutdown
```
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

Install the <span class="phrase"><code class="filename">mariadb.service</code> unit</span> included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package as the <code class="systemitem">root</code> user to start the <span class="application">MariaDB</span> server during system boot-up.

```bash
make install-mariadb
```

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

Upgrading MariaDB from version 11 to 12 requires a full backup, a clean shutdown, uninstalling the old binaries, installing the version 12 binaries, restarting the server, and running the <span class="command"><strong>mariadb-upgrade</strong></span> command to update system tables. Skipping this backup can result in unrecoverable data.
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">aria_chk, aria_dump_log, aria_ftdump, aria_pack, aria_read_log, aria_s3_copy, galera_new_cluster, galera_recovery, innochecksum, mariabackup, mariadb, mariadbd, mariadb-access, mariadb-admin, mariadb-backup, mariadb-binlog, mariadb-check, mariadb-client-test, mariadb-client-test-embedded, mariadb-conv, mariadb-convert-table-format, mariadb-find-rows, mariadbd-multi, mariadbd-safe, mariadbd-safe-helper, mariadb-dump, mariadb-dumpslow, mariadb-embedded, mariadb-fix-extensions, mariadb-hotcopy, mariadb-import, mariadb-install-db, mariadb-ldb, mariadb-plugin, mariadb-secure-installation, mariadb-setpermission, mariadb-service-convert, mariadb-show, mariadb-slap, mariadb-test, mariadb-test-embedded, mariadb-tzinfo-to-sql, mariadb-upgrade, mariadb-waitpid, mariadb_config, mbstream, msql2mysql, my_print_defaults, myisamchk, myisam_ftdump, myisamlog, myisampack, mysql_config, mytop, perror, replace, resolve_stack_dump, resolveip, sst_dump, wsrep_sst_common, wsrep_sst_mariabackup, wsrep_sst_mysqldump, and wsrep_sst_rsync</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libmariadb.a, libmariadb.so, libmariadbclient.a, libmariadbd.a, libmariadbd.so, libmariadb.so.3, libmysqlclient.a, libmysqlclient.so, libmysqlclient_r.a, libmysqlclient_r.so, libmysqld.a, libmysqld.so, libmysqlservices.a, and about 70 modules under /usr/lib/mysql/plugin/</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,lib,share}/mysql, /usr/share/groonga{,-normalizer-mysql}, and /usr/share/doc/mariadb-12.3.2</span>
</div>
</div>
</div>

### Short Descriptions

There are several symlinks from mysql\* to their mariadb counterparts. These are maintained for compatibility.

The <span class="application">Perl</span> DBI modules must be installed for some of the <span class="application">MariaDB</span> support programs to function properly.

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="aria_chk-mariadb"></a><span class="command"><span class="term"><strong>aria_chk</strong></span></span>                                           is used to check, repair, optimize, sort and get information about Aria tables
  <a id="aria_dump_log-mariadb"></a><span class="command"><span class="term"><strong>aria_dump_log</strong></span></span>                                 is a tool to dump the contents of Aria log pages
  <a id="aria_ftdump-mariadb"></a><span class="command"><span class="term"><strong>aria_ftdump</strong></span></span>                                     displays full-text index information
  <a id="aria_pack-mariadb"></a><span class="command"><span class="term"><strong>aria_pack</strong></span></span>                                         is a tool to generate compressed, read-only Aria tables
  <a id="aria_read_log-mariadb"></a><span class="command"><span class="term"><strong>aria_read_log</strong></span></span>                                 displays Aria log file contents
  <a id="aria_s3_copy-mariadb"></a><span class="command"><span class="term"><strong>aria_s3_copy</strong></span></span>                                   copies an aria table to and from AWS S3
  <a id="galera_new_cluster-mariadb"></a><span class="command"><span class="term"><strong>galera_new_cluster</strong></span></span>                       bootstraps a new Galera cluster
  <a id="galera_recovery-mariadb"></a><span class="command"><span class="term"><strong>galera_recovery</strong></span></span>                             recovers data from a Galera cluster
  <a id="innochecksum-mariadb"></a><span class="command"><span class="term"><strong>innochecksum</strong></span></span>                                   prints checksums for InnoDB files
  <a id="mariabackup-mariadb"></a><span class="command"><span class="term"><strong>mariabackup</strong></span></span>                                     is an open source backup tool for InnoDB and XtraDB
  <a id="mariadb-mariadb"></a><span class="command"><span class="term"><strong>mariadb</strong></span></span>                                             is a simple SQL shell with input line editing capabilities
  <a id="mariadbd-mariadb"></a><span class="command"><span class="term"><strong>mariadbd</strong></span></span>                                           is the MySQL server daemon
  <a id="mariadb-access-mariadb"></a><span class="command"><span class="term"><strong>mariadb-access</strong></span></span>                               checks the access privileges for a host name, user name, and database combination
  <a id="mariadb-admin-mariadb"></a><span class="command"><span class="term"><strong>mariadb-admin</strong></span></span>                                 is a client for performing administrative operations
  <a id="mariadb-binlog-mariadb"></a><span class="command"><span class="term"><strong>mariadb-binlog</strong></span></span>                               reads binary log files
  <a id="mariadb-check-mariadb"></a><span class="command"><span class="term"><strong>mariadb-check</strong></span></span>                                 performs table maintenance: It checks, repairs, optimizes, or analyzes tables
  <a id="mariadb-client-test-mariadb"></a><span class="command"><span class="term"><strong>mariadb-client-test</strong></span></span>                     is used for testing aspects of the MySQL client API that cannot be tested using mariadb-test and its test language
  <a id="mariadb-client-test-embedded-mariadb"></a><span class="command"><span class="term"><strong>mariadb-client-test-embedded</strong></span></span>   is a tool to test the client API for the embedded server
  <a id="mariadb-conv-mariadb"></a><span class="command"><span class="term"><strong>mariadb-conv</strong></span></span>                                   converts character sets for use with MariaDB
  <a id="mariadb-convert-table-format-mariadb"></a><span class="command"><span class="term"><strong>mariadb-convert-table-format</strong></span></span>   converts the tables in a database to use a particular storage engine
  <a id="mariadbd-multi-mariadb"></a><span class="command"><span class="term"><strong>mariadbd-multi</strong></span></span>                               is designed to manage several mariadb processes that listen for connections on different Unix socket files and TCP/IP ports
  <a id="mariadbd-safe-mariadb"></a><span class="command"><span class="term"><strong>mariadbd-safe</strong></span></span>                                 is the recommended way to start a mariadb server on Unix and NetWare
  <a id="mariadb-dump-mariadb"></a><span class="command"><span class="term"><strong>mariadb-dump</strong></span></span>                                   is a backup program
  <a id="mariadb-dumpslow-mariadb"></a><span class="command"><span class="term"><strong>mariadb-dumpslow</strong></span></span>                           parses MySQL slow query log files and prints a summary of their contents
  <a id="mariadb-embedded-mariadb"></a><span class="command"><span class="term"><strong>mariadb-embedded</strong></span></span>                           is a MySQL client statically linked to libmariadbd
  <a id="mariadb-find-rows-mariadb"></a><span class="command"><span class="term"><strong>mariadb-find-rows</strong></span></span>                         reads files containing SQL statements and extracts statements that match a given regular expression or that contain USE db_name or SET statements
  <a id="mariadb-fix-extensions-mariadb"></a><span class="command"><span class="term"><strong>mariadb-fix-extensions</strong></span></span>               converts the extensions for MyISAM (or ISAM) table files to their canonical forms
  <a id="mariadb-hotcopy-mariadb"></a><span class="command"><span class="term"><strong>mariadb-hotcopy</strong></span></span>                             locks the table, flushes the table and then performs a copy of the database
  <a id="mariadb-import-mariadb"></a><span class="command"><span class="term"><strong>mariadb-import</strong></span></span>                               reads a range of data formats, and inserts the data into a database
  <a id="mariadb-install-db-mariadb"></a><span class="command"><span class="term"><strong>mariadb-install-db</strong></span></span>                       initializes the MySQL data directory and creates the system tables that it contains, if they do not exist
  <a id="mariadb-ldb-mariadb"></a><span class="command"><span class="term"><strong>mariadb-ldb</strong></span></span>                                     is the RocksDB tool
  <a id="mariadb-plugin-mariadb"></a><span class="command"><span class="term"><strong>mariadb-plugin</strong></span></span>                               is a utility that enables MySQL administrators to manage which plugins a MySQL server loads
  <a id="mariadb-secure-installation-mariadb"></a><span class="command"><span class="term"><strong>mariadb-secure-installation</strong></span></span>     is a tool to improve MySQL installation security
  <a id="mariadb-service-convert-mariadb"></a><span class="command"><span class="term"><strong>mariadb-service-convert</strong></span></span>             generates a systemd unit based on the current mariadb settings
  <a id="mariadb-setpermission-mariadb"></a><span class="command"><span class="term"><strong>mariadb-setpermission</strong></span></span>                 sets permissions in the MySQL grant tables
  <a id="mariadb-show-mariadb"></a><span class="command"><span class="term"><strong>mariadb-show</strong></span></span>                                   shows the structure of a MariaDB database
  <a id="mariadb-slap-mariadb"></a><span class="command"><span class="term"><strong>mariadb-slap</strong></span></span>                                   is a diagnostic program designed to emulate client load for a MySQL server and to report the timing of each stage
  <a id="mariadb-test-mariadb"></a><span class="command"><span class="term"><strong>mariadb-test</strong></span></span>                                   runs a test case against a MySQL server and optionally compares the output with a result file
  <a id="mariadb-test-embedded-mariadb"></a><span class="command"><span class="term"><strong>mariadb-test-embedded</strong></span></span>                 is similar to the <span class="command"><strong>mariadb-test</strong></span> command but is built with support for the libmariadbd embedded server
  <a id="mariadb-tzinfo-to-sql-mariadb"></a><span class="command"><span class="term"><strong>mariadb-tzinfo-to-sql</strong></span></span>                 loads the time zone tables in the mariadb database
  <a id="mariadb-upgrade-mariadb"></a><span class="command"><span class="term"><strong>mariadb-upgrade</strong></span></span>                             examines all tables in all databases for incompatibilities with the current version of MySQL Server
  <a id="mariadb-waitpid-mariadb"></a><span class="command"><span class="term"><strong>mariadb-waitpid</strong></span></span>                             signals a process to terminate and waits for the process to exit
  <a id="mariadb_config-mariadb"></a><span class="command"><span class="term"><strong>mariadb_config</strong></span></span>                               gets compiler flags for using the MariaDB Connector/C
  <a id="mbstream-mariadb"></a><span class="command"><span class="term"><strong>mbstream</strong></span></span>                                           is a utility for sending InnoDB and XTraDB backups over a stream
  <a id="msql2mysql-mariadb"></a><span class="command"><span class="term"><strong>msql2mysql</strong></span></span>                                       is a tool to convert mSQL programs for use with MySQL
  <a id="my_print_defaults-mariadb"></a><span class="command"><span class="term"><strong>my_print_defaults</strong></span></span>                         displays the options from option groups of option files
  <a id="myisam_ftdump-mariadb"></a><span class="command"><span class="term"><strong>myisam_ftdump</strong></span></span>                                 displays information about FULLTEXT indexes in MyISAM tables
  <a id="myisamchk-mariadb"></a><span class="command"><span class="term"><strong>myisamchk</strong></span></span>                                         gets information about your database tables or checks, repairs, or optimizes them
  <a id="myisamlog-mariadb"></a><span class="command"><span class="term"><strong>myisamlog</strong></span></span>                                         displays MyISAM log file contents
  <a id="myisampack-mariadb"></a><span class="command"><span class="term"><strong>myisampack</strong></span></span>                                       is a tool for compressing MyISAM tables
  <a id="mysql_config-mariadb"></a><span class="command"><span class="term"><strong>mysql_config</strong></span></span>                                   provides you with useful information for compiling your MySQL client and connecting it to MySQL
  <a id="mytop-mariadb"></a><span class="command"><span class="term"><strong>mytop</strong></span></span>                                                 is a console-based tool for monitoring the threads and overall performance of a MySQL server
  <a id="perror-mariadb"></a><span class="command"><span class="term"><strong>perror</strong></span></span>                                               is a utility that displays descriptions for system or storage engine error codes
  <a id="replace-mariadb"></a><span class="command"><span class="term"><strong>replace</strong></span></span>                                             is a MariaDB/MySQL extension to the SQL standard
  <a id="resolve_stack_dump-mariadb"></a><span class="command"><span class="term"><strong>resolve_stack_dump</strong></span></span>                       resolves a numeric stack dump to symbols
  <a id="resolveip-mariadb"></a><span class="command"><span class="term"><strong>resolveip</strong></span></span>                                         is a utility for resolving IP addresses to host names and vice versa
  <a id="sst_sump-mariadb"></a><span class="command"><span class="term"><strong>sst_sump</strong></span></span>                                           dumps the content of sst files (the format used by RocksDB)
  ------------------------------------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lmdb.md "lmdb-0.9.35")

    lmdb-0.9.35

-   [Next](postgresql.md "PostgreSQL-18.4")

    PostgreSQL-18.4

-   [Up](databases.md "Chapter 22. Databases")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
