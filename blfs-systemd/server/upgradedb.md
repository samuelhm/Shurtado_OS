::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 22. Databases

-   [Prev](databases.md "Databases"){accesskey="p"}

    Databases

-   [Next](lmdb.md "lmdb-0.9.35"){accesskey="n"}

    lmdb-0.9.35

-   [Up](databases.md "Chapter 22. Databases"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#upgradedb}Important Notes About Upgrading Database Server Software {#important-notes-about-upgrading-database-server-software .sect1}

:::::::::::::: {.sect1 lang="en"}
::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This section is about reinstalling database software when an existing database is in use. It is not applicable for initial installations or if there is no existing database for the package being updated, but users should read through it to become aware of issues that can arise in the future.
:::

Let's start this chapter with a dramatic screenshot of an error that really happened. This error will not occur if you are installing database software for the first time:

``` screen
$ sudo systemctl status postgresql
-- postgresql.service - PostgreSQL database server
     Loaded: loaded (/usr/lib/systemd/system/postgresql.service; enabled; vendor preset: enabled)
     Active: failed (Result: exit-code) since Tue 2021-10-26 17:11:53 CDT; 2min 49s ago
    Process: 17336 ExecStart=/usr/bin/pg_ctl -s -D ${PGROOT}/data start -w -t 120 (code=exited, status=1/FAILURE)
        CPU: 7ms

Oct 26 17:11:53 SVRNAME systemd[1]: Starting PostgreSQL database server...
Oct 26 17:11:53 SRVNAME postgres[17338]: 2021-10-26 17:11:53.420 CDT [17338] FATAL:
                database files are incompatible with server
Oct 26 17:11:53 SRVNAME postgres[17338]: 2021-10-26 17:11:53.420 CDT [17338] DETAIL:
                The data directory was initialized by PostgreSQL version 13,
                which is not compatible with this version 14.0.
Oct 26 17:11:53 SRVNAME postgres[17336]: pg_ctl: could not start server
Oct 26 17:11:53 SRVNAME postgres[17336]: Examine the log output.
Oct 26 17:11:53 SRVNAME systemd[1]: postgresql.service: Control process exited, code=exited, status=1/FAILURE
Oct 26 17:11:53 SRVNAME systemd[1]: postgresql.service: Failed with result 'exit-code'.
Oct 26 17:11:53 SRVNAME systemd[1]: Failed to start PostgreSQL database server.
```

To avoid situations like this (i.e., your database server software refuses to start), read the following discussion of the best way to upgrade a DBMS (Database Management System).

The root cause of the error shown above was an upgrade of the server software to a newer major version which left the data files untouched. In this case, the administrator was able to recover the DBMS without any loss of data.

Even if you are doing an initial DBMS install, read through this section. It provides information about implementing backup and restore procedures (or at least a strategy for creating them) which will satisfy your needs and guarantee the safety of your data.

::::::: {.sect2 lang="en"}
## Upgrade Database Server Packages {#upgrade-database-server-packages .sect2}

Database systems work on files which hold the database metadata and the data itself. The internal structure of these files is optimized for use by the server software. When such server software is upgraded, the new software may utilize a different file format than had previously been used. Sometimes the new software can work with the old format as well as the new one—but without the performance improvements the new format provides. Other times, the new server software will reformat the data files automatically after the upgrade.

Unfortunately, the most likely case is that the new server software complains about out of date file formats and exits. When this happens, and you have overwritten the old server software, you may end up with a broken system and lost data.

Changes in data file formats usually happen at major version changes, but they can also occur at other times. Before upgrading any DBMS software, check the documentation to see if this upgrade makes changes which require reformatting the database.

Of course, if you have databases with content that is not easily rebuilt, it is always a good idea to create backups of the database from time to time. Before upgrading the server software, you should run another backup.

::::: {.sect3 lang="en"}
### Upgrade by Backup and Restore {#upgrade-by-backup-and-restore .sect3}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

A backup is useless if there is no verified process to restore the data from this backup. When running a database server, you should not only create backups; you should also verify that the restore process really works. The time to test the restore procedure is [*before*]{.emphasis} you urgently need to recover lost data.
:::

Most database server software provides some basic tools to create backups of your data. Usually the backups created with those tools can be read by newer versions of the software (via a restore tool). Using older restore tools with newer backup data is a bad idea; you should [*never*]{.emphasis} blindly assume that it will work. It might, but usually it doesn't.

The easiest way to upgrade your database files is to

::: itemizedlist
-   Create a full database backup using the old tools.

    This step creates an offline copy of the database files—for long term archiving, for disaster recovery, or as preparation for an upgrade. This offline backup consists of either (1) a full one-to-one copy of the current database files, or (2) a full backup of the database files from a certain point in time, plus all the journal data (that is Oracle® terminology, it is called "Continuous Archiving" or "write ahead log (WAL)" in Postgresql) describing the changes made after that point in time. This second form takes less time to create (if the DB software provides this type of journaling) because you only have to save the data that have changed since the last full backup was created.

    When upgrading database server software, a full backup (which can be used for subsequent incremental backups) should be created; but if there is a lot of data, an incremental backup will suffice. The best strategy for you depends on the amount of data stored in your database (is it a few hundred table rows, or is it hundreds of terabytes?). A full backup in the latter case can't be done quickly. To fully protect your data, create a backup of the old programs (and/or their sources) and save it, along with the data files, to be certain there is a fallback solution if the new software cannot read the old data.

-   Upgrade the server software

    In this step, instructions to build the database server software are executed just as they are shown in subsequent sections talking about the DBMs like MariaDB or Postgresql. That is, build the software as usual using BLFS instructions.

-   Restore the database by using the new tools.

    To restore the data, the tools of the newly installed server software should be used. During the restoration process, the new tools will create and/or upgrade the data files in the format the new software requires. It is assumed that newer software is capable of reading old data.
:::

Since you already have a backup procedure in place (and you have tested your restore procedure, right?), this might be the easiest way to upgrade as you can use your well known processes to upgrade just as you always do—at least in terms of the backup and restore.
:::::

::: {.sect3 lang="en"}
### Upgrade the Database Files by Using System Tools {#upgrade-the-database-files-by-using-system-tools .sect3}

Some database systems (for instance Postgresql) provide a tool which can reformat (upgrade) the existing database files to the new format. If you need to restore from a backup (for example, running the upgrade tool failed) you will have to reinstall the old software to recover your data.

Even though the reformatting tools might work as advertised, you should create a full backup before running them. A failure could cause serious damage to the database.
:::
:::::::

::::::: {.sect2 lang="en"}
## Notes for Specific DBMS {#notes-for-specific-dbms .sect2}

::: {.sect3 lang="en"}
### PostgreSQL {#postgresql .sect3}

Upstream documentation for Backup/Restore: [https://www.postgresql.org/docs/current/backup.html](https://www.postgresql.org/docs/current/backup.md){.ulink}
:::

::: {.sect3 lang="en"}
### MariaDB {#mariadb .sect3}

Upstream documentation for Backup/Restore: [https://mariadb.com/kb/en/backup-and-restore-overview/](https://mariadb.com/kb/en/backup-and-restore-overview/){.ulink}
:::

::: {.sect3 lang="en"}
### Sqlite {#sqlite .sect3}

Do not underestimate [Sqlite]{.application}. It is a feature-rich DBMS. The main difference from the two big players above is that Sqlite does not provide access via a network API. Sqlite databases are always stored on the machine running the program which uses the database. The manipulation of data content is done via API calls to library functions directly within the program.

In the upstream documentation you may find the following useful:

Documentation of the sqlite3 command line tool: [https://www.sqlite.org/cli.html](https://www.sqlite.org/cli.md){.ulink}

Documentation of backup API calls: [https://www.sqlite.org/backup.html](https://www.sqlite.org/backup.md){.ulink}

Unfortunately, there is no dedicated chapter in the upstream documentation talking about backup/restore, but there are several articles about it on the Internet. Here is an example.

Documentation for Backup/Restore: [https://database.guide/backup-sqlite-database/](https://database.guide/backup-sqlite-database/){.ulink}
:::

::: {.sect3 lang="en"}
### LMDB {#lmdb .sect3}

Like [Sqlite]{.application}, this software acts on local database files; there is no network interface.

The relevant resources to back up/restore a LMDB database are the man pages for `mdb_dump`{.filename} and its counterpart `mdb_load`{.filename}.
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](databases.md "Databases"){accesskey="p"}

    Databases

-   [Next](lmdb.md "lmdb-0.9.35"){accesskey="n"}

    lmdb-0.9.35

-   [Up](databases.md "Chapter 22. Databases"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
