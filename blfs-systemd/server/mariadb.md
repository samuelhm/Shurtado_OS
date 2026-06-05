::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 22. Databases

-   [Prev](lmdb.md "lmdb-0.9.35"){accesskey="p"}

    lmdb-0.9.35

-   [Next](postgresql.md "PostgreSQL-18.4"){accesskey="n"}

    PostgreSQL-18.4

-   [Up](databases.md "Chapter 22. Databases"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mariadb}MariaDB-12.3.2 {#mariadb-12.3.2 .sect1}

:::::::::::::::::::::::::: {.sect1 lang="en"}
:::::::: {.package lang="en"}
## Introduction to MariaDB {#introduction-to-mariadb .sect2}

[MariaDB]{.application} is a community-developed fork and a drop-in replacement for the [MySQL]{.application} relational database management system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.mariadb.org/interstitial/mariadb-12.3.2/source/mariadb-12.3.2.tar.gz](https://downloads.mariadb.org/interstitial/mariadb-12.3.2/source/mariadb-12.3.2.tar.gz){.ulink}

-   Download MD5 sum: e6ec06ab51a7afa581562499616624a4

-   Download size: 115 MB

-   Estimated disk space required: 2.5 GB (832 MB installed)

-   Estimated build time: 4.3 SBU (with parallelism=8, add 2.6 SBU for tests)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/mariadb-12.3.2-openssl4_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/mariadb-12.3.2-openssl4_fixes-1.patch){.ulink}
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The installed size of MariaDB is 778 MB, but this can be reduced by about 270 MB, if desired, by removing the `/usr/share/mariadb/test`{.filename} directory after installation.
:::

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

