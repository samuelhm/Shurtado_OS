<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](perl-deps.md "Perl Module Dependencies")

    Perl Module Dependencies

-   [Next](python3.md "Python-3.14.5")

    Python-3.14.5

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# PHP-8.5.6 {#php-8.5.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to PHP {#introduction-to-php}

<span class="application">PHP</span> is the PHP Hypertext Preprocessor. Primarily used in dynamic web sites, it allows for programming code to be directly embedded into the HTML markup. It is also useful as a general purpose scripting language.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.php.net/distributions/php-8.5.6.tar.xz">https://www.php.net/distributions/php-8.5.6.tar.xz</a>

-   Download MD5 sum: 13915f7681c113f4c748d29d40c5822b

-   Download size: 14 MB

-   Estimated disk space required: 668 MB (with tests)

-   Estimated build time: 1.7 SBU (add 2.5 SBU for tests; both with parallelism=4)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Optional pre-built documentation (single file html): <a class="ulink" href="https://www.php.net/distributions/manual/php_manual_en.html.gz">https://www.php.net/distributions/manual/php_manual_en.html.gz</a>

-   Optional pre-built documentation (chunked html): <a class="ulink" href="https://www.php.net/distributions/manual/php_manual_en.tar.gz">https://www.php.net/distributions/manual/php_manual_en.tar.gz</a>. Note that the documentation can be found in languages other than English at <a class="ulink" href="https://www.php.net/download-docs.php">https://www.php.net/download-docs.php</a>
</div>

### PHP Dependencies

#### Recommended

<a class="xref" href="../server/apache.md" title="Apache-2.4.67">Apache-2.4.67</a> and <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional System Utilities and Libraries

<a class="xref" href="aspell.md" title="Aspell-0.60.8.2">Aspell-0.60.8.2</a>, <a class="xref" href="enchant.md" title="enchant-2.8.16">enchant-2.8.16</a>, <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>, an <a class="xref" href="../server/mail.md" title="Chapter 21. Mail Server Software">MTA</a> (that provides a <span class="command"><strong>sendmail</strong></span> command), <a class="ulink" href="https://wiki.ubuntu.com/AppArmor">AppArmor</a>, <a class="ulink" href="https://dmalloc.com/">Dmalloc</a>, <a class="ulink" href="http://www.net-snmp.org/">Net-SNMP</a>, <a class="ulink" href="https://github.com/kkos/oniguruma">oniguruma</a>, <a class="ulink" href="http://www.ossp.org/pkg/lib/mm/">OSSP mm</a>, <a class="ulink" href="https://re2c.org/">re2c</a>, and <a class="ulink" href="https://xmlrpc-epi.sourceforge.net/main.php?t=php_about">XMLRPC-EPI</a>

#### Optional Graphics Utilities and Libraries

<a class="xref" href="freetype2.md" title="FreeType-2.14.3">FreeType-2.14.3</a>, <a class="xref" href="libexif.md" title="libexif-0.6.26">libexif-0.6.26</a>, <a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="../x/installing.md" title="Chapter 24. Graphical Environments">a graphical environment</a>, <a class="ulink" href="https://opensource.adobe.com/dc-acrobat-sdk-docs/acrobatsdk/">FDF Toolkit</a>, <a class="ulink" href="https://github.com/libgd/libgd">GD</a>, and <a class="ulink" href="https://www.t1lib.org/">t1lib</a>

#### Optional Web Utilities

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="tidy-html5.md" title="tidy-html5-5.8.0">tidy-html5-5.8.0</a>, <a class="ulink" href="https://sourceforge.net/projects/caudium/">Caudium</a>, <a class="ulink" href="https://www.hyperwave.com/en/">Hyperwave</a>, and <a class="ulink" href="https://github.com/Bilal-S/WDDX.net">WDDX</a>

#### Optional Data Management Utilities and Libraries

<a class="xref" href="../server/lmdb.md" title="lmdb-0.9.35">lmdb-0.9.35</a>, <a class="xref" href="../server/mariadb.md" title="MariaDB-12.3.2">MariaDB-12.3.2</a> or <a class="ulink" href="https://www.mysql.com/">MySQL</a>, <a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>, <a class="xref" href="../server/postgresql.md" title="PostgreSQL-18.4">PostgreSQL-18.4</a>, <a class="xref" href="unixodbc.md" title="unixODBC-2.3.14">unixODBC-2.3.14</a>, <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated) <a class="ulink" href="https://www.softwareag.com/en_corporate/platform/adabas-natural.md">Adabas</a>, <a class="ulink" href="https://raima.com/product-overview/">Birdstep</a>, <a class="ulink" href="https://cr.yp.to/cdb.md">cdb</a>, <a class="ulink" href="https://www.dbmaker.com/">DBMaker</a>, <a class="ulink" href="http://www.empress.com/">Empress</a>, <a class="ulink" href="http://www.frontbase.com/cgi-bin/WebObjects/FBWebSite">FrontBase</a>, <a class="ulink" href="https://www.ibm.com/analytics/us/en/db2/">IBM DB2</a>, <a class="ulink" href="https://sourceforge.net/projects/iodbc/files/">libiodbc</a>, <a class="ulink" href="https://hughestech.com.au/products/msql/">Mini SQL</a>, <a class="ulink" href="https://www.monetra.com/">Monetra</a>, and <a class="ulink" href="https://sourceforge.net/projects/qdbm">QDBM</a>

