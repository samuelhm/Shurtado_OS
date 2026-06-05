::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](smartmontools.md "smartmontools-7.5"){accesskey="p"}

    smartmontools-7.5

-   [Next](xfsprogs.md "xfsprogs-7.0.1"){accesskey="n"}

    xfsprogs-7.0.1

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sshfs}sshfs-3.7.6 {#sshfs-3.7.6 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Sshfs {#introduction-to-sshfs .sect2}

The [Sshfs]{.application} package contains a filesystem client based on the SSH File Transfer Protocol. This is useful for mounting a remote computer that you have ssh access to as a local filesystem. This allows you to drag and drop files or run shell commands on the remote files as if they were on your local computer.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libfuse/sshfs/releases/download/sshfs-3.7.6/sshfs-3.7.6.tar.xz](https://github.com/libfuse/sshfs/releases/download/sshfs-3.7.6/sshfs-3.7.6.tar.xz){.ulink}

-   Download MD5 sum: bf45c6ade1bef1f7e1bb2c2f344a0b33

-   Download size: 56 KB

-   Estimated disk space required: 1.2 MB

-   Estimated build time: less than 0.1 SBU
:::

### Sshfs Dependencies

#### Required

[Fuse-3.18.2](fuse.md "Fuse-3.18.2"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref}, and [OpenSSH-10.3p1](openssh.md "OpenSSH-10.3p1"){.xref}.

#### Optional

[docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref} (required to build the man page)
:::::

::: {.installation lang="en"}
## Installation of Sshfs {#installation-of-sshfs .sect2}

Install [Sshfs]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.using lang="en"}
## Using Sshfs {#using-sshfs .sect2}

To mount an ssh server you need to be able to log into the server. For example, to mount your remote home folder to the local \~/examplepath (the directory must exist and you must have permissions to write to it):

``` userinput
sshfs example.com:/home/userid ~/examplepath
```

When you've finished work and want to unmount it again:

``` userinput
fusermount3 -u ~/examplepath
```

You can also mount an [sshfs]{.application} filesystem at boot by adding an entry similar to the following in the `/etc/fstab`{.filename} file:

``` screen
userid@example.com:/path /media/path fuse.sshfs _netdev,IdentityFile=/home/userid/.ssh/id_rsa 0 0
```

See [**man 1 sshfs**]{.command} and [**man 8 mount.fuse3**]{.command} for all available mount options.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [sshfs]{.segbody}
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

  ----------------------------------------------- -------------------------------------------------------------
  []{#sshfs-prog}[[**sshfs**]{.command}]{.term}   mounts an [**ssh**]{.command} server as a local file system
  ----------------------------------------------- -------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](smartmontools.md "smartmontools-7.5"){accesskey="p"}

    smartmontools-7.5

-   [Next](xfsprogs.md "xfsprogs-7.0.1"){accesskey="n"}

    xfsprogs-7.0.1

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
