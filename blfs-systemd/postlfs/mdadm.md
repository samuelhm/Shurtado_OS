::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](raid.md "About RAID"){accesskey="p"}

    About RAID

-   [Next](ntfs-3g.md "ntfs-3g-2026.2.25"){accesskey="n"}

    ntfs-3g-2026.2.25

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mdadm}mdadm-4.6 {#mdadm-4.6 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to mdadm {#introduction-to-mdadm .sect2}

The [mdadm]{.application} package contains administration tools for software RAID.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://git.kernel.org/pub/scm/utils/mdadm/mdadm.git/snapshot/mdadm-4.6.tar.gz](https://git.kernel.org/pub/scm/utils/mdadm/mdadm.git/snapshot/mdadm-4.6.tar.gz){.ulink}

-   Download MD5 sum: 603c73b0b6b1da57e1107f2e4ad2133f

-   Download size: 612 KB

-   Estimated disk space required: 5.6 MB

-   Estimated build time: 0.1 SBU
:::

### mdadm Dependencies

#### Optional

An [MTA](../server/mail.md "Chapter 21. Mail Server Software"){.xref}
:::::

::: {.kernel lang="en"}
## []{#mdadm-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration and recompile the kernel, if necessary. Only the RAID types desired are required.

``` screen
Device Drivers --->
  [*] Multiple devices driver support (RAID and LVM) --->                   [MD]
    <*/M>   RAID support                                            [BLK_DEV_MD]
    [*]       Autodetect RAID arrays during kernel boot          [MD_AUTODETECT]
    # Only the RAID types desired are required:
    < /*/M> RAID-0 (striping) mode                                    [MD_RAID0]
    < /*/M> RAID-1 (mirroring) mode                                   [MD_RAID1]
    < /*/M> RAID-10 (mirrored striping) mode                         [MD_RAID10]
    < /*/M> RAID-4/RAID-5/RAID-6 mode                               [MD_RAID456]
```
:::

::: {.installation lang="en"}
## Installation of mdadm {#installation-of-mdadm .sect2}

Build [mdadm]{.application} by running the following command:

``` userinput
make
```

This package does not come with a working test suite.

Now, as the `root`{.systemitem} user:

``` root
make BINDIR=/usr/sbin install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**make everything**]{.command}: This optional target creates extra programs, particularly a statically-linked version of [**mdadm**]{.command}. This needs to be manually installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [mdadm and mdmon]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- --------------------------------------------
  []{#mdadm-prog}[[**mdadm**]{.command}]{.term}   manages MD devices aka Linux Software RAID
  []{#mdmon}[[**mdmon**]{.command}]{.term}        monitors MD external metadata arrays
  ----------------------------------------------- --------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](raid.md "About RAID"){accesskey="p"}

    About RAID

-   [Next](ntfs-3g.md "ntfs-3g-2026.2.25"){accesskey="n"}

    ntfs-3g-2026.2.25

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
