<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 20. Major Servers

-   [Prev](majorservers.md "Major Servers")

    Major Servers

-   [Next](bind.md "BIND-9.20.20")

    BIND-9.20.20

-   [Up](majorservers.md "Chapter 20. Major Servers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Apache-2.4.67 {#apache-2.4.67}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Apache HTTPD {#introduction-to-apache-httpd}

The <span class="application">Apache HTTPD</span> package contains an open-source HTTP server. It is useful for creating local intranet web sites or running huge web serving operations.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.apache.org/dist/httpd/httpd-2.4.67.tar.bz2">https://archive.apache.org/dist/httpd/httpd-2.4.67.tar.bz2</a>

-   Download MD5 sum: f7310cfdfc702cee625e9881049d5819

-   Download size: 7.2 MB

-   Estimated disk space required: 129 MB

-   Estimated build time: 0.3 SBU (Using parallelism=4)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/httpd-blfs_layout-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/httpd-blfs_layout-1.patch</a>

-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/httpd-2.4.67-openssl4_fixes-2.patch">https://www.linuxfromscratch.org/patches/blfs/svn/httpd-2.4.67-openssl4_fixes-2.patch</a>
</div>

### Apache HTTPD Dependencies

#### Required

<a class="xref" href="../general/apr-util.md" title="Apr-Util-1.6.3">Apr-Util-1.6.3</a>

#### Optional

<a class="xref" href="../general/brotli.md" title="brotli-1.2.0">Brotli-1.2.0</a>, <a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../general/jansson.md" title="Jansson-2.15.0">jansson-2.15.0</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="../general/lua.md" title="Lua-5.4.8">Lua-5.4.8</a>, <a class="xref" href="../basicnet/lynx.md" title="Lynx-2.9.3">Lynx-2.9.3</a> or <a class="xref" href="../basicnet/links.md" title="Links-2.30">Links-2.30</a> or <a class="ulink" href="http://elinks.or.cz">ELinks</a>, <a class="xref" href="../basicnet/nghttp2.md" title="nghttp2-1.69.0">nghttp2-1.69.0</a>, <a class="xref" href="openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a> (<a class="xref" href="../general/apr-util.md" title="Apr-Util-1.6.3">Apr-Util-1.6.3</a> needs to be installed with ldap support), <a class="xref" href="../basicnet/rsync.md" title="rsync-3.4.3">rsync-3.4.3</a>, <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated), and <a class="ulink" href="https://sourceforge.net/projects/distcache">Distcache</a>
</div>

<div class="installation" lang="en">
## Installation of Apache HTTPD {#installation-of-apache-httpd}

For security reasons, running the server as an unprivileged user and group is strongly encouraged. Create the following group and user using the following commands as <code class="systemitem">root</code>:

```bash
groupadd -g 25 apache &&
useradd -c "Apache Server" -d /srv/www -g apache \
        -s /bin/false -u 25 apache
```

Now add a patch for compatibility with openssl4:

```bash
patch -Np1 -i ../httpd-2.4.67-openssl4_fixes-2.patch
```

Build and install <span class="application">Apache HTTPD</span> by running the following commands:

```bash
patch -Np1 -i ../httpd-blfs_layout-1.patch             &&

sed '/dir.*CFG_PREFIX/s@^@#@' -i support/apxs.in       &&

sed -e '/HTTPD_ROOT/s:${ap_prefix}:/etc/httpd:'       \
    -e '/SERVER_CONFIG_FILE/s:${rel_sysconfdir}/::'   \
    -e '/AP_TYPES_CONFIG_FILE/s:${rel_sysconfdir}/::' \
    -i configure  &&

./configure --enable-authnz-fcgi                    \
            --enable-layout=BLFS                    \
            --enable-mods-shared="all cgi"          \
            --enable-mpms-shared=all                \
            --enable-suexec=shared                  \
            --with-apr=/usr/bin/apr-1-config        \
            --with-apr-util=/usr/bin/apu-1-config   \
            --with-suexec-bin=/usr/lib/httpd/suexec \
            --with-suexec-caller=apache             \
            --with-suexec-docroot=/srv/www          \
            --with-suexec-uidmin=100                \
            --with-suexec-userdir=public_html       \
            --with-suexec-logfile=/var/log/httpd/suexec.log &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install  &&

mv -v /usr/sbin/suexec /usr/lib/httpd/suexec &&
chgrp apache           /usr/lib/httpd/suexec &&
chmod 4754             /usr/lib/httpd/suexec &&

chown -v -R apache:apache /srv/www
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed '/dir.\*CFG_PREFIX/s@\^@#@'...</strong></span>: Forces the <span class="application">apxs</span> utility to use absolute pathnames for modules, when instructed to do so.

<span class="command"><strong>sed -e '/HTTPD_ROOT/s ...</strong></span>: Fixes some paths.

*`--enable-authnz-fcgi`*: Build FastCGI authorizer-based authentication and authorization (mod_authnz_fcgi.so fast CGI module).

*`--enable-mods-shared="all cgi"`*: The modules should be compiled and used as Dynamic Shared Objects (DSOs) so they can be included and excluded from the server using the run-time configuration directives.

*`--enable-mpms-shared=all`*: This switch ensures that all MPM (Multi Processing Modules) are built as Dynamic Shared Objects (DSOs), so the user can choose which one to use at runtime.

*`--enable-suexec`*: This switch enables building of the <span class="application">Apache</span> suEXEC module which can be used to allow users to run CGI and SSI scripts under user IDs different from the user ID of the calling web server.

*`--with-suexec-*`*: These switches control suEXEC module behavior, such as default document root, minimal UID that can be used to run the script under the suEXEC. Please note that with minimal UID 100, you can't run CGI or SSI scripts under suEXEC as the <code class="systemitem">apache</code> user.

<span class="command"><strong>... /usr/lib/httpd/suexec</strong></span>: These commands put <span class="command"><strong>suexec</strong></span> wrapper into proper location, since it is not meant to be run directly. They also adjust proper permissions of the binary, making it setgid <code class="systemitem">apache</code>.

<span class="command"><strong>chown -R apache:apache /srv/www</strong></span>: By default, the installation process installs files (documentation, error messages, default icons, etc.) with the ownership of the user that extracted the files from the tar file. If you want to change the ownership to another user, you should do so at this point. The only requirement is that the document directories need to be accessible by the <span class="command"><strong>httpd</strong></span> process with (r-x) permissions and files need to be readable (r--) by the <code class="systemitem">apache</code> user.
</div>

<div class="configuration" lang="en">
## Configuring Apache {#configuring-apache}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/httpd/httpd.conf</code> and <code class="filename">/etc/httpd/extra/*</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

See <a class="ulink" href="file:///usr/share/httpd/manual/configuring.md">file:///usr/share/httpd/manual/configuring.html</a> for detailed instructions on customising your <span class="application">Apache</span> HTTP server configuration file.

There is no reason, at least for internet facing sites, not to use SSL encryption. Setting up a secured website does not cost anything except installing one additional small tool and a few minutes of configuration work. Use this guideline at <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/Securing_a_website">https://wiki.linuxfromscratch.org/blfs/wiki/Securing_a_website</a> to create world-wide accepted certificates and renew them on a regular basis.
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

If you want the <span class="application">Apache</span> server to start automatically when the system is booted, install the <span class="phrase"><code class="filename">httpd.service</code> unit</span> included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package:

```bash
make install-httpd
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">ab, apachectl, apxs, checkgid, dbmmanage, fcgistarter, htcacheclean, htdbm, htdigest, htpasswd, httpd, httxt2dbm, logresolve, and rotatelogs</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">Several libraries under /usr/lib/httpd/modules/</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/httpd, /srv/www, /usr/include/httpd, /usr/lib/httpd, /usr/share/httpd, /var/log/httpd, and /var/run/httpd</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="ab"></a><span class="command"><span class="term"><strong>ab</strong></span></span>                       is a tool for benchmarking your <span class="application">Apache</span> HTTP server
  <a id="apachectl"></a><span class="command"><span class="term"><strong>apachectl</strong></span></span>         is a front end to the <span class="application">Apache</span> HTTP server which is designed to help the administrator control the functioning of the <span class="application">Apache</span> httpd daemon
  <a id="apxs"></a><span class="command"><span class="term"><strong>apxs</strong></span></span>                   is a tool for building and installing extension modules for the <span class="application">Apache</span> HTTP server
  <a id="checkgid"></a><span class="command"><span class="term"><strong>checkgid</strong></span></span>           is a program that checks whether it can setgid to the group specified. This is to see if it is a valid group for Apache2 to use at runtime. If the user (should be run as superuser) is in that group, or can setgid to it, it will return 0
  <a id="dbmmanage"></a><span class="command"><span class="term"><strong>dbmmanage</strong></span></span>         is used to create and update the DBM format files used to store usernames and passwords for basic authentication of HTTP users
  <a id="fcgistarter"></a><span class="command"><span class="term"><strong>fcgistarter</strong></span></span>     is a tool to start a FastCGI program
  <a id="htcacheclean"></a><span class="command"><span class="term"><strong>htcacheclean</strong></span></span>   is used to clean up the disk cache
  <a id="htdbm"></a><span class="command"><span class="term"><strong>htdbm</strong></span></span>                 is used to manipulate the DBM password databases
  <a id="htdigest"></a><span class="command"><span class="term"><strong>htdigest</strong></span></span>           is used to create and update the flat-files used to store usernames, realms and passwords for digest authentication of HTTP users
  <a id="htpasswd"></a><span class="command"><span class="term"><strong>htpasswd</strong></span></span>           is used to create and update the flat-files used to store usernames and passwords for basic authentication of HTTP users
  <a id="httpd"></a><span class="command"><span class="term"><strong>httpd</strong></span></span>                 is the <span class="application">Apache</span> HTTP server program
  <a id="httxt2dbm"></a><span class="command"><span class="term"><strong>httxt2dbm</strong></span></span>         is used to generate DBM files from text, for use in RewriteMap
  <a id="logresolve"></a><span class="command"><span class="term"><strong>logresolve</strong></span></span>       is a post-processing program to resolve IP-addresses in <span class="application">Apache</span>'s access log files
  <a id="rotatelogs"></a><span class="command"><span class="term"><strong>rotatelogs</strong></span></span>       is a simple program for use in conjunction with <span class="application">Apache</span>'s piped log file feature
  <a id="suexec"></a><span class="command"><span class="term"><strong>suexec</strong></span></span>               allows users to run CGI and SSI applications as a different user
  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](majorservers.md "Major Servers")

    Major Servers

-   [Next](bind.md "BIND-9.20.20")

    BIND-9.20.20

-   [Up](majorservers.md "Chapter 20. Major Servers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
