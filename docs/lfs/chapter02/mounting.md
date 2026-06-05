::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 2. Preparing the Host System

-   [Prev](aboutlfs.md "Setting the $LFS Variable and the Umask"){accesskey="p"}

    Setting the \$LFS Variable and the Umask

-   [Next](../chapter03/chapter03.md "Packages and Patches"){accesskey="n"}

    Packages and Patches

-   [Up](chapter02.md "Chapter 2. Preparing the Host System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-partitioning-mounting}2.7. Mounting the New Partition {#mounting-the-new-partition .sect1}

:::: {.sect1 lang="en"}
Now that a file system has been created, the partition must be mounted so the host system can access it. This book assumes that the file system is mounted at the directory specified by the `LFS`{.envar} environment variable described in the previous section.

Strictly speaking, one cannot ["[mount a partition.]{.quote}"]{.quote} One mounts the [*file system*]{.emphasis} embedded in that partition. But since a single partition can\'t contain more than one file system, people often speak of the partition and the associated file system as if they were one and the same.

Create the mount point and mount the LFS file system with these commands:

``` userinput
mkdir -pv $LFS
mount -v -t ext4 /dev/<xxx> $LFS
```

Replace *`<xxx>`* with the name of the LFS partition.

If you are using multiple partitions for LFS (e.g., one for `/`{.filename} and another for `/home`{.filename}), mount them like this:

``` userinput
mkdir -pv $LFS
mount -v -t ext4 /dev/<xxx> $LFS
mkdir -v $LFS/home
mount -v -t ext4 /dev/<yyy> $LFS/home
```

Replace *`<xxx>`* and *`<yyy>`* with the appropriate partition names.

Set the owner and permission mode of the `$LFS`{.filename} directory (i.e. the root directory in the newly created file system for the LFS system) to `root`{.systemitem} and `755`{.literal} in case the host distro has been configured to use a different default for [**mkfs**]{.command}:

``` userinput
chown root:root $LFS
chmod 755 $LFS
```

Ensure that this new partition is not mounted with permissions that are too restrictive (such as the `nosuid`{.option} or `nodev`{.option} options). Run the [**mount**]{.command} command without any parameters to see what options are set for the mounted LFS partition. If `nosuid`{.option} and/or `nodev`{.option} are set, the partition must be remounted.

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

The above instructions assume that you will not restart your computer throughout the LFS process. If you shut down your system, you will either need to remount the LFS partition each time you restart the build process, or modify the host system\'s `/etc/fstab`{.filename} file to automatically remount it when you reboot. For example, you might add this line to your `/etc/fstab`{.filename} file:

``` screen
/dev/<xxx>  /mnt/lfs ext4   defaults      1     1
```

If you use additional optional partitions, be sure to add them also.
:::

If you are using a `swap`{.systemitem} partition, ensure that it is enabled using the [**swapon**]{.command} command:

``` userinput
/sbin/swapon -v /dev/<zzz>
```

Replace *`<zzz>`* with the name of the `swap`{.systemitem} partition.

Now that the new LFS partition is open for business, it\'s time to download the packages.
::::

::: navfooter
-   [Prev](aboutlfs.md "Setting the $LFS Variable and the Umask"){accesskey="p"}

    Setting the \$LFS Variable and the Umask

-   [Next](../chapter03/chapter03.md "Packages and Patches"){accesskey="n"}

    Packages and Patches

-   [Up](chapter02.md "Chapter 2. Preparing the Host System"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