<span class="application">PHP</span> also provides support for many commercial database tools such as <span class="application">Oracle</span>, <span class="application">SAP</span> and <span class="application">ODBC Router</span>.

#### Optional Security/Encryption Utilities and Libraries

<a class="xref" href="../postlfs/cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a>, <a class="ulink" href="https://mcrypt.sourceforge.net/">libmcrypt</a>, and <a class="ulink" href="https://mhash.sourceforge.net/">mhash</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/php">https://wiki.linuxfromscratch.org/blfs/wiki/php</a>
</div>

<div class="installation" lang="en">
## Installation of PHP {#installation-of-php}

You can use <span class="application">PHP</span> for server-side scripting, command-line scripting or client-side GUI applications. This book provides instructions for setting up <span class="application">PHP</span> for server-side scripting as it is the most common form.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<span class="application">PHP</span> has many more <span class="command"><strong>configure</strong></span> options that will enable support for various things. You can use <span class="command"><strong>./configure --help</strong></span> to see a full list of the available options. Also, use of the <a class="ulink" href="https://www.php.net/">PHP web site</a> is highly recommended, as their online docs are very good. An example of a <span class="command"><strong>configure</strong></span> command that utilizes many of the most common dependencies can be found at <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/files/php_configure.txt">https://anduin.linuxfromscratch.org/BLFS/files/php_configure.txt</a>.

If, for whatever reason, you don't have <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a> installed, you need to add <code class="option">--disable-libxml</code> to the <span class="command"><strong>configure</strong></span> command in the instructions below. Note that this will prevent the <span class="command"><strong>pear</strong></span> command from being built.
</div>

Install <span class="application">PHP</span> by running the following commands:

```bash
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

To test the results, issue: <span class="command"><strong>make test</strong></span>. Some tests (out of over 20000) may fail, in which case you are asked whether you want to send the report to the PHP developers. If you want to automate the test, you may prefix the command with <span class="command"><strong>yes "n" \|</strong></span> .

Now, as the <code class="systemitem">root</code> user:

```bash
make install                                     &&
install -v -m644 php.ini-production /etc/php.ini &&

install -v -m755 -d /usr/share/doc/php-8.5.6 &&
install -v -m644    CODING_STANDARDS* EXTENSIONS NEWS README* UPGRADING* \
                    /usr/share/doc/php-8.5.6
```

The default configuration files for the fastCGI process manager are installed only if they do not already exist on the system. If this is the first installation, they should be renamed, as the <code class="systemitem">root</code> user:

```bash
if [ -f /etc/php-fpm.conf.default ]; then
  mv -v /etc/php-fpm.conf{.default,} &&
  mv -v /etc/php-fpm.d/www.conf{.default,}
fi
```

The pre-built HTML documentation is packaged in two forms: a tarball containing many individual files, useful for quick loading into your browser, and one large individual file, which is useful for using the search utility of your browser. If you downloaded either, or both, of the documentation files, issue the following commands as the <code class="systemitem">root</code> user to install them (note these instructions assume English docs, modify the tarball names below if necessary).

For the <span class="quote">“<span class="quote">Single HTML</span>”</span> file:

```bash
install -v -m644 ../php_manual_en.html.gz \
    /usr/share/doc/php-8.5.6 &&
gunzip -v /usr/share/doc/php-8.5.6/php_manual_en.html.gz
```

For the <span class="quote">“<span class="quote">Many HTML files</span>”</span> tarball:

```bash
tar -xvf ../php_manual_en.tar.gz \
    -C /usr/share/doc/php-8.5.6 --no-same-owner
