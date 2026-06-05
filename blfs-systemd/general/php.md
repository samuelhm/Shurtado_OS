::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](perl-deps.md "Perl Module Dependencies"){accesskey="p"}

    Perl Module Dependencies

-   [Next](python3.md "Python-3.14.5"){accesskey="n"}

    Python-3.14.5

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#php}PHP-8.5.6 {#php-8.5.6 .sect1}

::::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to PHP {#introduction-to-php .sect2}

[PHP]{.application} is the PHP Hypertext Preprocessor. Primarily used in dynamic web sites, it allows for programming code to be directly embedded into the HTML markup. It is also useful as a general purpose scripting language.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.php.net/distributions/php-8.5.6.tar.xz](https://www.php.net/distributions/php-8.5.6.tar.xz){.ulink}

-   Download MD5 sum: 13915f7681c113f4c748d29d40c5822b

-   Download size: 14 MB

-   Estimated disk space required: 668 MB (with tests)

-   Estimated build time: 1.7 SBU (add 2.5 SBU for tests; both with parallelism=4)
:::

### Additional Downloads

::: itemizedlist
-   Optional pre-built documentation (single file html): [https://www.php.net/distributions/manual/php_manual_en.html.gz](https://www.php.net/distributions/manual/php_manual_en.html.gz){.ulink}

-   Optional pre-built documentation (chunked html): [https://www.php.net/distributions/manual/php_manual_en.tar.gz](https://www.php.net/distributions/manual/php_manual_en.tar.gz){.ulink}. Note that the documentation can be found in languages other than English at [https://www.php.net/download-docs.php](https://www.php.net/download-docs.php){.ulink}
:::

### PHP Dependencies

#### Recommended

[Apache-2.4.67](../server/apache.md "Apache-2.4.67"){.xref} and [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}

#### Optional System Utilities and Libraries

[Aspell-0.60.8.2](aspell.md "Aspell-0.60.8.2"){.xref}, [enchant-2.8.16](enchant.md "enchant-2.8.16"){.xref}, [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}, an [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref} (that provides a [**sendmail**]{.command} command), [AppArmor](https://wiki.ubuntu.com/AppArmor){.ulink}, [Dmalloc](https://dmalloc.com/){.ulink}, [Net-SNMP](http://www.net-snmp.org/){.ulink}, [oniguruma](https://github.com/kkos/oniguruma){.ulink}, [OSSP mm](http://www.ossp.org/pkg/lib/mm/){.ulink}, [re2c](https://re2c.org/){.ulink}, and [XMLRPC-EPI](https://xmlrpc-epi.sourceforge.net/main.php?t=php_about){.ulink}

#### Optional Graphics Utilities and Libraries

[FreeType-2.14.3](freetype2.md "FreeType-2.14.3"){.xref}, [libexif-0.6.26](libexif.md "libexif-0.6.26"){.xref}, [libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}, [libtiff-4.7.1](libtiff.md "libtiff-4.7.1"){.xref}, [libwebp-1.6.0](libwebp.md "libwebp-1.6.0"){.xref}, [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}, [FDF Toolkit](https://opensource.adobe.com/dc-acrobat-sdk-docs/acrobatsdk/){.ulink}, [GD](https://github.com/libgd/libgd){.ulink}, and [t1lib](https://www.t1lib.org/){.ulink}

#### Optional Web Utilities

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [tidy-html5-5.8.0](tidy-html5.md "tidy-html5-5.8.0"){.xref}, [Caudium](https://sourceforge.net/projects/caudium/){.ulink}, [Hyperwave](https://www.hyperwave.com/en/){.ulink}, and [WDDX](https://github.com/Bilal-S/WDDX.net){.ulink}

#### Optional Data Management Utilities and Libraries

[lmdb-0.9.35](../server/lmdb.md "lmdb-0.9.35"){.xref}, [MariaDB-12.3.2](../server/mariadb.md "MariaDB-12.3.2"){.xref} or [MySQL](https://www.mysql.com/){.ulink}, [OpenLDAP-2.6.13](../server/openldap.md "OpenLDAP-2.6.13"){.xref}, [PostgreSQL-18.4](../server/postgresql.md "PostgreSQL-18.4"){.xref}, [unixODBC-2.3.14](unixodbc.md "unixODBC-2.3.14"){.xref}, [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated) [Adabas](https://www.softwareag.com/en_corporate/platform/adabas-natural.md){.ulink}, [Birdstep](https://raima.com/product-overview/){.ulink}, [cdb](https://cr.yp.to/cdb.md){.ulink}, [DBMaker](https://www.dbmaker.com/){.ulink}, [Empress](http://www.empress.com/){.ulink}, [FrontBase](http://www.frontbase.com/cgi-bin/WebObjects/FBWebSite){.ulink}, [IBM DB2](https://www.ibm.com/analytics/us/en/db2/){.ulink}, [libiodbc](https://sourceforge.net/projects/iodbc/files/){.ulink}, [Mini SQL](https://hughestech.com.au/products/msql/){.ulink}, [Monetra](https://www.monetra.com/){.ulink}, and [QDBM](https://sourceforge.net/projects/qdbm){.ulink}

[PHP]{.application} also provides support for many commercial database tools such as [Oracle]{.application}, [SAP]{.application} and [ODBC Router]{.application}.

#### Optional Security/Encryption Utilities and Libraries

[Cyrus SASL-2.1.28](../postlfs/cyrus-sasl.md "Cyrus SASL-2.1.28"){.xref}, [libmcrypt](https://mcrypt.sourceforge.net/){.ulink}, and [mhash](https://mhash.sourceforge.net/){.ulink}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/php](https://wiki.linuxfromscratch.org/blfs/wiki/php){.ulink}
::::::

:::: {.installation lang="en"}
## Installation of PHP {#installation-of-php .sect2}

You can use [PHP]{.application} for server-side scripting, command-line scripting or client-side GUI applications. This book provides instructions for setting up [PHP]{.application} for server-side scripting as it is the most common form.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[PHP]{.application} has many more [**configure**]{.command} options that will enable support for various things. You can use [**./configure --help**]{.command} to see a full list of the available options. Also, use of the [PHP web site](https://www.php.net/){.ulink} is highly recommended, as their online docs are very good. An example of a [**configure**]{.command} command that utilizes many of the most common dependencies can be found at [https://anduin.linuxfromscratch.org/BLFS/files/php_configure.txt](https://anduin.linuxfromscratch.org/BLFS/files/php_configure.txt){.ulink}.

If, for whatever reason, you don't have [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref} installed, you need to add `--disable-libxml`{.option} to the [**configure**]{.command} command in the instructions below. Note that this will prevent the [**pear**]{.command} command from being built.
:::

Install [PHP]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                \
            --sysconfdir=/etc            \
            --localstatedir=/var         \
            --datadir=/usr/share/php     \
            --mandir=/usr/share/man      \
            --enable-fpm                 \
            --without-pear               \
            --with-fpm-user=apache       \
            --with-fpm-group=apache      \
            --with-fpm-systemd           \
            --with-config-file-path=/etc \
            --with-zlib                  \
            --enable-bcmath              \
            --with-bz2                   \
            --enable-calendar            \
            --enable-dba=shared          \
            --with-gdbm                  \
            --with-gmp                   \
            --enable-ftp                 \
            --with-gettext               \
            --enable-mbstring            \
            --disable-mbregex            \
            --with-readline              &&
make
```

To test the results, issue: [**make test**]{.command}. Some tests (out of over 20000) may fail, in which case you are asked whether you want to send the report to the PHP developers. If you want to automate the test, you may prefix the command with [**yes "n" \|**]{.command} .

Now, as the `root`{.systemitem} user:

``` root
make install                                     &&
install -v -m644 php.ini-production /etc/php.ini &&

install -v -m755 -d /usr/share/doc/php-8.5.6 &&
install -v -m644    CODING_STANDARDS* EXTENSIONS NEWS README* UPGRADING* \
                    /usr/share/doc/php-8.5.6
```

The default configuration files for the fastCGI process manager are installed only if they do not already exist on the system. If this is the first installation, they should be renamed, as the `root`{.systemitem} user:

``` root
if [ -f /etc/php-fpm.conf.default ]; then
  mv -v /etc/php-fpm.conf{.default,} &&
  mv -v /etc/php-fpm.d/www.conf{.default,}
fi
```

The pre-built HTML documentation is packaged in two forms: a tarball containing many individual files, useful for quick loading into your browser, and one large individual file, which is useful for using the search utility of your browser. If you downloaded either, or both, of the documentation files, issue the following commands as the `root`{.systemitem} user to install them (note these instructions assume English docs, modify the tarball names below if necessary).

For the [“[Single HTML]{.quote}”]{.quote} file:

``` root
install -v -m644 ../php_manual_en.html.gz \
    /usr/share/doc/php-8.5.6 &&
gunzip -v /usr/share/doc/php-8.5.6/php_manual_en.html.gz
```

For the [“[Many HTML files]{.quote}”]{.quote} tarball:

``` root
tar -xvf ../php_manual_en.tar.gz \
    -C /usr/share/doc/php-8.5.6 --no-same-owner
```

The bundled pear is not installed because of a bug which might pollute the filesystem with several hidden files and directories. If pear is needed, execute the following commands to install it:

``` userinput
wget https://pear.php.net/go-pear.phar
php ./go-pear.phar
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--datadir=/usr/share/php`*: This works around a bug in the build machinery, which installs some data to a wrong location.

*`--enable-fpm`*: This parameter allows building the fastCGI Process Manager.

*`--with-fpm-systemd`*: This parameter allows the FastCGI Process Manager to integrate with systemd.

*`--without-pear`*: This switch disables installation of bundled pear software.

*`--with-config-file-path=/etc`*: This parameter makes [PHP]{.application} look for the `php.ini`{.filename} configuration file in `/etc`{.filename}.

*`--with-zlib`*: This parameter adds support for [Zlib]{.application} compression.

*`--enable-bcmath`*: Enables [**bc**]{.command} style precision math functions.

*`--with-bz2`*: Adds support for [Bzip2]{.application} compression functions.

*`--enable-calendar`*: This parameter provides support for calendar conversion.

*`--enable-dba=shared`*: This parameter enables support for database (dbm-style) abstraction layer functions.

*`--enable-ftp`*: This parameter enables FTP functions.

*`--with-gettext`*: Enables functions that use [Gettext]{.application} text translation.

*`--enable-mbstring`*: This parameter enables multibyte string support.

*`--with-readline`*: This parameter enables command line [Readline]{.application} support.

`--disable-libxml`{.option}: This option allows building PHP without [libxml2]{.application} installed.

`--with-apxs2`{.option}: Instead of building the fastCGI process manager, it is possible to build an [apache]{.application} module. This has some performance penalty for heavy loaded servers, but may be easier to set up. This switch is incompatible with the *`--enable-fpm`* and *`--with-fpm-...`* switches.

`--with-mysqli=shared`{.option}: This option includes MySQLi support.

`--with-mysql-sock=/run/mysqld/mysqld.sock`{.option}: Location of the MySQL unix socket pointer.

`--with-pdo-mysql=shared`{.option}: This option includes PDO: MySQL support.

`--with-tidy=shared`{.option}: This option includes tidy library support.
:::

:::::: {.configuration lang="en"}
## Configuring PHP {#configuring-php .sect2}

::: {.sect3 lang="en"}
### []{#php-config}Config Files {#config-files .sect3}

`/etc/php.ini`{.filename}, `/etc/pear.conf`{.filename}, `/etc/php-fpm.conf`{.filename}, and `/etc/php-fpm.d/www.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

The file used as the default `/etc/php.ini`{.filename} configuration file is recommended by the [PHP]{.application} development team. This file modifies the default behavior of [PHP]{.application}. If no `/etc/php.ini`{.filename} is used, all configuration settings fall to the defaults. You should review the comments in this file and ensure the changes are acceptable in your particular environment.

The fastCGI process manager uses the configuration file `/etc/php-fpm.conf`{.filename}. The default file shipped with PHP includes all the `/etc/php-fpm.d/*.conf`{.filename} in turn. There is a shipped `/etc/php-fpm.d/www.conf`{.filename} file, that contains the parameters related to the interaction with the Apache Web server.

You may have noticed the following from the output of the [**make install**]{.command} command:

``` screen
You may want to add: /usr/lib/php to your php.ini include_path
```

If desired, add the entry using the following command as the `root`{.systemitem} user:

``` root
sed -i 's@php/includes"@&\ninclude_path = ".:/usr/lib/php"@' \
    /etc/php.ini
```

To enable fastCGI support in the [Apache]{.application} web server, two LoadModule directives must be added to the `httpd.conf`{.filename} file. They are commented out, so just issue the following command as `root`{.systemitem} user:

``` root
sed -i -e '/proxy_module/s/^#//'      \
       -e '/proxy_fcgi_module/s/^#//' \
       /etc/httpd/httpd.conf
```

Those modules accept various [**ProxyPass**]{.command} directives. One possibility is (as the `root`{.systemitem} user):

``` root
echo \
'ProxyPassMatch ^/(.*\.php)$ fcgi://127.0.0.1:9000/srv/www/$1' >> \
/etc/httpd/httpd.conf
```

Additionally, it may be useful to add an entry for `index.php`{.filename} to the DirectoryIndex directive of the `httpd.conf`{.filename} file. Lastly, adding a line to set up the `.phps`{.filename} extension to show highlighted [PHP]{.application} source may be desirable:

``` screen
AddType application/x-httpd-php-source .phps
```

You'll need to restart the [Apache]{.application} web server after making any modifications to the `httpd.conf`{.filename} file.
:::

::: {.sect3 lang="en"}
### []{#php-init} Systemd Unit {#systemd-unit .sect3}

To start the [**php-fpm**]{.command} daemon at boot, install the systemd unit from the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package by running the following command as the `root`{.systemitem} user:

``` root
make install-php-fpm
```
:::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [phar (symlink), phar.phar, php, php-cgi, php-config, php-fpm, phpdbg, and phpize]{.segbody}
:::

::: seg
**Installed Libraries:** [dba.so and opcache.so in /usr/lib/php/extensions/no-debug-non-zts-20240924]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/php-fpm.d, /usr/{include,lib,share}/php, and /usr/share/doc/php-8.5.6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- ---------------------------------------------------------------------------------------------------------
  []{#php-prog}[[**php**]{.command}]{.term}      is a command line interface that enables you to parse and execute PHP code
  []{#pear}[[**pear**]{.command}]{.term}         is the PHP Extension and Application Repository (PEAR) package manager. This isn't installed by default
  []{#php-fpm}[[**php-fpm**]{.command}]{.term}   is the fastCGI process manager for PHP
  []{#phpdbg}[[**phpdbg**]{.command}]{.term}     is the interactive PHP debugger
  ---------------------------------------------- ---------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::

::: navfooter
-   [Prev](perl-deps.md "Perl Module Dependencies"){accesskey="p"}

    Perl Module Dependencies

-   [Next](python3.md "Python-3.14.5"){accesskey="n"}

    Python-3.14.5

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
