::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](util-linux.md "Util-linux-2.42.1"){accesskey="p"}

    Util-linux-2.42.1

-   [Next](aboutdebug.md "About Debugging Symbols"){accesskey="n"}

    About Debugging Symbols

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-e2fsprogs}8.81. E2fsprogs-1.47.4 {#e2fsprogs-1.47.4 .sect1}

:::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The E2fsprogs package contains the utilities for handling the `ext2`{.systemitem} file system. It also supports the `ext3`{.systemitem} and `ext4`{.systemitem} journaling file systems.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [2.4 SBU on a spinning disk, 0.4 SBU on an SSD]{.segbody}
:::

::: seg
**Required disk space:** [100 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.81.1. Installation of E2fsprogs {#installation-of-e2fsprogs .sect2}

The E2fsprogs documentation recommends that the package be built in a subdirectory of the source tree:

``` userinput
mkdir -v build
cd       build
```

Prepare E2fsprogs for compilation:

``` userinput
../configure --prefix=/usr       \
             --sysconfdir=/etc   \
             --enable-elf-shlibs \
             --disable-libblkid  \
             --disable-libuuid   \
             --disable-uuidd     \
             --disable-fsck
```

::: variablelist
**The meaning of the configure options:**

[*`--enable-elf-shlibs`*]{.term}

:   This creates the shared libraries which some programs in this package use.

[*`--disable-*`*]{.term}

:   These prevent building and installing the `libuuid`{.systemitem} and `libblkid`{.systemitem} libraries, the `uuidd`{.systemitem} daemon, and the [**fsck**]{.command} wrapper; util-linux installs more recent versions.
:::

Compile the package:

``` userinput
make
```

To run the tests, issue:

``` userinput
make check
```

One test named `m_assume_storage_prezeroed`{.filename} is known to fail. Another test named `m_rootdir_acl`{.filename} is known to fail if the file system used for the LFS system is not `ext4`{.systemitem}.

Install the package:

``` userinput
make install
```

Remove useless static libraries:

``` userinput
rm -fv /usr/lib/{libcom_err,libe2p,libext2fs,libss}.a
```

This package installs a gzipped `.info`{.filename} file but doesn\'t update the system-wide `dir`{.filename} file. Unzip this file and then update the system `dir`{.filename} file using the following commands:

``` userinput
gunzip -v /usr/share/info/libext2fs.info.gz
install-info --dir-file=/usr/share/info/dir /usr/share/info/libext2fs.info
```

If desired, create and install some additional documentation by issuing the following commands:

``` userinput
makeinfo -o      doc/com_err.info ../lib/et/com_err.texinfo
install -v -m644 doc/com_err.info /usr/share/info
install-info --dir-file=/usr/share/info/dir /usr/share/info/com_err.info
```
::::

::: {.configuration lang="en"}
## []{#conf-e2fsprogs}8.81.2. Configuring E2fsprogs {#configuring-e2fsprogs .sect2}

`/etc/mke2fs.conf`{.filename} contains the default value of various command line options of [**mke2fs**]{.command}. You may edit the file to make the default values suitable for your needs. For example, some utilities (not in LFS or BLFS) cannot recognize a `ext4`{.systemitem} file system with `metadata_csum_seed`{.literal} feature enabled. [**If**]{.bold} you need such a utility, you may remove the feature from the default `ext4`{.systemitem} feature list with the command:

``` userinput
sed 's/metadata_csum_seed,//' -i /etc/mke2fs.conf
```

Read the man page [mke2fs.conf(5)](https://man.archlinux.org/man/mke2fs.conf.5){.ulink} for details.
:::

::::::::: {.content lang="en"}
## []{#contents-e2fsprogs}8.81.3. Contents of E2fsprogs {#contents-of-e2fsprogs .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [badblocks, chattr, compile_et, debugfs, dumpe2fs, e2freefrag, e2fsck, e2image, e2label, e2mmpstatus, e2scrub, e2scrub_all, e2undo, e4crypt, e4defrag, filefrag, fsck.ext2, fsck.ext3, fsck.ext4, logsave, lsattr, mk_cmds, mke2fs, mkfs.ext2, mkfs.ext3, mkfs.ext4, mklost+found, resize2fs, and tune2fs]{.segbody}
:::

::: seg
**Installed libraries:** [libcom_err.so, libe2p.so, libext2fs.so, and libss.so]{.segbody}
:::

::: seg
**Installed directories:** [/usr/include/e2p, /usr/include/et, /usr/include/ext2fs, /usr/include/ss, /usr/lib/e2fsprogs, /usr/share/et, and /usr/share/ss]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#badblocks}[[**badblocks**]{.command}]{.term}         Searches a device (usually a disk partition) for bad blocks
  []{#chattr}[[**chattr**]{.command}]{.term}               Changes the attributes of files on `ext{234}`{.systemitem} file systems
  []{#compile_et}[[**compile_et**]{.command}]{.term}       An error table compiler; it converts a table of error-code names and messages into a C source file suitable for use with the `com_err`{.filename} library
  []{#debugfs}[[**debugfs**]{.command}]{.term}             A file system debugger; it can be used to examine and change the state of `ext{234}`{.systemitem} file systems
  []{#dumpe2fs}[[**dumpe2fs**]{.command}]{.term}           Prints the super block and blocks group information for the file system present on a given device
  []{#e2freefrag}[[**e2freefrag**]{.command}]{.term}       Reports free space fragmentation information
  []{#e2fsck}[[**e2fsck**]{.command}]{.term}               Is used to check and optionally repair `ext{234}`{.systemitem} file systems
  []{#e2image}[[**e2image**]{.command}]{.term}             Is used to save critical `ext{234}`{.systemitem} file system data to a file
  []{#e2label}[[**e2label**]{.command}]{.term}             Displays or changes the file system label on the `ext{234}`{.systemitem} file system on a given device
  []{#e2mmpstatus}[[**e2mmpstatus**]{.command}]{.term}     Checks MMP (Multiple Mount Protection) status of an `ext4`{.systemitem} file system
  []{#e2scrub}[[**e2scrub**]{.command}]{.term}             Checks the contents of a mounted `ext{234}`{.systemitem} file system
  []{#e2scrub_all}[[**e2scrub_all**]{.command}]{.term}     Checks all mounted `ext{234}`{.systemitem} file systems for errors
  []{#e2undo}[[**e2undo**]{.command}]{.term}               Replays the undo log for an `ext{234}`{.systemitem} file system found on a device. \[This can be used to undo a failed operation by an E2fsprogs program.\]
  []{#e4crypt}[[**e4crypt**]{.command}]{.term}             `Ext4`{.systemitem} file system encryption utility
  []{#e4defrag}[[**e4defrag**]{.command}]{.term}           Online defragmenter for `ext4`{.systemitem} file systems
  []{#filefrag}[[**filefrag**]{.command}]{.term}           Reports on how badly fragmented a particular file might be
  []{#fsck.ext2}[[**fsck.ext2**]{.command}]{.term}         By default checks `ext2`{.systemitem} file systems and is a hard link to [**e2fsck**]{.command}
  []{#fsck.ext3}[[**fsck.ext3**]{.command}]{.term}         By default checks `ext3`{.systemitem} file systems and is a hard link to [**e2fsck**]{.command}
  []{#fsck.ext4}[[**fsck.ext4**]{.command}]{.term}         By default checks `ext4`{.systemitem} file systems and is a hard link to [**e2fsck**]{.command}
  []{#logsave}[[**logsave**]{.command}]{.term}             Saves the output of a command in a log file
  []{#lsattr}[[**lsattr**]{.command}]{.term}               Lists the attributes of files on a second extended file system
  []{#mk_cmds}[[**mk_cmds**]{.command}]{.term}             Converts a table of command names and help messages into a C source file suitable for use with the `libss`{.filename} subsystem library
  []{#mke2fs}[[**mke2fs**]{.command}]{.term}               Creates an `ext{234}`{.systemitem} file system on the given device
  []{#mkfs.ext2}[[**mkfs.ext2**]{.command}]{.term}         By default creates `ext2`{.systemitem} file systems and is a hard link to [**mke2fs**]{.command}
  []{#mkfs.ext3}[[**mkfs.ext3**]{.command}]{.term}         By default creates `ext3`{.systemitem} file systems and is a hard link to [**mke2fs**]{.command}
  []{#mkfs.ext4}[[**mkfs.ext4**]{.command}]{.term}         By default creates `ext4`{.systemitem} file systems and is a hard link to [**mke2fs**]{.command}
  []{#mklost-found}[[**mklost+found**]{.command}]{.term}   Creates a `lost+found`{.filename} directory on an `ext{234}`{.systemitem} file system; it pre-allocates disk blocks to this directory to lighten the task of [**e2fsck**]{.command}
  []{#resize2fs}[[**resize2fs**]{.command}]{.term}         Can be used to enlarge or shrink `ext{234}`{.systemitem} file systems
  []{#tune2fs}[[**tune2fs**]{.command}]{.term}             Adjusts tunable file system parameters on `ext{234}`{.systemitem} file systems
  []{#libcom_err}[`libcom_err`{.filename}]{.term}          The common error display routine
  []{#libe2p}[`libe2p`{.filename}]{.term}                  Used by [**dumpe2fs**]{.command}, [**chattr**]{.command}, and [**lsattr**]{.command}
  []{#libext2fs}[`libext2fs`{.filename}]{.term}            Contains routines to enable user-level programs to manipulate `ext{234}`{.systemitem} file systems
  []{#libss}[`libss`{.filename}]{.term}                    Used by [**debugfs**]{.command}
  -------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](util-linux.md "Util-linux-2.42.1"){accesskey="p"}

    Util-linux-2.42.1

-   [Next](aboutdebug.md "About Debugging Symbols"){accesskey="n"}

    About Debugging Symbols

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
