::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 7. Entering Chroot and Building Additional Temporary Tools

-   [Prev](changingowner.md "Changing Ownership"){accesskey="p"}

    Changing Ownership

-   [Next](chroot.md "Entering the Chroot Environment"){accesskey="n"}

    Entering the Chroot Environment

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-kernfs}7.3. Preparing Virtual Kernel File Systems {#preparing-virtual-kernel-file-systems .sect1}

:::::: {.sect1 lang="en"}
Applications running in userspace utilize various file systems created by the kernel to communicate with the kernel itself. These file systems are virtual: no disk space is used for them. The content of these file systems resides in memory. These file systems must be mounted in the \$LFS directory tree so the applications can find them in the chroot environment.

Begin by creating the directories on which these virtual file systems will be mounted:

``` userinput
mkdir -pv $LFS/{dev,proc,sys,run}
```

::: {.sect2 lang="en"}
## []{#ch-tools-bindmount}7.3.1. Mounting and Populating /dev {#mounting-and-populating-dev .sect2}

During a normal boot of an LFS system, the kernel automatically mounts the `devtmpfs`{.systemitem} file system on the `/dev`{.filename} directory; the kernel creates device nodes on that virtual file system during the boot process, or when a device is first detected or accessed. The udev daemon may change the ownership or permissions of the device nodes created by the kernel, and create new device nodes or symlinks, to ease the work of distro maintainers and system administrators. (See [Section 9.3.2.2, "Device Node Creation"](../chapter09/udev.md#ch-config-udev-device-node-creation "9.3.2.2. Device Node Creation"){.xref} for details.) If the host kernel supports `devtmpfs`{.systemitem}, we can simply mount a `devtmpfs`{.systemitem} at `$LFS/dev`{.filename} and rely on the kernel to populate it.

But some host kernels lack `devtmpfs`{.systemitem} support; these host distros use different methods to create the content of `/dev`{.filename}. So the only host-agnostic way to populate the `$LFS/dev`{.filename} directory is by bind mounting the host system\'s `/dev`{.filename} directory. A bind mount is a special type of mount that makes a directory subtree or a file visible at some other location. Use the following command to do this.

``` userinput
mount -v --bind /dev $LFS/dev
```
:::

:::: {.sect2 lang="en"}
## []{#ch-tools-kernfsmount}7.3.2. Mounting Virtual Kernel File Systems {#mounting-virtual-kernel-file-systems .sect2}

Now mount the remaining virtual kernel file systems:

``` userinput
mount -vt devpts devpts -o gid=5,mode=0620 $LFS/dev/pts
mount -vt proc proc $LFS/proc
mount -vt sysfs sysfs $LFS/sys
mount -vt tmpfs tmpfs $LFS/run
```

::: variablelist
**The meaning of the mount options for devpts:**

[*`gid=5`*]{.term}

:   This ensures that all devpts-created device nodes are owned by group ID 5. This is the ID we will use later on for the `tty`{.systemitem} group. We use the group ID instead of a name, since the host system might use a different ID for its `tty`{.systemitem} group.

[*`mode=0620`*]{.term}

:   This ensures that all devpts-created device nodes have mode 0620 (user readable and writable, group writable). Together with the option above, this ensures that devpts will create device nodes that meet the requirements of grantpt(), meaning the Glibc [**pt_chown**]{.command} helper binary (which is not installed by default) is not necessary.
:::

In some host systems, `/dev/shm`{.filename} is a symbolic link to a directory, typically `/run/shm`{.filename}. The /run tmpfs was mounted above so in this case only a directory needs to be created with the correct permissions.

In other host systems `/dev/shm`{.filename} is a mount point for a tmpfs. In that case the mount of /dev above will only create /dev/shm as a directory in the chroot environment. In this situation we must explicitly mount a tmpfs:

``` userinput
if [ -h $LFS/dev/shm ]; then
  install -v -d -m 1777 $LFS$(realpath /dev/shm)
else
  mount -vt tmpfs -o nosuid,nodev tmpfs $LFS/dev/shm
fi
```
::::
::::::

::: navfooter
-   [Prev](changingowner.md "Changing Ownership"){accesskey="p"}

    Changing Ownership

-   [Next](chroot.md "Entering the Chroot Environment"){accesskey="n"}

    Entering the Chroot Environment

-   [Up](chapter07.md "Chapter 7. Entering Chroot and Building Additional Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
