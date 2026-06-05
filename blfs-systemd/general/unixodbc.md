::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](tree.md "tree-2.3.2"){accesskey="p"}

    tree-2.3.2

-   [Next](xdg-dbus-proxy.md "xdg-dbus-proxy-0.1.7"){accesskey="n"}

    xdg-dbus-proxy-0.1.7

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#unixodbc}unixODBC-2.3.14 {#unixodbc-2.3.14 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to unixODBC {#introduction-to-unixodbc .sect2}

The [unixODBC]{.application} package is an Open Source ODBC (Open DataBase Connectivity) sub-system and an ODBC SDK for Linux, Mac OSX, and UNIX. ODBC is an open specification for providing application developers with a predictable API with which to access data sources. Data sources include optional SQL Servers and any data source with an ODBC Driver. [unixODBC]{.application} contains the following components used to assist with the manipulation of ODBC data sources: a driver manager, an installer library and command line tool, command line tools to help install a driver and work with SQL, drivers and driver setup libraries.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lurcher/unixODBC/archive/v2.3.14/unixODBC-2.3.14.tar.gz](https://github.com/lurcher/unixODBC/archive/v2.3.14/unixODBC-2.3.14.tar.gz){.ulink}

-   Download MD5 sum: 2de94476f9aa78a8e0f9b6bb4b9acc90

-   Download size: 836 KB

-   Estimated disk space required: 30 MB

-   Estimated build time: 0.2 SBU (using parallelism=4)
:::

### unixODBC Dependencies

#### Optional

[Mini SQL](https://hughestech.com.au/products/msql/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of unixODBC {#installation-of-unixodbc .sect2}

Install [unixODBC]{.application} by running the following commands:

``` userinput
autoreconf -fiv &&
./configure --prefix=/usr --sysconfdir=/etc/unixODBC &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install &&

find doc -name "Makefile*" -delete                &&
chmod 644 doc/{lst,ProgrammerManual/Tutorial}/*   &&

install -v -m755 -d /usr/share/doc/unixODBC-2.3.14 &&
cp      -v -R doc/* /usr/share/doc/unixODBC-2.3.14
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--enable-drivers`{.option}: This parameter enables building the drivers that were installed by default in previous versions.

`--enable-drivers-conf`{.option}: This parameter enables building the driver configuration libraries that were installed by default in previous versions.
:::

::::: {.configuration lang="en"}
## Configuring unixODBC {#configuring-unixodbc .sect2}

::: {.sect3 lang="en"}
### []{#unixodbc-config}Config Files {#config-files .sect3}

`/etc/unixODBC/*`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The files in `/etc/unixODBC`{.filename} are meant to be configured by the system administrator (or the ODBC site administrator if appropriate privileges are granted to `/etc/unixODBC`{.filename}). These files are not meant to be directly edited. The ODBC installer library is responsible for reading and writing the [unixODBC]{.application} config files.

Unfortunately, there are not many [**man**]{.command}, or any [**info**]{.command} pages for the various programs available in the [unixODBC]{.application} package. Along with the information in the [“[Short Descriptions]{.quote}”]{.quote} below and the documentation installed in `/usr/share/doc/unixODBC-2.3.14`{.filename}, there are many `README`{.filename} files throughout the source tree where the use and functionality of the programs can be found. Additionally, you can use the parameter `-?`{.option} for syntax and usage information. Lastly, the [unixODBC]{.application} web site at [http://www.unixodbc.org/](http://www.unixodbc.org/){.ulink} has very good information.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [dltest, isql, iusql, odbc_config, odbcinst, and slencheck]{.segbody}
:::

::: seg
**Installed Libraries:** [libodbc.so, libodbccr.so, and libodbcinst.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/unixODBC and /usr/share/doc/unixODBC-2.3.14]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#dltest}[[**dltest**]{.command}]{.term}             is a utility used to check a shared library to see if it can be loaded and if a given symbol exists in it
  []{#isql}[[**isql**]{.command}]{.term}                 is a utility which can be used to submit SQL to a data source and to format/output results. It can be used in batch or interactive mode
  []{#iusql}[[**iusql**]{.command}]{.term}               provides the same functionality as the [**isql**]{.command} program
  []{#odbc_config}[[**odbc_config**]{.command}]{.term}   is used to find out details about the installation of the [unixODBC]{.application} package
  []{#odbcinst}[[**odbcinst**]{.command}]{.term}         is a utility created for install script/RPM writers. It is a command line interface to key functionality in the `libodbcinst`{.filename} library. It does not copy any files (i.e., libraries) but it will modify the ODBC System Information for the user
  []{#slencheck}[[**slencheck**]{.command}]{.term}       is a utility which attempts to check whether an ODBC driver was built with 32-bit or 64-bit SQLLEN types
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](tree.md "tree-2.3.2"){accesskey="p"}

    tree-2.3.2

-   [Next](xdg-dbus-proxy.md "xdg-dbus-proxy-0.1.7"){accesskey="n"}

    xdg-dbus-proxy-0.1.7

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
