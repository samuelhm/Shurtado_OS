::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](ntp.md "ntp-4.2.8p18"){accesskey="p"}

    ntp-4.2.8p18

-   [Next](rsync.md "rsync-3.4.3"){accesskey="n"}

    rsync-3.4.3

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#rpcbind}rpcbind-1.2.9 {#rpcbind-1.2.9 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to rpcbind {#introduction-to-rpcbind .sect2}

The [rpcbind]{.application} program is a replacement for [portmap]{.application}. It is required for import or export of Network File System (NFS) shared directories.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/rpcbind/rpcbind-1.2.9.tar.bz2](https://downloads.sourceforge.net/rpcbind/rpcbind-1.2.9.tar.bz2){.ulink}

-   Download MD5 sum: f4c2d1f279aadee20871c9d7c0fc9fc5

-   Download size: 128 KB

-   Estimated disk space required: 1.6 MB

-   Estimated build time: less than 0.1 SBU
:::

### rpcbind Dependencies

#### Required

[libtirpc-1.3.7](libtirpc.md "libtirpc-1.3.7"){.xref}
:::::

::: {.installation lang="en"}
## Installation of rpcbind {#installation-of-rpcbind .sect2}

There should be a dedicated user and group to take control of the [**rpcbind**]{.command} daemon after it is started. Issue the following commands as the `root`{.systemitem} user:

``` root
groupadd -g 28 rpc &&
useradd -c "RPC Bind Daemon Owner" -d /dev/null -g rpc \
        -s /bin/false -u 28 rpc
```

In order to get [rpcbind]{.application} to work properly, first fix the package to use correct service name:

``` userinput
sed -i "/servname/s:rpcbind:sunrpc:" src/rpcbind.c
```

Install [rpcbind]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr       \
            --bindir=/usr/sbin  \
            --enable-warmstarts \
            --with-rpcuser=rpc  &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

Still as the `root`{.systemitem} user, silence a warning that is emitted by the systemd unit:

``` root
echo 'RPCBIND_OPTIONS=""' > /etc/rpcbind.conf
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-rpcuser=rpc`*: This switch is used so the [**rpcbind**]{.command} daemon will run as an unprivileged user instead of the `root`{.systemitem} user.
:::

:::: {.configuration lang="en"}
## Configuring rpcbind {#configuring-rpcbind .sect2}

::: {.sect3 lang="en"}
### []{#rpcbind-init} Systemd Unit {#systemd-unit .sect3}

Enable the systemd unit installed with the package:

``` root
systemctl enable rpcbind
```
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [rpcbind and rpcinfo]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#rpcbind-prog}[[**rpcbind**]{.command}]{.term}   is a server that converts RPC program numbers into universal addresses. It must be running on the host to be able to make RPC calls on a server on that machine
  []{#rpcinfo}[[**rpcinfo**]{.command}]{.term}        makes an RPC call to an RPC server and reports data according to the requested options
  --------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](ntp.md "ntp-4.2.8p18"){accesskey="p"}

    ntp-4.2.8p18

-   [Next](rsync.md "rsync-3.4.3"){accesskey="n"}

    rsync-3.4.3

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
