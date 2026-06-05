::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 7. Entering Chroot and Building Additional Temporary Tools

-   [Prev](chroot.md "Entering the Chroot Environment"){accesskey="p"}

    Entering the Chroot Environment

-   [Next](createfiles.md "Creating Essential Files and Symlinks"){accesskey="n"}

    Creating Essential Files and Symlinks

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-creatingdirs}7.5. Creating Directories {#creating-directories .sect1}

:::::: {.sect1 lang="en"}
It is time to create the full directory structure in the LFS file system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Some of the directories mentioned in this section may have already been created earlier with explicit instructions, or when installing some packages. They are repeated below for completeness.
:::

Create some root-level directories that are not in the limited set required in the previous chapters by issuing the following command:

``` userinput
mkdir -pv /{boot,home,mnt,opt,srv}
```

Create the required set of subdirectories below the root-level by issuing the following commands:

``` userinput
mkdir -pv /etc/{opt,sysconfig}
mkdir -pv /lib/firmware
mkdir -pv /media/{floppy,cdrom}
mkdir -pv /usr/{,local/}{include,src}
mkdir -pv /usr/lib/locale
mkdir -pv /usr/local/{bin,lib,sbin}
mkdir -pv /usr/{,local/}share/{color,dict,doc,info,locale,man}
mkdir -pv /usr/{,local/}share/{misc,terminfo,zoneinfo}
mkdir -pv /usr/{,local/}share/man/man{1..8}
mkdir -pv /var/{cache,local,log,mail,opt,spool}
mkdir -pv /var/lib/{color,misc,locate}

ln -sfv /run /var/run
ln -sfv /run/lock /var/lock

install -dv -m 0750 /root
install -dv -m 1777 /tmp /var/tmp
```

Directories are, by default, created with permission mode 755, but this is not desirable everywhere. In the commands above, two changes are made---one to the home directory of user `root`{.systemitem}, and another to the directories for temporary files.

The first mode change ensures that not just anybody can enter the `/root`{.filename} directory---just like a normal user would do with his or her own home directory. The second mode change makes sure that any user can write to the `/tmp`{.filename} and `/var/tmp`{.filename} directories, but cannot remove another user\'s files from them. The latter is prohibited by the so-called ["[sticky bit,]{.quote}"]{.quote} the highest bit (1) in the 1777 bit mask.

:::: {.sect2 lang="en"}
## 7.5.1. FHS Compliance Note {#fhs-compliance-note .sect2}

This directory tree is based on the Filesystem Hierarchy Standard (FHS) (available at [https://refspecs.linuxfoundation.org/fhs.shtml](https://refspecs.linuxfoundation.org/fhs.shtml){.ulink}). The FHS also specifies the optional existence of additional directories such as `/usr/local/games`{.filename} and `/usr/share/games`{.filename}. In LFS, we create only the directories that are really necessary. However, feel free to create more directories, if you wish.

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

The FHS does not mandate the existence of the directory `/usr/lib64`{.filename}, and the LFS editors have decided not to use it. For the instructions in LFS and BLFS to work correctly, it is imperative that this directory be non-existent. From time to time you should verify that it does not exist, because it is easy to create it inadvertently, and this will probably break your system.
:::
::::
::::::

::: navfooter
-   [Prev](chroot.md "Entering the Chroot Environment"){accesskey="p"}

    Entering the Chroot Environment

-   [Next](createfiles.md "Creating Essential Files and Symlinks"){accesskey="n"}

    Creating Essential Files and Symlinks

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