```

The bundled pear is not installed because of a bug which might pollute the filesystem with several hidden files and directories. If pear is needed, execute the following commands to install it:

```bash
wget https://pear.php.net/go-pear.phar
php ./go-pear.phar
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--datadir=/usr/share/php`*: This works around a bug in the build machinery, which installs some data to a wrong location.

*`--enable-fpm`*: This parameter allows building the fastCGI Process Manager.

*`--with-fpm-systemd`*: This parameter allows the FastCGI Process Manager to integrate with systemd.

*`--without-pear`*: This switch disables installation of bundled pear software.

*`--with-config-file-path=/etc`*: This parameter makes <span class="application">PHP</span> look for the <code class="filename">php.ini</code> configuration file in <code class="filename">/etc</code>.

*`--with-zlib`*: This parameter adds support for <span class="application">Zlib</span> compression.

*`--enable-bcmath`*: Enables <span class="command"><strong>bc</strong></span> style precision math functions.

*`--with-bz2`*: Adds support for <span class="application">Bzip2</span> compression functions.

*`--enable-calendar`*: This parameter provides support for calendar conversion.

*`--enable-dba=shared`*: This parameter enables support for database (dbm-style) abstraction layer functions.

*`--enable-ftp`*: This parameter enables FTP functions.

*`--with-gettext`*: Enables functions that use <span class="application">Gettext</span> text translation.

*`--enable-mbstring`*: This parameter enables multibyte string support.

*`--with-readline`*: This parameter enables command line <span class="application">Readline</span> support.

<code class="option">--disable-libxml</code>: This option allows building PHP without <span class="application">libxml2</span> installed.

<code class="option">--with-apxs2</code>: Instead of building the fastCGI process manager, it is possible to build an <span class="application">apache</span> module. This has some performance penalty for heavy loaded servers, but may be easier to set up. This switch is incompatible with the *`--enable-fpm`* and *`--with-fpm-...`* switches.

<code class="option">--with-mysqli=shared</code>: This option includes MySQLi support.

<code class="option">--with-mysql-sock=/run/mysqld/mysqld.sock</code>: Location of the MySQL unix socket pointer.

<code class="option">--with-pdo-mysql=shared</code>: This option includes PDO: MySQL support.

<code class="option">--with-tidy=shared</code>: This option includes tidy library support.
</div>

<div class="configuration" lang="en">
## Configuring PHP {#configuring-php}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/php.ini</code>, <code class="filename">/etc/pear.conf</code>, <code class="filename">/etc/php-fpm.conf</code>, and <code class="filename">/etc/php-fpm.d/www.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

The file used as the default <code class="filename">/etc/php.ini</code> configuration file is recommended by the <span class="application">PHP</span> development team. This file modifies the default behavior of <span class="application">PHP</span>. If no <code class="filename">/etc/php.ini</code> is used, all configuration settings fall to the defaults. You should review the comments in this file and ensure the changes are acceptable in your particular environment.

The fastCGI process manager uses the configuration file <code class="filename">/etc/php-fpm.conf</code>. The default file shipped with PHP includes all the <code class="filename">/etc/php-fpm.d/*.conf</code> in turn. There is a shipped <code class="filename">/etc/php-fpm.d/www.conf</code> file, that contains the parameters related to the interaction with the Apache Web server.

You may have noticed the following from the output of the <span class="command"><strong>make install</strong></span> command:

```console
You may want to add: /usr/lib/php to your php.ini include_path
```

If desired, add the entry using the following command as the <code class="systemitem">root</code> user:

```bash
sed -i 's@php/includes"@&\ninclude_path = ".:/usr/lib/php"@' \
    /etc/php.ini
```

To enable fastCGI support in the <span class="application">Apache</span> web server, two LoadModule directives must be added to the <code class="filename">httpd.conf</code> file. They are commented out, so just issue the following command as <code class="systemitem">root</code> user:

```bash
sed -i -e '/proxy_module/s/^#//'      \
       -e '/proxy_fcgi_module/s/^#//' \
       /etc/httpd/httpd.conf
```

Those modules accept various <span class="command"><strong>ProxyPass</strong></span> directives. One possibility is (as the <code class="systemitem">root</code> user):

```bash
echo \
'ProxyPassMatch ^/(.*\.php)$ fcgi://127.0.0.1:9000/srv/www/$1' >> \
/etc/httpd/httpd.conf
```

Additionally, it may be useful to add an entry for <code class="filename">index.php</code> to the DirectoryIndex directive of the <code class="filename">httpd.conf</code> file. Lastly, adding a line to set up the <code class="filename">.phps</code> extension to show highlighted <span class="application">PHP</span> source may be desirable:

```console
AddType application/x-httpd-php-source .phps
```

You'll need to restart the <span class="application">Apache</span> web server after making any modifications to the <code class="filename">httpd.conf</code> file.
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the <span class="command"><strong>php-fpm</strong></span> daemon at boot, install the systemd unit from the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package by running the following command as the <code class="systemitem">root</code> user:

```bash
make install-php-fpm
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">phar (symlink), phar.phar, php, php-cgi, php-config, php-fpm, phpdbg, and phpize</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">dba.so and opcache.so in /usr/lib/php/extensions/no-debug-non-zts-20240924</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/php-fpm.d, /usr/{include,lib,share}/php, and /usr/share/doc/php-8.5.6</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- ---------------------------------------------------------------------------------------------------------
  <a id="php-prog"></a><span class="command"><span class="term"><strong>php</strong></span></span>      is a command line interface that enables you to parse and execute PHP code
  <a id="pear"></a><span class="command"><span class="term"><strong>pear</strong></span></span>         is the PHP Extension and Application Repository (PEAR) package manager. This isn't installed by default
  <a id="php-fpm"></a><span class="command"><span class="term"><strong>php-fpm</strong></span></span>   is the fastCGI process manager for PHP
  <a id="phpdbg"></a><span class="command"><span class="term"><strong>phpdbg</strong></span></span>     is the interactive PHP debugger
  ---------------------------------------------- ---------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](perl-deps.md "Perl Module Dependencies")

    Perl Module Dependencies

-   [Next](python3.md "Python-3.14.5")

    Python-3.14.5

-   [Up](prog.md "Chapter 13. Programming")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
