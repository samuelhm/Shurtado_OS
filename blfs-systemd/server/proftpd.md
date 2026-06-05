::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 20. Major Servers

-   [Prev](kea.md "Kea 3.0.2 DHCP Server"){accesskey="p"}

    Kea 3.0.2 DHCP Server

-   [Next](mail.md "Mail Server Software"){accesskey="n"}

    Mail Server Software

-   [Up](majorservers.md "Chapter 20. Major Servers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#proftpd}ProFTPD-1.3.9a {#proftpd-1.3.9a .sect1}

::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to ProFTPD {#introduction-to-proftpd .sect2}

The [ProFTPD]{.application} package contains a secure and highly configurable FTP daemon. This is useful for serving large file archives over a network.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/proftpd/proftpd/archive/v1.3.9a/proftpd-1.3.9a.tar.gz](https://github.com/proftpd/proftpd/archive/v1.3.9a/proftpd-1.3.9a.tar.gz){.ulink}

-   Download MD5 sum: 9333020093faae6f02532c6e27078ebb

-   Download size: 19 MB

-   Estimated disk space required: 74 MB

-   Estimated build time: 0.3 SBU
:::

### ProFTPD Dependencies

#### Optional

[libcap-2.78 with PAM](../postlfs/libcap.md "libcap-2.78 with PAM"){.xref}, [libssh2-1.11.1](../general/libssh2.md "libssh2-1.11.1"){.xref}, [Linux-PAM-1.7.2](../postlfs/linux-pam.md "Linux-PAM-1.7.2"){.xref}, [MariaDB-12.3.2](mariadb.md "MariaDB-12.3.2"){.xref} or [MySQL](https://www.mysql.com/){.ulink}, [PostgreSQL-18.4](postgresql.md "PostgreSQL-18.4"){.xref}, and [Net::SSH2](https://metacpan.org/pod/Net::SSH2){.ulink}
:::::

::: {.installation lang="en"}
## Installation of ProFTPD {#installation-of-proftpd .sect2}

For security reasons, you should install [ProFTPD]{.application} using an unprivileged user and group. As the `root`{.systemitem} user:

``` root
groupadd -g 46 proftpd                             &&
useradd -c proftpd -d /srv/ftp -g proftpd \
        -s /usr/bin/proftpdshell -u 46 proftpd     &&

install -v -d -m775 -o proftpd -g proftpd /srv/ftp &&
ln -v -s /usr/bin/false /usr/bin/proftpdshell      &&
echo /usr/bin/proftpdshell >> /etc/shells
```

Install [ProFTPD]{.application} as an unprivileged user by running the following commands:

``` userinput
./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/run &&
make
```

This packages does not come with a usable test suite.

Now, as the `root`{.systemitem} user:

``` root
make install                                   &&
install -d -m755 /usr/share/doc/proftpd-1.3.9a &&
cp -Rv doc/*     /usr/share/doc/proftpd-1.3.9a
```
:::

::::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**install -v -d -m775 -o proftpd -g proftpd /srv/ftp**]{.command}: Create the home directory for [ProFTPD]{.application}.

[**ln -v -s /usr/bin/false /usr/bin/proftpdshell**]{.command}: Set the default shell as a link to an invalid shell.

[**echo /usr/bin/proftpdshell \>\> /etc/shells**]{.command}: Fake a valid shell for compatibility purposes.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The above two commands can be omitted if the following directive is placed in the configuration file:

``` screen
RequireValidShell off
```

By default, proftpd will require that users logging in have valid shells. The RequireValidShell directive turns off this requirement. This is only recommended if you are setting up your FTP server exclusively for anonymous downloads.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Support for most of the dependency packages requires using options passed to the [**configure**]{.command} script. View the output from [**./configure --help**]{.command} for complete information about enabling dependency packages.
:::
:::::

:::::: {.configuration lang="en"}
## Configuring ProFTPD {#configuring-proftpd .sect2}

::: {.sect3 lang="en"}
### []{#proftpd-config}Config Files {#config-files .sect3}

`/etc/proftpd.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

This is a simple, download-only sample configuration. See the [ProFTPD]{.application} documentation in `/usr/share/doc/proftpd`{.filename} and consult the website at [http://www.proftpd.org/](http://www.proftpd.org/){.ulink} for example configurations.

``` root
cat > /etc/proftpd.conf << "EOF"
# This is a basic ProFTPD configuration file
# It establishes a single server and a single anonymous login.

ServerName                      "ProFTPD Default Installation"
ServerType                      standalone
DefaultServer                   on

# Port 21 is the standard FTP port.
Port                            21
# Umask 022 is a good standard umask to prevent new dirs and files
# from being group and world writable.
Umask                           022

# To prevent DoS attacks, set the maximum number of child processes
# to 30.  If you need to allow more than 30 concurrent connections
# at once, simply increase this value.  Note that this ONLY works
# in standalone mode, in inetd mode you should use an inetd server
# that allows you to limit maximum number of processes per service

MaxInstances                    30

# Set the user and group that the server normally runs at.
User                            proftpd
Group                           proftpd

# To cause every FTP user to be "jailed" (chrooted) into their home
# directory, uncomment this line.
#DefaultRoot ~


# Normally, files should be overwritable.
<Directory /*>
  AllowOverwrite                on
</Directory>

# A basic anonymous configuration, no upload directories.
<Anonymous ~proftpd>
  User                          proftpd
  Group                         proftpd
  # Clients should be able to login with "anonymous" as well as "proftpd"
  UserAlias                     anonymous proftpd

  # Limit the maximum number of anonymous logins
  MaxClients                    10

  # 'welcome.msg' should be displayed at login, and '.message' displayed
  # in each newly chdired directory.
  DisplayLogin                  welcome.msg
  DisplayChdir                  .message

  # Limit WRITE everywhere in the anonymous chroot
  <Limit WRITE>
    DenyAll
  </Limit>
</Anonymous>
EOF
```
:::

::: {.sect3 lang="en"}
### []{#proftpd-init} Systemd Unit {#systemd-unit .sect3}

Install the [`proftpd.service`{.filename} unit]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package:

``` root
make install-proftpd
```
:::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [ftpasswd, ftpcount, ftpdctl, ftpmail, ftpquota, ftpscrub, ftpshut, ftptop, ftpwho, in.proftpd (symlink to proftpd), proftpd, and prxs]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/{include,lib}/proftpd, /usr/share/doc/proftpd-1.3.9a, and /srv/ftp]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------
  []{#proftpd-prog}[[**proftpd**]{.command}]{.term}   is the FTP daemon
  []{#ftpcount}[[**ftpcount**]{.command}]{.term}      shows the current number of connections
  []{#ftpdctl}[[**ftpdctl**]{.command}]{.term}        is used to control the proftpd daemon while it is running
  []{#ftpasswd}[[**ftpasswd**]{.command}]{.term}      is a Perl script designed to create and manage AuthUserFiles and AuthGroupFiles of the correct format for proftpd
  []{#ftpmail}[[**ftpmail**]{.command}]{.term}        is a Perl script for sending email based on the proftpd TransferLog
  []{#ftpquota}[[**ftpquota**]{.command}]{.term}      is a Perl script designed to create and manage limits and tally files for the mod_quotatab + mod_quotatab_file module combination for proftpd
  []{#ftpscrub}[[**ftpscrub**]{.command}]{.term}      provides a way to scrub the scoreboard file on demand
  []{#ftpshut}[[**ftpshut**]{.command}]{.term}        shuts down all [proftpd]{.application} servers at a given time
  []{#ftptop}[[**ftptop**]{.command}]{.term}          displays running status on connections
  []{#ftpwho}[[**ftpwho**]{.command}]{.term}          shows current process information for each session
  []{#prxs}[[**prxs**]{.command}]{.term}              is a Perl script designed to compile and install third-party modules, from source code, as DSO modules for the installed proftpd
  --------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::

::: navfooter
-   [Prev](kea.md "Kea 3.0.2 DHCP Server"){accesskey="p"}

    Kea 3.0.2 DHCP Server

-   [Next](mail.md "Mail Server Software"){accesskey="n"}

    Mail Server Software

-   [Up](majorservers.md "Chapter 20. Major Servers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
