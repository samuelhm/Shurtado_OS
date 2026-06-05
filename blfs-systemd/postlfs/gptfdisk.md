::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](ntfs-3g.md "ntfs-3g-2026.2.25"){accesskey="p"}

    ntfs-3g-2026.2.25

-   [Next](parted.md "parted-3.7"){accesskey="n"}

    parted-3.7

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gptfdisk}gptfdisk-1.0.10 {#gptfdisk-1.0.10 .sect1}

:::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to gptfdisk {#introduction-to-gptfdisk .sect2}

The [gptfdisk]{.application} package is a set of programs for creation and maintenance of GUID Partition Table (GPT) disk drives. A GPT partitioned disk is required for drives greater than 2 TB and is a modern replacement for legacy PC-BIOS partitioned disk drives that use a Master Boot Record (MBR). The main program, [**gdisk**]{.command}, has an interface similar to the classic [**fdisk**]{.command} program.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/gptfdisk/gptfdisk-1.0.10.tar.gz](https://downloads.sourceforge.net/gptfdisk/gptfdisk-1.0.10.tar.gz){.ulink}

-   Download MD5 sum: 1970269eb7a97560e238611524b7797a

-   Download size: 216 KB

-   Estimated disk space required: 2.4 MB

-   Estimated build time: less than 0.1 SBU (add 0.2 SBU for tests)
:::

### Additional Downloads

::: itemizedlist
-   Recommended patch: [https://www.linuxfromscratch.org/patches/blfs/svn/gptfdisk-1.0.10-convenience-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/gptfdisk-1.0.10-convenience-1.patch){.ulink}
:::

### gptfdisk Dependencies

#### Required

[popt-1.19](../general/popt.md "Popt-1.19"){.xref}

#### Optional

[ICU-78.3](../general/icu.md "icu-78.3"){.xref}
::::::

::: {.installation lang="en"}
## Installation of gptfdisk {#installation-of-gptfdisk .sect2}

The [gptfdisk]{.application} package comes with a rudimentary `Makefile`{.filename}. First we update it to provide a simple build and install interface and fix the location of a header file and fix some minor location issues. Install [gptfdisk]{.application} by running the following commands:

``` userinput
patch -Np1 -i ../gptfdisk-1.0.10-convenience-1.patch &&
sed -i 's|ncursesw/||' gptcurses.cc &&
sed -i 's|sbin|usr/sbin|' Makefile  &&

make
```

To test the results, issue: [**make test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**patch -Np1 ...**]{.command}: This patch modifies the `Makefile`{.filename} file so that it provides an [“[install]{.quote}”]{.quote} target.
:::

::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Programs:** [cgdisk, gdisk, fixparts, and sgdisk]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ------------------------------------------------------------------------------------------
  []{#cgdisk}[[**cgdisk**]{.command}]{.term}       is an ncurses-based tool for manipulating GPT partitions
  []{#gdisk}[[**gdisk**]{.command}]{.term}         is an interactive text-mode tool for manipulating GPT partitions
  []{#fixparts}[[**fixparts**]{.command}]{.term}   repairs mis-formatted MBR based disk partitions
  []{#sgdisk}[[**sgdisk**]{.command}]{.term}       is a partition manipulation program for GPT partitions similar to [**sfdisk**]{.command}
  ------------------------------------------------ ------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](ntfs-3g.md "ntfs-3g-2026.2.25"){accesskey="p"}

    ntfs-3g-2026.2.25

-   [Next](parted.md "parted-3.7"){accesskey="n"}

    parted-3.7

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
