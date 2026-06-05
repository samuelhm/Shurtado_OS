::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](rpcbind.md "rpcbind-1.2.9"){accesskey="p"}

    rpcbind-1.2.9

-   [Next](samba.md "Samba-4.24.0"){accesskey="n"}

    Samba-4.24.0

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#rsync}rsync-3.4.3 {#rsync-3.4.3 .sect1}

:::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to rsync {#introduction-to-rsync .sect2}

The [rsync]{.application} package contains the [**rsync**]{.command} utility. This is useful for synchronizing large file archives over a network.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.samba.org/ftp/rsync/src/rsync-3.4.3.tar.gz](https://www.samba.org/ftp/rsync/src/rsync-3.4.3.tar.gz){.ulink}

-   Download MD5 sum: 1c53fa0fd42ba4700ba6fa96a0b5bbb6

-   Download size: 1.2 MB

-   Estimated disk space required: 13 MB (with tests; add 52 MB for HTML API documentation)

-   Estimated build time: 0.6 SBU (with tests)
:::

### rsync Dependencies

#### Recommended

[popt-1.19](../general/popt.md "Popt-1.19"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} and [xxhash](https://cyan4973.github.io/xxHash/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of rsync {#installation-of-rsync .sect2}

For security reasons, running the [rsync]{.application} server as an unprivileged user and group is encouraged. If you intend to run [**rsync**]{.command} as a daemon, create the `rsyncd`{.systemitem} user and group with the following commands issued by the `root`{.systemitem} user:

``` root
groupadd -g 48 rsyncd &&
useradd -c "rsyncd Daemon" -m -d /home/rsync -g rsyncd \
    -s /bin/false -u 48 rsyncd
```

Install [rsync]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-xxhash \
            --without-included-zlib &&
make
```

If you have [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} installed and wish to build HTML API documentation, issue:

``` userinput
doxygen
```

To run the tests, issue:

``` userinput
make check
```

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you built the documentation, install it using the following commands as the `root`{.systemitem} user:

``` root
install -v -m755 -d          /usr/share/doc/rsync-3.4.3/api &&
install -v -m644 dox/html/*  /usr/share/doc/rsync-3.4.3/api
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-xxhash`*: This switch disables advanced xxhash checksum support. Remove this switch if you have installed [xxhash](https://cyan4973.github.io/xxHash/){.ulink}.

*`--without-included-zlib`*: This switch enables compilation with the system-installed zlib library.
:::

::::::: {.configuration lang="en"}
## Configuring rsync {#configuring-rsync .sect2}

::: {.sect3 lang="en"}
### []{#rsync-config}Config Files {#config-files .sect3}

`/etc/rsyncd.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

For client access to remote files, you may need to install the [OpenSSH-10.3p1](../postlfs/openssh.md "OpenSSH-10.3p1"){.xref} package to connect to the remote server.

This is a simple download-only configuration to set up running [**rsync**]{.command} as a server. See the [rsyncd.conf(5)](https://man.archlinux.org/man/rsyncd.conf.5){.ulink} man-page for additional options (i.e., user authentication).

``` root
cat > /etc/rsyncd.conf << "EOF"
# This is a basic rsync configuration file
# It exports a single module without user authentication.

motd file = /home/rsync/welcome.msg
use chroot = yes

[localhost]
    path = /home/rsync
    comment = Default rsync module
    read only = yes
    list = yes
    uid = rsyncd
    gid = rsyncd

EOF
```

You can find additional configuration information and general documentation about [**rsync**]{.command} at [https://rsync.samba.org/documentation.html](https://rsync.samba.org/documentation.md){.ulink}.
:::

:::: {.sect3 lang="en"}
### []{#rsync-init} Systemd Unit {#systemd-unit .sect3}

Note that you only need to start the [rsync]{.application} server if you want to provide an [rsync]{.application} archive on your local machine. You don't need this [unit]{.phrase} to run the [rsync]{.application} client.

Install the [`rsyncd.service`{.filename} unit]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package.

``` root
make install-rsyncd
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package comes with two types of units: A service file and a socket file. The service file will start rsync daemon once at boot and it will keep running until the system shuts down. The socket file will make systemd listen on rsync port (Default 873, needs to be edited for anything else) and will start rsync daemon when something tries to connect to that port and stop the daemon when the connection is terminated. This is called socket activation and is analogous to using [{,x}inetd]{.application} on a SysVinit based system.

By default, the first method is used - rsync daemon is started at boot and stopped at shutdown. If the socket method is desired, you need to run as the `root`{.systemitem} user:

``` userinput
systemctl stop rsyncd &&
systemctl disable rsyncd &&
systemctl enable rsyncd.socket &&
systemctl start rsyncd.socket
```

Note that socket method is only useful for remote backups. For local backups you'll need the service method.
:::
::::
:::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [rsync and rsync-ssl]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [Optionally, /usr/share/doc/rsync-3.4.3]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#rsync-prog}[[**rsync**]{.command}]{.term}      is a replacement for [**rcp**]{.command} (and [**scp**]{.command}) that has many more features. It uses the [“[rsync algorithm]{.quote}”]{.quote} which provides a very fast method of syncing remote files. It does this by sending just the differences in the files across the link, without requiring that both sets of files are present at one end of the link beforehand
  []{#rsync-ssl}[[**rsync-ssl**]{.command}]{.term}   is a helper script used when connecting to an rsync daemon that has SSL support built in
  -------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::

::: navfooter
-   [Prev](rpcbind.md "rpcbind-1.2.9"){accesskey="p"}

    rpcbind-1.2.9

-   [Next](samba.md "Samba-4.24.0"){accesskey="n"}

    Samba-4.24.0

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