If you are upgrading an existing database, please see the [MariaDB Release Notes](https://mariadb.com/docs/release-notes/community-server/12.3/mariadb-12.3-changes-and-improvements){.ulink} for additional information, and use the instructions after the Configuration Information section to ensure a safe upgrade.
:::

### MariaDB Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}

#### Recommended

[libevent-2.1.12](../basicnet/libevent.md "libevent-2.1.12"){.xref}

#### Optional

[Boost-1.91.0-1](../general/boost.md "boost-1.91.0-1"){.xref}, [fmt-12.1.0](../general/fmt.md "fmt-12.1.0"){.xref}, [git-2.54.0](../general/git.md "Git-2.54.0"){.xref}, [Java-21.0.10](../general/java.md "Java-21.0.10"){.xref}, [libaio-0.3.113](../general/libaio.md "libaio-0.3.113"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, [LZO-2.10](../general/lzo.md "LZO-2.10"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [Ruby-4.0.5](../general/ruby.md "Ruby-4.0.5"){.xref}, [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref}, [unixODBC-2.3.14](../general/unixodbc.md "unixODBC-2.3.14"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [Groonga](https://groonga.org/){.ulink}, [KyTea](https://www.phontron.com/kytea/){.ulink}, [Judy](https://sourceforge.net/projects/judy/){.ulink}, [libstemmer](https://snowballstem.org/){.ulink}, [MeCab](https://taku910.github.io/mecab){.ulink}, [MessagePack](https://msgpack.org/){.ulink}, [mruby](https://www.mruby.org/){.ulink}, [MyRocks](https://mariadb.com/kb/en/myrocks/){.ulink}, [Snappy](https://github.com/google/snappy){.ulink}, and [ZeroMQ](https://zeromq.org/){.ulink}
::::::::

::::: {.installation lang="en"}
## Installation of MariaDB {#installation-of-mariadb .sect2}

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

MariaDB and MySQL cannot be installed on the same system without extensive changes to the build configuration of one of the two applications.
:::

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

If you are upgrading MariaDB from 11.x to 12.x, please pay special attention to the upgrade notes later in this page. Users of existing MariaDB installations may want to consider staying on the 11.8.x LTS branch instead, especially if they rely on the Galera functionality which was removed from MariaDB-12.x.
:::

For security reasons, running the server as an unprivileged user and group is strongly encouraged. Issue the following (as `root`{.systemitem}) to create the user and group:

``` root
groupadd -g 40 mariadb &&
useradd -c "MariaDB Server" -d /srv/mariadb -g mariadb -s /bin/false -u 40 mariadb
```

Fix runtime issues with OpenSSL-4.0 and later:

``` userinput
patch -Np1 -i ../mariadb-12.3.2-openssl4_fixes-1.patch
```

Install [MariaDB]{.application} by running the following commands:

``` userinput
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

To test the results, issue: [**make test**]{.command}. Two tests, my_tzinfo and test-connect, are known to fail.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::::

:::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D WITH_EMBEDDED_SERVER=ON`*: This switch enables compiling the embedded server library needed by certain applications, such as [Amarok]{.application}.

*`-D WITH_EXTRA_CHARSETS=complex`*: This switch enables support for the complex character sets.

*`-D SKIP_TESTS=ON`*: This switch disables tests for MariaDB Connector/C which are not supported without additional setup.

`-D WITHOUT_SERVER=ON`{.option}: Use this :wqswitch if you don't want the server and would like to build the client only.

*`-W no-dev`*: This switch turns off some warnings that are only useful for developers.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

There are numerous options available to [**cmake**]{.command}. Check the output of the [**cmake . -LH**]{.command} for additional customization options.
:::
::::

::::::: {.configuration lang="en"}
## Configuring MariaDB {#configuring-mariadb .sect2}

::: {.sect3 lang="en"}
### []{#mariadb-config}Config Files {#config-files .sect3}

`/etc/my.cnf`{.filename} and `~/.my.cnf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

Create a basic `/etc/my.cnf`{.filename} file using the following command as the `root`{.systemitem} user:

``` root
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

You can now install a database and change the ownership to the unprivileged user and group (perform as the `root`{.systemitem} user):

``` root
mariadb-install-db --basedir=/usr --datadir=/srv/mariadb --user=mariadb &&
chown -R mariadb:mariadb /srv/mariadb
```

Further configuration requires that the [MariaDB]{.application} server is running. Start the server using the following commands as the `root`{.systemitem} user:

``` root
install -v -m755 -o mariadb -g mariadb -d /run/mariadb &&
mariadbd-safe --user=mariadb 2>&1 >/dev/null &
```

A default installation does not set up a password for the administrator, so use the following command as the `root`{.systemitem} user to set one.

``` root
mariadb-admin -u root password
```

Configuration of the server is now finished. Shut the server down using the following command as the `root`{.systemitem} user:

``` root
mariadb-admin -p shutdown
```
:::

:::: {.sect3 lang="en"}
### []{#mariadb-init} Systemd Unit {#systemd-unit .sect3}

Install the [`mariadb.service`{.filename} unit]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package as the `root`{.systemitem} user to start the [MariaDB]{.application} server during system boot-up.

``` root
make install-mariadb
```

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

Upgrading MariaDB from version 11 to 12 requires a full backup, a clean shutdown, uninstalling the old binaries, installing the version 12 binaries, restarting the server, and running the [**mariadb-upgrade**]{.command} command to update system tables. Skipping this backup can result in unrecoverable data.
:::
::::
:::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [aria_chk, aria_dump_log, aria_ftdump, aria_pack, aria_read_log, aria_s3_copy, galera_new_cluster, galera_recovery, innochecksum, mariabackup, mariadb, mariadbd, mariadb-access, mariadb-admin, mariadb-backup, mariadb-binlog, mariadb-check, mariadb-client-test, mariadb-client-test-embedded, mariadb-conv, mariadb-convert-table-format, mariadb-find-rows, mariadbd-multi, mariadbd-safe, mariadbd-safe-helper, mariadb-dump, mariadb-dumpslow, mariadb-embedded, mariadb-fix-extensions, mariadb-hotcopy, mariadb-import, mariadb-install-db, mariadb-ldb, mariadb-plugin, mariadb-secure-installation, mariadb-setpermission, mariadb-service-convert, mariadb-show, mariadb-slap, mariadb-test, mariadb-test-embedded, mariadb-tzinfo-to-sql, mariadb-upgrade, mariadb-waitpid, mariadb_config, mbstream, msql2mysql, my_print_defaults, myisamchk, myisam_ftdump, myisamlog, myisampack, mysql_config, mytop, perror, replace, resolve_stack_dump, resolveip, sst_dump, wsrep_sst_common, wsrep_sst_mariabackup, wsrep_sst_mysqldump, and wsrep_sst_rsync]{.segbody}
:::

::: seg
**Installed Libraries:** [libmariadb.a, libmariadb.so, libmariadbclient.a, libmariadbd.a, libmariadbd.so, libmariadb.so.3, libmysqlclient.a, libmysqlclient.so, libmysqlclient_r.a, libmysqlclient_r.so, libmysqld.a, libmysqld.so, libmysqlservices.a, and about 70 modules under /usr/lib/mysql/plugin/]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/{include,lib,share}/mysql, /usr/share/groonga{,-normalizer-mysql}, and /usr/share/doc/mariadb-12.3.2]{.segbody}
:::
::::::
:::::::

### Short Descriptions

There are several symlinks from mysql\* to their mariadb counterparts. These are maintained for compatibility.

The [Perl]{.application} DBI modules must be installed for some of the [MariaDB]{.application} support programs to function properly.

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------
  []{#aria_chk-mariadb}[[**aria_chk**]{.command}]{.term}                                           is used to check, repair, optimize, sort and get information about Aria tables
  []{#aria_dump_log-mariadb}[[**aria_dump_log**]{.command}]{.term}                                 is a tool to dump the contents of Aria log pages
  []{#aria_ftdump-mariadb}[[**aria_ftdump**]{.command}]{.term}                                     displays full-text index information
  []{#aria_pack-mariadb}[[**aria_pack**]{.command}]{.term}                                         is a tool to generate compressed, read-only Aria tables
  []{#aria_read_log-mariadb}[[**aria_read_log**]{.command}]{.term}                                 displays Aria log file contents
  []{#aria_s3_copy-mariadb}[[**aria_s3_copy**]{.command}]{.term}                                   copies an aria table to and from AWS S3
  []{#galera_new_cluster-mariadb}[[**galera_new_cluster**]{.command}]{.term}                       bootstraps a new Galera cluster
  []{#galera_recovery-mariadb}[[**galera_recovery**]{.command}]{.term}                             recovers data from a Galera cluster
  []{#innochecksum-mariadb}[[**innochecksum**]{.command}]{.term}                                   prints checksums for InnoDB files
  []{#mariabackup-mariadb}[[**mariabackup**]{.command}]{.term}                                     is an open source backup tool for InnoDB and XtraDB
  []{#mariadb-mariadb}[[**mariadb**]{.command}]{.term}                                             is a simple SQL shell with input line editing capabilities
  []{#mariadbd-mariadb}[[**mariadbd**]{.command}]{.term}                                           is the MySQL server daemon
  []{#mariadb-access-mariadb}[[**mariadb-access**]{.command}]{.term}                               checks the access privileges for a host name, user name, and database combination
  []{#mariadb-admin-mariadb}[[**mariadb-admin**]{.command}]{.term}                                 is a client for performing administrative operations
  []{#mariadb-binlog-mariadb}[[**mariadb-binlog**]{.command}]{.term}                               reads binary log files
  []{#mariadb-check-mariadb}[[**mariadb-check**]{.command}]{.term}                                 performs table maintenance: It checks, repairs, optimizes, or analyzes tables
  []{#mariadb-client-test-mariadb}[[**mariadb-client-test**]{.command}]{.term}                     is used for testing aspects of the MySQL client API that cannot be tested using mariadb-test and its test language
  []{#mariadb-client-test-embedded-mariadb}[[**mariadb-client-test-embedded**]{.command}]{.term}   is a tool to test the client API for the embedded server
  []{#mariadb-conv-mariadb}[[**mariadb-conv**]{.command}]{.term}                                   converts character sets for use with MariaDB
  []{#mariadb-convert-table-format-mariadb}[[**mariadb-convert-table-format**]{.command}]{.term}   converts the tables in a database to use a particular storage engine
  []{#mariadbd-multi-mariadb}[[**mariadbd-multi**]{.command}]{.term}                               is designed to manage several mariadb processes that listen for connections on different Unix socket files and TCP/IP ports
  []{#mariadbd-safe-mariadb}[[**mariadbd-safe**]{.command}]{.term}                                 is the recommended way to start a mariadb server on Unix and NetWare
  []{#mariadb-dump-mariadb}[[**mariadb-dump**]{.command}]{.term}                                   is a backup program
  []{#mariadb-dumpslow-mariadb}[[**mariadb-dumpslow**]{.command}]{.term}                           parses MySQL slow query log files and prints a summary of their contents
  []{#mariadb-embedded-mariadb}[[**mariadb-embedded**]{.command}]{.term}                           is a MySQL client statically linked to libmariadbd
  []{#mariadb-find-rows-mariadb}[[**mariadb-find-rows**]{.command}]{.term}                         reads files containing SQL statements and extracts statements that match a given regular expression or that contain USE db_name or SET statements
  []{#mariadb-fix-extensions-mariadb}[[**mariadb-fix-extensions**]{.command}]{.term}               converts the extensions for MyISAM (or ISAM) table files to their canonical forms
  []{#mariadb-hotcopy-mariadb}[[**mariadb-hotcopy**]{.command}]{.term}                             locks the table, flushes the table and then performs a copy of the database
  []{#mariadb-import-mariadb}[[**mariadb-import**]{.command}]{.term}                               reads a range of data formats, and inserts the data into a database
  []{#mariadb-install-db-mariadb}[[**mariadb-install-db**]{.command}]{.term}                       initializes the MySQL data directory and creates the system tables that it contains, if they do not exist
  []{#mariadb-ldb-mariadb}[[**mariadb-ldb**]{.command}]{.term}                                     is the RocksDB tool
  []{#mariadb-plugin-mariadb}[[**mariadb-plugin**]{.command}]{.term}                               is a utility that enables MySQL administrators to manage which plugins a MySQL server loads
  []{#mariadb-secure-installation-mariadb}[[**mariadb-secure-installation**]{.command}]{.term}     is a tool to improve MySQL installation security
  []{#mariadb-service-convert-mariadb}[[**mariadb-service-convert**]{.command}]{.term}             generates a systemd unit based on the current mariadb settings
  []{#mariadb-setpermission-mariadb}[[**mariadb-setpermission**]{.command}]{.term}                 sets permissions in the MySQL grant tables
  []{#mariadb-show-mariadb}[[**mariadb-show**]{.command}]{.term}                                   shows the structure of a MariaDB database
  []{#mariadb-slap-mariadb}[[**mariadb-slap**]{.command}]{.term}                                   is a diagnostic program designed to emulate client load for a MySQL server and to report the timing of each stage
  []{#mariadb-test-mariadb}[[**mariadb-test**]{.command}]{.term}                                   runs a test case against a MySQL server and optionally compares the output with a result file
  []{#mariadb-test-embedded-mariadb}[[**mariadb-test-embedded**]{.command}]{.term}                 is similar to the [**mariadb-test**]{.command} command but is built with support for the libmariadbd embedded server
  []{#mariadb-tzinfo-to-sql-mariadb}[[**mariadb-tzinfo-to-sql**]{.command}]{.term}                 loads the time zone tables in the mariadb database
  []{#mariadb-upgrade-mariadb}[[**mariadb-upgrade**]{.command}]{.term}                             examines all tables in all databases for incompatibilities with the current version of MySQL Server
  []{#mariadb-waitpid-mariadb}[[**mariadb-waitpid**]{.command}]{.term}                             signals a process to terminate and waits for the process to exit
  []{#mariadb_config-mariadb}[[**mariadb_config**]{.command}]{.term}                               gets compiler flags for using the MariaDB Connector/C
  []{#mbstream-mariadb}[[**mbstream**]{.command}]{.term}                                           is a utility for sending InnoDB and XTraDB backups over a stream
  []{#msql2mysql-mariadb}[[**msql2mysql**]{.command}]{.term}                                       is a tool to convert mSQL programs for use with MySQL
  []{#my_print_defaults-mariadb}[[**my_print_defaults**]{.command}]{.term}                         displays the options from option groups of option files
  []{#myisam_ftdump-mariadb}[[**myisam_ftdump**]{.command}]{.term}                                 displays information about FULLTEXT indexes in MyISAM tables
  []{#myisamchk-mariadb}[[**myisamchk**]{.command}]{.term}                                         gets information about your database tables or checks, repairs, or optimizes them
  []{#myisamlog-mariadb}[[**myisamlog**]{.command}]{.term}                                         displays MyISAM log file contents
  []{#myisampack-mariadb}[[**myisampack**]{.command}]{.term}                                       is a tool for compressing MyISAM tables
  []{#mysql_config-mariadb}[[**mysql_config**]{.command}]{.term}                                   provides you with useful information for compiling your MySQL client and connecting it to MySQL
  []{#mytop-mariadb}[[**mytop**]{.command}]{.term}                                                 is a console-based tool for monitoring the threads and overall performance of a MySQL server
  []{#perror-mariadb}[[**perror**]{.command}]{.term}                                               is a utility that displays descriptions for system or storage engine error codes
  []{#replace-mariadb}[[**replace**]{.command}]{.term}                                             is a MariaDB/MySQL extension to the SQL standard
  []{#resolve_stack_dump-mariadb}[[**resolve_stack_dump**]{.command}]{.term}                       resolves a numeric stack dump to symbols
  []{#resolveip-mariadb}[[**resolveip**]{.command}]{.term}                                         is a utility for resolving IP addresses to host names and vice versa
  []{#sst_sump-mariadb}[[**sst_sump**]{.command}]{.term}                                           dumps the content of sst files (the format used by RocksDB)
  ------------------------------------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::::::

::: navfooter
-   [Prev](lmdb.md "lmdb-0.9.35"){accesskey="p"}

    lmdb-0.9.35

-   [Next](postgresql.md "PostgreSQL-18.4"){accesskey="n"}

    PostgreSQL-18.4

-   [Up](databases.md "Chapter 22. Databases"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
