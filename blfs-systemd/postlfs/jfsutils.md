::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](fuse.md "Fuse-3.18.2"){accesskey="p"}

    Fuse-3.18.2

-   [Next](lvm2.md "LVM2-2.03.41"){accesskey="n"}

    LVM2-2.03.41

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#jfsutils}jfsutils-1.1.15 {#jfsutils-1.1.15 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to jfsutils {#introduction-to-jfsutils .sect2}

The [jfsutils]{.application} package contains administration and debugging tools for the jfs file system.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://jfs.sourceforge.net/project/pub/jfsutils-1.1.15.tar.gz](https://jfs.sourceforge.net/project/pub/jfsutils-1.1.15.tar.gz){.ulink}

-   Download MD5 sum: 8809465cd48a202895bc2a12e1923b5d

-   Download size: 532 KB

-   Estimated disk space required: 8.9 MB

-   Estimated build time: 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch to fix issues exposed by GCC 10 and later: [https://www.linuxfromscratch.org/patches/blfs/svn/jfsutils-1.1.15-gcc10_fix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/jfsutils-1.1.15-gcc10_fix-1.patch){.ulink}
:::
::::::

::: {.kernel lang="en"}
## []{#jfsutils-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following option in the kernel configuration and recompile the kernel:

``` screen
File systems --->
  <*/M> JFS filesystem support                                          [JFS_FS]
```
:::

::: {.installation lang="en"}
## Installation of jfsutils {#installation-of-jfsutils .sect2}

First, fix some issues exposed by GCC 10 and later:

``` userinput
patch -Np1 -i ../jfsutils-1.1.15-gcc10_fix-1.patch
```

Install [jfsutils]{.application} by running the following commands:

``` userinput
sed -i "/unistd.h/a#include <sys/types.h>"    fscklog/extract.c &&
sed -i "/ioctl.h/a#include <sys/sysmacros.h>" libfs/devices.c   &&

./configure &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed ...**]{.command}: Fixes building with glibc 2.28.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fsck.jfs, jfs_debugfs, jfs_fsck, jfs_fscklog, jfs_logdump, jfs_mkfs, jfs_tune, mkfs.jfs]{.segbody}
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

  ------------------------------------------------------ --------------------------------------------------------------------------------------------------------------
  []{#fsck.jfs}[[**fsck.jfs**]{.command}]{.term}         is used to replay the JFS transaction log, check a JFS formatted device for errors, and fix any errors found
  []{#jfs_fsck}[[**jfs_fsck**]{.command}]{.term}         is a hard link to fsck.jfs
  []{#mkfs.jfs}[[**mkfs.jfs**]{.command}]{.term}         constructs an JFS file system
  []{#jfs_mkfs}[[**jfs_mkfs**]{.command}]{.term}         is a hard link to mkfs.jfs
  []{#jfs_debugfs}[[**jfs_debugfs**]{.command}]{.term}   is a program which can be used to perform various low-level actions on a JFS formatted device
  []{#jfs_fscklog}[[**jfs_fscklog**]{.command}]{.term}   extracts a JFS fsck service log into a file and/or formats and displays the extracted file
  []{#jfs_logdump}[[**jfs_logdump**]{.command}]{.term}   dumps the contents of the journal log from the specified JFS formatted device into output file ./jfslog.dmp
  []{#jfs_tune}[[**jfs_tune**]{.command}]{.term}         adjusts tunable file system parameters on JFS file systems
  ------------------------------------------------------ --------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](fuse.md "Fuse-3.18.2"){accesskey="p"}

    Fuse-3.18.2

-   [Next](lvm2.md "LVM2-2.03.41"){accesskey="n"}

    LVM2-2.03.41

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
