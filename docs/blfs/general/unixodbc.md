<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](tree.md "tree-2.3.2")

    tree-2.3.2

-   [Next](xdg-dbus-proxy.md "xdg-dbus-proxy-0.1.7")

    xdg-dbus-proxy-0.1.7

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# unixODBC-2.3.14 {#unixodbc-2.3.14}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to unixODBC {#introduction-to-unixodbc}

The <span class="application">unixODBC</span> package is an Open Source ODBC (Open DataBase Connectivity) sub-system and an ODBC SDK for Linux, Mac OSX, and UNIX. ODBC is an open specification for providing application developers with a predictable API with which to access data sources. Data sources include optional SQL Servers and any data source with an ODBC Driver. <span class="application">unixODBC</span> contains the following components used to assist with the manipulation of ODBC data sources: a driver manager, an installer library and command line tool, command line tools to help install a driver and work with SQL, drivers and driver setup libraries.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lurcher/unixODBC/archive/v2.3.14/unixODBC-2.3.14.tar.gz">https://github.com/lurcher/unixODBC/archive/v2.3.14/unixODBC-2.3.14.tar.gz</a>

-   Download MD5 sum: 2de94476f9aa78a8e0f9b6bb4b9acc90

-   Download size: 836 KB

-   Estimated disk space required: 30 MB

-   Estimated build time: 0.2 SBU (using parallelism=4)
</div>

### unixODBC Dependencies

#### Optional

<a class="ulink" href="https://hughestech.com.au/products/msql/">Mini SQL</a>
</div>

<div class="installation" lang="en">
## Installation of unixODBC {#installation-of-unixodbc}

Install <span class="application">unixODBC</span> by running the following commands:

```bash
autoreconf -fiv &&
./configure --prefix=/usr --sysconfdir=/etc/unixODBC &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&

find doc -name "Makefile*" -delete                &&
chmod 644 doc/{lst,ProgrammerManual/Tutorial}/*   &&

install -v -m755 -d /usr/share/doc/unixODBC-2.3.14 &&
cp      -v -R doc/* /usr/share/doc/unixODBC-2.3.14
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--enable-drivers</code>: This parameter enables building the drivers that were installed by default in previous versions.

<code class="option">--enable-drivers-conf</code>: This parameter enables building the driver configuration libraries that were installed by default in previous versions.
</div>

<div class="configuration" lang="en">
## Configuring unixODBC {#configuring-unixodbc}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/unixODBC/*</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The files in <code class="filename">/etc/unixODBC</code> are meant to be configured by the system administrator (or the ODBC site administrator if appropriate privileges are granted to <code class="filename">/etc/unixODBC</code>). These files are not meant to be directly edited. The ODBC installer library is responsible for reading and writing the <span class="application">unixODBC</span> config files.

Unfortunately, there are not many <span class="command"><strong>man</strong></span>, or any <span class="command"><strong>info</strong></span> pages for the various programs available in the <span class="application">unixODBC</span> package. Along with the information in the <span class="quote">“<span class="quote">Short Descriptions</span>”</span> below and the documentation installed in <code class="filename">/usr/share/doc/unixODBC-2.3.14</code>, there are many <code class="filename">README</code> files throughout the source tree where the use and functionality of the programs can be found. Additionally, you can use the parameter <code class="option">-?</code> for syntax and usage information. Lastly, the <span class="application">unixODBC</span> web site at <a class="ulink" href="http://www.unixodbc.org/">http://www.unixodbc.org/</a> has very good information.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">dltest, isql, iusql, odbc_config, odbcinst, and slencheck</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libodbc.so, libodbccr.so, and libodbcinst.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/unixODBC and /usr/share/doc/unixODBC-2.3.14</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="dltest"></a><span class="command"><span class="term"><strong>dltest</strong></span></span>             is a utility used to check a shared library to see if it can be loaded and if a given symbol exists in it
  <a id="isql"></a><span class="command"><span class="term"><strong>isql</strong></span></span>                 is a utility which can be used to submit SQL to a data source and to format/output results. It can be used in batch or interactive mode
  <a id="iusql"></a><span class="command"><span class="term"><strong>iusql</strong></span></span>               provides the same functionality as the <span class="command"><strong>isql</strong></span> program
  <a id="odbc_config"></a><span class="command"><span class="term"><strong>odbc_config</strong></span></span>   is used to find out details about the installation of the <span class="application">unixODBC</span> package
  <a id="odbcinst"></a><span class="command"><span class="term"><strong>odbcinst</strong></span></span>         is a utility created for install script/RPM writers. It is a command line interface to key functionality in the <code class="filename">libodbcinst</code> library. It does not copy any files (i.e., libraries) but it will modify the ODBC System Information for the user
  <a id="slencheck"></a><span class="command"><span class="term"><strong>slencheck</strong></span></span>       is a utility which attempts to check whether an ODBC driver was built with 32-bit or 64-bit SQLLEN types
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](tree.md "tree-2.3.2")

    tree-2.3.2

-   [Next](xdg-dbus-proxy.md "xdg-dbus-proxy-0.1.7")

    xdg-dbus-proxy-0.1.7

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
