::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](btrfs-progs.md "btrfs-progs-7.0"){accesskey="p"}

    btrfs-progs-7.0

-   [Next](fuse.md "Fuse-3.18.2"){accesskey="n"}

    Fuse-3.18.2

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dosfstools}dosfstools-4.2 {#dosfstools-4.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to dosfstools {#introduction-to-dosfstools .sect2}

The [dosfstools]{.application} package contains various utilities for use with the FAT family of file systems.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/dosfstools/dosfstools/releases/download/v4.2/dosfstools-4.2.tar.gz](https://github.com/dosfstools/dosfstools/releases/download/v4.2/dosfstools-4.2.tar.gz){.ulink}

-   Download MD5 sum: 49c8e457327dc61efab5b115a27b087a

-   Download size: 314 KB

-   Estimated disk space required: 4.5 MB (with tests)

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.kernel lang="en"}
## []{#dosfstools-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following option in the kernel configuration and recompile the kernel if you need to mount a FAT-family filesystem:

``` screen
File systems --->
  DOS/FAT/EXFAT/NT Filesystems --->
    < /*/M> MSDOS fs support                                          [MSDOS_FS]
    <*/M>   VFAT (Windows-95) fs support                               [VFAT_FS]
```

Note that `CONFIG_MSDOS_FS`{.option} deliberately does not support long file names. `CONFIG_VFAT_FS`{.option} should be used instead unless you really want to enforce the DOS-style [“[8.3]{.quote}”]{.quote} file names.

You can mount a FAT-family filesystem once the kernel supports it. If you don't need to create, check, or relabel a FAT-family system, you may skip this package.
:::

::: {.installation lang="en"}
## Installation of dosfstools {#installation-of-dosfstools .sect2}

Install [dosfstools]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr            \
            --enable-compat-symlinks \
            --mandir=/usr/share/man  \
            --docdir=/usr/share/doc/dosfstools-4.2 &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-compat-symlinks`*: This switch creates the [dosfsck]{.application}, [dosfslabel]{.application}, [fsck.msdos]{.application}, [fsck.vfat]{.application}, [mkdosfs]{.application}, [mkfs.msdos]{.application}, and [mkfs.vfat]{.application} symlinks required by some programs.
:::

::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Programs:** [fatlabel, fsck.fat, and mkfs.fat]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ------------------------------------------------------------
  []{#fatlabel}[[**fatlabel**]{.command}]{.term}   sets or gets a MS-DOS filesystem label from a given device
  []{#fsckfat}[[**fsck.fat**]{.command}]{.term}    checks and repairs MS-DOS filesystems
  []{#mkfsfat}[[**mkfs.fat**]{.command}]{.term}    creates an MS-DOS filesystem under Linux
  ------------------------------------------------ ------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](btrfs-progs.md "btrfs-progs-7.0"){accesskey="p"}

    btrfs-progs-7.0

-   [Next](fuse.md "Fuse-3.18.2"){accesskey="n"}

    Fuse-3.18.2

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
