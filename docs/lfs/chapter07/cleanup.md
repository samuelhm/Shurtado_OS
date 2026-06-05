::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 7. Entering Chroot and Building Additional Temporary Tools

-   [Prev](util-linux.md "Util-linux-2.42.1"){accesskey="p"}

    Util-linux-2.42.1

-   [Next](../part4.md "Building the LFS System"){accesskey="n"}

    Building the LFS System

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-cleanup}7.13. Cleaning up and Saving the Temporary System {#cleaning-up-and-saving-the-temporary-system .sect1}

:::::::::::: {.sect1 lang="en"}
::: {.sect2 lang="en"}
## 7.13.1. Cleaning {#cleaning .sect2}

First, remove the currently installed documentation files to prevent them from ending up in the final system, and to save about 35 MB:

``` userinput
rm -rf /usr/share/{info,man,doc}/*
```

Second, on a modern Linux system, the libtool .la files are only useful for libltdl. No libraries in LFS are loaded by libltdl, and it\'s known that some .la files can cause BLFS package failures. Remove those files now:

``` userinput
find /usr/{lib,libexec} -name \*.la -delete
```

The current system size is now about 3 GB, however the /tools directory is no longer needed. It uses about 1 GB of disk space. Delete it now:

``` userinput
rm -rf /tools
```
:::

::::::: {.sect2 lang="en"}
## 7.13.2. Backup {#backup .sect2}

At this point the essential programs and libraries have been created and your current LFS system is in a good state. Your system can now be backed up for later reuse. In case of fatal failures in the subsequent chapters, it often turns out that removing everything and starting over (more carefully) is the best way to recover. Unfortunately, all the temporary files will be removed, too. To avoid spending extra time to redo something which has been done successfully, creating a backup of the current LFS system may prove useful.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

All the remaining steps in this section are optional. Nevertheless, as soon as you begin installing packages in [Chapter 8](../chapter08/chapter08.md "Chapter 8. Installing Basic System Software"){.xref}, the temporary files will be overwritten. So it may be a good idea to do a backup of the current system as described below.
:::

The following steps are performed from outside the chroot environment. That means you have to leave the chroot environment first before continuing. The reason for that is to get access to file system locations outside of the chroot environment to store/read the backup archive, which ought not be placed within the `$LFS`{.filename} hierarchy.

If you have decided to make a backup, leave the chroot environment:

``` userinput
exit
```

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

All of the following instructions are executed by `root`{.systemitem} on your host system. Take extra care about the commands you\'re going to run as mistakes made here can modify your host system. Be aware that the environment variable `LFS`{.envar} is set for user `lfs`{.systemitem} by default but may [*not*]{.emphasis} be set for `root`{.systemitem}.

Whenever commands are to be executed by `root`{.systemitem}, make sure you have set `LFS`{.envar}.

This has been discussed in [Section 2.6, "Setting the \$LFS Variable and the Umask."](../chapter02/aboutlfs.md "2.6. Setting the $LFS Variable and the Umask"){.xref}
:::

Before making a backup, unmount the virtual file systems:

``` userinput
mountpoint -q $LFS/dev/shm && umount $LFS/dev/shm
umount $LFS/dev/pts
umount $LFS/{sys,proc,run,dev}
```

Make sure you have at least 1 GB free disk space (the source tarballs will be included in the backup archive) on the file system containing the directory where you create the backup archive.

Note that the instructions below specify the home directory of the host system\'s `root`{.systemitem} user, which is typically found on the root file system. Replace `$HOME`{.envar} by a directory of your choice if you do not want to have the backup stored in `root`{.systemitem}\'s home directory.

Create the backup archive by running the following command:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Because the backup archive is compressed, it takes a relatively long time (over 10 minutes) even on a reasonably fast system.
:::

``` userinput
cd $LFS
tar -cJpf $HOME/lfs-temp-tools-r13.0-131-systemd.tar.xz .
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If continuing to chapter 8, don\'t forget to reenter the chroot environment as explained in the ["[Important]{.quote}"]{.quote} box below.
:::
:::::::

::::: {.sect2 lang="en"}
## 7.13.3. Restore {#restore .sect2}

In case some mistakes have been made and you need to start over, you can use this backup to restore the system and save some recovery time. Since the sources are located under `$LFS`{.filename}, they are included in the backup archive as well, so they do not need to be downloaded again. After checking that `$LFS`{.envar} is set properly, you can restore the backup by executing the following commands:

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

The following commands are extremely dangerous. If you run [**rm -rf ./\***]{.command} as the `root`{.systemitem} user and you do not change to the \$LFS directory or the `LFS`{.envar} environment variable is not set for the `root`{.systemitem} user, it will destroy your entire host system. YOU ARE WARNED.
:::

``` screen
cd $LFS
rm -rf ./*
tar -xpf $HOME/lfs-temp-tools-r13.0-131-systemd.tar.xz
```

Again, double check that the environment has been set up properly and continue building the rest of the system.

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

If you left the chroot environment to create a backup or restart building using a restore, remember to check that the virtual file systems are still mounted ([**findmnt \| grep \$LFS**]{.command} should show at least `$LFS/dev`{.filename}, `$LFS/proc`{.filename}, and `$LFS/sys`{.filename} as mounted). If they are not mounted, remount them now as described in [Section 7.3, "Preparing Virtual Kernel File Systems"](kernfs.md "7.3. Preparing Virtual Kernel File Systems"){.xref} and re-enter the chroot environment (see [Section 7.4, "Entering the Chroot Environment"](chroot.md "7.4. Entering the Chroot Environment"){.xref}) before continuing.
:::
:::::
::::::::::::

::: navfooter
-   [Prev](util-linux.md "Util-linux-2.42.1"){accesskey="p"}

    Util-linux-2.42.1

-   [Next](../part4.md "Building the LFS System"){accesskey="n"}

    Building the LFS System

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
