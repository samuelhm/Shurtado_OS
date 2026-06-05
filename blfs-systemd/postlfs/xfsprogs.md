::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](sshfs.md "sshfs-3.7.6"){accesskey="p"}

    sshfs-3.7.6

-   [Next](efivar.md "efivar-39"){accesskey="n"}

    efivar-39

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xfsprogs}xfsprogs-7.0.1 {#xfsprogs-7.0.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xfsprogs {#introduction-to-xfsprogs .sect2}

The [xfsprogs]{.application} package contains administration and debugging tools for the XFS file system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.kernel.org/pub/linux/utils/fs/xfs/xfsprogs/xfsprogs-7.0.1.tar.xz](https://www.kernel.org/pub/linux/utils/fs/xfs/xfsprogs/xfsprogs-7.0.1.tar.xz){.ulink}

-   Download MD5 sum: 9a275597276da2958d3d2fcb4525f8c6

-   Download size: 1.5 MB

-   Estimated disk space required: 74 MB

-   Estimated build time: 0.3 SBU (Using parallelism=4)
:::

### xfsprogs Dependencies

#### Required

[inih-62](../general/inih.md "inih-62"){.xref} and [liburcu-0.15.6](../general/liburcu.md "liburcu-0.15.6"){.xref}

#### Optional

[ICU-78.3](../general/icu.md "icu-78.3"){.xref} (for unicode name scanning in xfs_scrub)
:::::

::: {.kernel lang="en"}
## []{#xfsprogs-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration and recompile the kernel:

``` screen
File systems --->
  <*/M> XFS filesystem support                                          [XFS_FS]
```
:::

::: {.installation lang="en"}
## Installation of xfsprogs {#installation-of-xfsprogs .sect2}

Install [xfsprogs]{.application} by running the following commands:

``` userinput
make DEBUG=-DNDEBUG     \
     INSTALL_USER=root  \
     INSTALL_GROUP=root \
     LOCAL_CONFIGURE_OPTIONS="--localstatedir=/var"
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make PKG_DOC_DIR=/usr/share/doc/xfsprogs-7.0.1 install     &&
make PKG_DOC_DIR=/usr/share/doc/xfsprogs-7.0.1 install-dev &&

rm -rfv /usr/lib/libhandle.{a,la}
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`DEBUG=-DNDEBUG`*: Turns off debugging symbols.

*`INSTALL_USER=root`* *`INSTALL_GROUP=root`*: This sets the owner and group of the installed files.

*`LOCAL_CONFIGURE_OPTIONS="--localstatedir=/var"`*: This sets the state directory to /var, preventing /usr/var from being created.

`OPTIMIZER="..."`{.option}: Adding this parameter to the end of the [**make**]{.command} command overrides the default optimization settings.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fsck.xfs, mkfs.xfs, xfs_admin, xfs_bmap, xfs_copy, xfs_db, xfs_estimate, xfs_freeze, xfs_fsr, xfs_growfs, xfs_info, xfs_io, xfs_logprint, xfs_mdrestore, xfs_metadump, xfs_mkfile, xfs_ncheck, xfs_property, xfs_protofile, xfs_quota, xfs_repair, xfs_rtcp, xfs_scrub, xfs_scrub_all, and xfs_spaceman]{.segbody}
:::

::: seg
**Installed Libraries:** [libhandle.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/xfs, /usr/lib/xfsprogs, /usr/share/xfsprogs, and /usr/share/doc/xfsprogs-7.0.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#fsck.xfs}[[**fsck.xfs**]{.command}]{.term}             simply exits with a zero status, since XFS partitions are checked at mount time
  []{#mkfs.xfs}[[**mkfs.xfs**]{.command}]{.term}             constructs an XFS file system
  []{#xfs_admin}[[**xfs_admin**]{.command}]{.term}           changes the parameters of an XFS file system
  []{#xfs_bmap}[[**xfs_bmap**]{.command}]{.term}             prints block mapping for an XFS file
  []{#xfs_copy}[[**xfs_copy**]{.command}]{.term}             copies the contents of an XFS file system to one or more targets in parallel
  []{#xfs_estimate}[[**xfs_estimate**]{.command}]{.term}     for each directory argument, estimates the space that directory would take if it were copied to an XFS filesystem (does not cross mount points)
  []{#xfs_db}[[**xfs_db**]{.command}]{.term}                 is used to debug an XFS file system
  []{#xfs_freeze}[[**xfs_freeze**]{.command}]{.term}         suspends access to an XFS file system
  []{#xfs_fsr}[[**xfs_fsr**]{.command}]{.term}               applicable only to XFS filesystems, improves the organization of mounted filesystems, the reorganization algorithm operates on one file at a time, compacting or otherwise improving the layout of the file extents (contiguous blocks of file data)
  []{#xfs_growfs}[[**xfs_growfs**]{.command}]{.term}         expands an XFS file system
  []{#xfs_info}[[**xfs_info**]{.command}]{.term}             is equivalent to invoking [**xfs_growfs**]{.command}, but specifying that no change to the file system is to be made
  []{#xfs_io}[[**xfs_io**]{.command}]{.term}                 is a debugging tool like [**xfs_db**]{.command}, but is aimed at examining the regular file I/O path rather than the raw XFS volume itself
  []{#xfs_logprint}[[**xfs_logprint**]{.command}]{.term}     prints the log of an XFS file system
  []{#xfs_mdrestore}[[**xfs_mdrestore**]{.command}]{.term}   restores an XFS metadump image to a filesystem image
  []{#xfs_metadump}[[**xfs_metadump**]{.command}]{.term}     copies XFS filesystem metadata to a file
  []{#xfs_mkfile}[[**xfs_mkfile**]{.command}]{.term}         creates an XFS file, padded with zeroes by default
  []{#xfs_ncheck}[[**xfs_ncheck**]{.command}]{.term}         generates pathnames from inode numbers for an XFS file system
  []{#xfs_property}[[**xfs_property**]{.command}]{.term}     examines and edits properties about a XFS filesystem
  []{#xfs_protofile}[[**xfs_protofile**]{.command}]{.term}   creates a protofile for use with [**mkfs.xfs**]{.command}
  []{#xfs_quota}[[**xfs_quota**]{.command}]{.term}           is a utility for reporting and editing various aspects of filesystem quotas
  []{#xfs_repair}[[**xfs_repair**]{.command}]{.term}         repairs corrupt or damaged XFS file systems
  []{#xfs_rtcp}[[**xfs_rtcp**]{.command}]{.term}             copies a file to the real-time partition on an XFS file system
  []{#xfs_scrub}[[**xfs_scrub**]{.command}]{.term}           checks and repairs the contents of a mounted XFS file system
  []{#xfs_scrub_all}[[**xfs_scrub_all**]{.command}]{.term}   scrubs all mounted XFS file systems
  []{#xfs_spaceman}[[**xfs_spaceman**]{.command}]{.term}     reports and controls free space usage in an XFS file system
  []{#libhandle}[`libhandle.so`{.filename}]{.term}           contains XFS-specific functions that provide a way to perform certain filesystem operations without using a file descriptor to access filesystem objects
  ---------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](sshfs.md "sshfs-3.7.6"){accesskey="p"}

    sshfs-3.7.6

-   [Next](efivar.md "efivar-39"){accesskey="n"}

    efivar-39

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
