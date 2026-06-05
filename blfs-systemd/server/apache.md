::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 20. Major Servers

-   [Prev](majorservers.md "Major Servers"){accesskey="p"}

    Major Servers

-   [Next](bind.md "BIND-9.20.20"){accesskey="n"}

    BIND-9.20.20

-   [Up](majorservers.md "Chapter 20. Major Servers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#apache}Apache-2.4.67 {#apache-2.4.67 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Apache HTTPD {#introduction-to-apache-httpd .sect2}

The [Apache HTTPD]{.application} package contains an open-source HTTP server. It is useful for creating local intranet web sites or running huge web serving operations.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.apache.org/dist/httpd/httpd-2.4.67.tar.bz2](https://archive.apache.org/dist/httpd/httpd-2.4.67.tar.bz2){.ulink}

-   Download MD5 sum: f7310cfdfc702cee625e9881049d5819

-   Download size: 7.2 MB

-   Estimated disk space required: 129 MB

-   Estimated build time: 0.3 SBU (Using parallelism=4)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/httpd-blfs_layout-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/httpd-blfs_layout-1.patch){.ulink}

-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/httpd-2.4.67-openssl4_fixes-2.patch](https://www.linuxfromscratch.org/patches/blfs/svn/httpd-2.4.67-openssl4_fixes-2.patch){.ulink}
:::

### Apache HTTPD Dependencies

#### Required

[Apr-Util-1.6.3](../general/apr-util.md "Apr-Util-1.6.3"){.xref}

#### Optional

[Brotli-1.2.0](../general/brotli.md "brotli-1.2.0"){.xref}, [cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [jansson-2.15.0](../general/jansson.md "Jansson-2.15.0"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [Lua-5.4.8](../general/lua.md "Lua-5.4.8"){.xref}, [Lynx-2.9.3](../basicnet/lynx.md "Lynx-2.9.3"){.xref} or [Links-2.30](../basicnet/links.md "Links-2.30"){.xref} or [ELinks](http://elinks.or.cz){.ulink}, [nghttp2-1.69.0](../basicnet/nghttp2.md "nghttp2-1.69.0"){.xref}, [OpenLDAP-2.6.13](openldap.md "OpenLDAP-2.6.13"){.xref} ([Apr-Util-1.6.3](../general/apr-util.md "Apr-Util-1.6.3"){.xref} needs to be installed with ldap support), [rsync-3.4.3](../basicnet/rsync.md "rsync-3.4.3"){.xref}, [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated), and [Distcache](https://sourceforge.net/projects/distcache){.ulink}
::::::

::: {.installation lang="en"}
## Installation of Apache HTTPD {#installation-of-apache-httpd .sect2}

For security reasons, running the server as an unprivileged user and group is strongly encouraged. Create the following group and user using the following commands as `root`{.systemitem}:

``` root
groupadd -g 25 apache &&
useradd -c "Apache Server" -d /srv/www -g apache \
        -s /bin/false -u 25 apache
```

Now add a patch for compatibility with openssl4:

``` userinput
patch -Np1 -i ../httpd-2.4.67-openssl4_fixes-2.patch
```

Build and install [Apache HTTPD]{.application} by running the following commands:

``` userinput
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

Now, as the `root`{.systemitem} user:

``` root
make install  &&

mv -v /usr/sbin/suexec /usr/lib/httpd/suexec &&
chgrp apache           /usr/lib/httpd/suexec &&
chmod 4754             /usr/lib/httpd/suexec &&

chown -v -R apache:apache /srv/www
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed '/dir.\*CFG_PREFIX/s@\^@#@'...**]{.command}: Forces the [apxs]{.application} utility to use absolute pathnames for modules, when instructed to do so.

[**sed -e '/HTTPD_ROOT/s ...**]{.command}: Fixes some paths.

*`--enable-authnz-fcgi`*: Build FastCGI authorizer-based authentication and authorization (mod_authnz_fcgi.so fast CGI module).

*`--enable-mods-shared="all cgi"`*: The modules should be compiled and used as Dynamic Shared Objects (DSOs) so they can be included and excluded from the server using the run-time configuration directives.

*`--enable-mpms-shared=all`*: This switch ensures that all MPM (Multi Processing Modules) are built as Dynamic Shared Objects (DSOs), so the user can choose which one to use at runtime.

*`--enable-suexec`*: This switch enables building of the [Apache]{.application} suEXEC module which can be used to allow users to run CGI and SSI scripts under user IDs different from the user ID of the calling web server.

*`--with-suexec-*`*: These switches control suEXEC module behavior, such as default document root, minimal UID that can be used to run the script under the suEXEC. Please note that with minimal UID 100, you can't run CGI or SSI scripts under suEXEC as the `apache`{.systemitem} user.

[**... /usr/lib/httpd/suexec**]{.command}: These commands put [**suexec**]{.command} wrapper into proper location, since it is not meant to be run directly. They also adjust proper permissions of the binary, making it setgid `apache`{.systemitem}.

[**chown -R apache:apache /srv/www**]{.command}: By default, the installation process installs files (documentation, error messages, default icons, etc.) with the ownership of the user that extracted the files from the tar file. If you want to change the ownership to another user, you should do so at this point. The only requirement is that the document directories need to be accessible by the [**httpd**]{.command} process with (r-x) permissions and files need to be readable (r--) by the `apache`{.systemitem} user.
:::

:::::: {.configuration lang="en"}
## Configuring Apache {#configuring-apache .sect2}

::: {.sect3 lang="en"}
### []{#apache-config}Config Files {#config-files .sect3}

`/etc/httpd/httpd.conf`{.filename} and `/etc/httpd/extra/*`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

See [file:///usr/share/httpd/manual/configuring.html](file:///usr/share/httpd/manual/configuring.md){.ulink} for detailed instructions on customising your [Apache]{.application} HTTP server configuration file.

There is no reason, at least for internet facing sites, not to use SSL encryption. Setting up a secured website does not cost anything except installing one additional small tool and a few minutes of configuration work. Use this guideline at [https://wiki.linuxfromscratch.org/blfs/wiki/Securing_a_website](https://wiki.linuxfromscratch.org/blfs/wiki/Securing_a_website){.ulink} to create world-wide accepted certificates and renew them on a regular basis.
:::

::: {.sect3 lang="en"}
### []{#httpd-init} Systemd Unit {#systemd-unit .sect3}

If you want the [Apache]{.application} server to start automatically when the system is booted, install the [`httpd.service`{.filename} unit]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package:

``` root
make install-httpd
```
:::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ab, apachectl, apxs, checkgid, dbmmanage, fcgistarter, htcacheclean, htdbm, htdigest, htpasswd, httpd, httxt2dbm, logresolve, and rotatelogs]{.segbody}
:::

::: seg
**Installed Libraries:** [Several libraries under /usr/lib/httpd/modules/]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/httpd, /srv/www, /usr/include/httpd, /usr/lib/httpd, /usr/share/httpd, /var/log/httpd, and /var/run/httpd]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#ab}[[**ab**]{.command}]{.term}                       is a tool for benchmarking your [Apache]{.application} HTTP server
  []{#apachectl}[[**apachectl**]{.command}]{.term}         is a front end to the [Apache]{.application} HTTP server which is designed to help the administrator control the functioning of the [Apache]{.application} httpd daemon
  []{#apxs}[[**apxs**]{.command}]{.term}                   is a tool for building and installing extension modules for the [Apache]{.application} HTTP server
  []{#checkgid}[[**checkgid**]{.command}]{.term}           is a program that checks whether it can setgid to the group specified. This is to see if it is a valid group for Apache2 to use at runtime. If the user (should be run as superuser) is in that group, or can setgid to it, it will return 0
  []{#dbmmanage}[[**dbmmanage**]{.command}]{.term}         is used to create and update the DBM format files used to store usernames and passwords for basic authentication of HTTP users
  []{#fcgistarter}[[**fcgistarter**]{.command}]{.term}     is a tool to start a FastCGI program
  []{#htcacheclean}[[**htcacheclean**]{.command}]{.term}   is used to clean up the disk cache
  []{#htdbm}[[**htdbm**]{.command}]{.term}                 is used to manipulate the DBM password databases
  []{#htdigest}[[**htdigest**]{.command}]{.term}           is used to create and update the flat-files used to store usernames, realms and passwords for digest authentication of HTTP users
  []{#htpasswd}[[**htpasswd**]{.command}]{.term}           is used to create and update the flat-files used to store usernames and passwords for basic authentication of HTTP users
  []{#httpd}[[**httpd**]{.command}]{.term}                 is the [Apache]{.application} HTTP server program
  []{#httxt2dbm}[[**httxt2dbm**]{.command}]{.term}         is used to generate DBM files from text, for use in RewriteMap
  []{#logresolve}[[**logresolve**]{.command}]{.term}       is a post-processing program to resolve IP-addresses in [Apache]{.application}'s access log files
  []{#rotatelogs}[[**rotatelogs**]{.command}]{.term}       is a simple program for use in conjunction with [Apache]{.application}'s piped log file feature
  []{#suexec}[[**suexec**]{.command}]{.term}               allows users to run CGI and SSI applications as a different user
  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](majorservers.md "Major Servers"){accesskey="p"}

    Major Servers

-   [Next](bind.md "BIND-9.20.20"){accesskey="n"}

    BIND-9.20.20

-   [Up](majorservers.md "Chapter 20. Major Servers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
