::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](libffi.md "Libffi-3.5.2"){accesskey="p"}

    Libffi-3.5.2

-   [Next](Python.md "Python-3.14.5"){accesskey="n"}

    Python-3.14.5

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-sqlite}8.50. Sqlite-3530100 {#sqlite-3530100 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Sqlite package is a software library that implements a self-contained, serverless, zero-configuration, transactional SQL database engine.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.4 SBU]{.segbody}
:::

::: seg
**Required disk space:** [124 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.50.1. Installation of Sqlite {#installation-of-sqlite .sect2}

Unpack the documentation:

``` userinput
tar -xf ../sqlite-doc-3530100.tar.xz
```

Prepare Sqlite for compilation with:

``` userinput
./configure --prefix=/usr     \
            --disable-static  \
            --enable-fts{4,5} \
            CPPFLAGS="-D SQLITE_ENABLE_COLUMN_METADATA=1 \
                      -D SQLITE_ENABLE_UNLOCK_NOTIFY=1   \
                      -D SQLITE_ENABLE_DBSTAT_VTAB=1     \
                      -D SQLITE_SECURE_DELETE=1"
```

::: variablelist
**The meaning of the configure options:**

[*`--enable-fts{4,5}`*]{.term}

:   These switches enable support for version 4 and 5 of the full text search (FTS) extension.

[*`CPPFLAGS="-D SQLITE_ENABLE_COLUMN_METADATA=1 ...`*]{.term}

:   Some applications require these options to be turned on. The only way to do this is to include them in the CFLAGS or CPPFLAGS. We use the latter so the default value (or any value set by the user) of CFLAGS won\'t be affected. For further information on what can be specified see https://www.sqlite.org/compile.html.
:::

Compile the package:

``` userinput
make LDFLAGS.rpath=""
```

The *`LDFLAGS.rpath=""`* option prevents hard coding library search paths (rpath) into the shared library. This package does not need rpath for an installation into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

This package does not come with a test suite.

Install the package:

``` userinput
make install
```

If desired, install the documentation:

``` userinput
install -v -m755 -d /usr/share/doc/sqlite-3.53.1
cp -v -R sqlite-doc-3530100/* /usr/share/doc/sqlite-3.53.1
```
::::

::::::::: {.content lang="en"}
## []{#contents-sqlite}8.50.2. Contents of Sqlite {#contents-of-sqlite .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [sqlite3]{.segbody}
:::

::: seg
**Installed libraries:** [libsqlite3.so]{.segbody}
:::

::: seg
**Installed directories:** [/usr/share/doc/sqlite-3.53.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------
  []{#sqlite3}[[**sqlite3**]{.command}]{.term}            is a terminal-based front-end to the SQLite library that can evaluate queries interactively and display the results
  []{#libsqlite3.so}[`libsqlite3.so`{.filename}]{.term}   contains the SQLite API functions
  ------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](libffi.md "Libffi-3.5.2"){accesskey="p"}

    Libffi-3.5.2

-   [Next](Python.md "Python-3.14.5"){accesskey="n"}

    Python-3.14.5

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
