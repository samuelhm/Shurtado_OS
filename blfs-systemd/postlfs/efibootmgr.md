::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](efivar.md "efivar-39"){accesskey="p"}

    efivar-39

-   [Next](editors.md "Text Editors"){accesskey="n"}

    Text Editors

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#efibootmgr}efibootmgr-18 {#efibootmgr-18 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to efibootmgr {#introduction-to-efibootmgr .sect2}

The [efibootmgr]{.application} package provides tools and libraries to manipulate EFI variables.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/rhboot/efibootmgr/archive/18/efibootmgr-18.tar.gz](https://github.com/rhboot/efibootmgr/archive/18/efibootmgr-18.tar.gz){.ulink}

-   Download MD5 sum: e170147da25e1d5f72721ffc46fe4e06

-   Download size: 48 KB

-   Estimated disk space required: 1.1 MB

-   Estimated build time: less than 0.1 SBU
:::

### efibootmgr Dependencies

#### Required

[efivar-39](efivar.md "efivar-39"){.xref} and [popt-1.19](../general/popt.md "Popt-1.19"){.xref}
:::::

::: {.installation lang="en"}
## Installation of efibootmgr {#installation-of-efibootmgr .sect2}

Build [efibootmgr]{.application} with the following commands:

``` userinput
make EFIDIR=LFS EFI_LOADER=grubx64.efi
```

This package does not have a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install EFIDIR=LFS
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`EFIDIR=LFS`*: This option specifies the distro's subdirectory name under `/boot/efi/EFI`{.filename}. The building system of this package needs it to be set explicitly.

*`EFI_LOADER=grubx64.efi`*: This option specifies the name of the default EFI boot loader. It is set to match the EFI boot loader provided by GRUB.
:::

::: {.using lang="en"}
## Using efibootmgr {#using-efibootmgr .sect2}

In LFS, the instructions go over how to install GRUB for UEFI. The process installs the EFI in a hardcoded location searched by most UEFI firmware implementations. If you reinstall GRUB however, GRUB will use this package to install the EFI in a place GRUB prefers, which allows greater control over EFI management. The `--removable`{.option} option will no longer be necessary when running [**grub-install**]{.command}. This package may be necessary in scenarios where the UEFI firmware doesn't look for the hardcoded EFI location. The LFS book addresses this situation.

In order for [**efibootmgr**]{.command} to work, the EFI variable file system must be mounted beforehand. If you're still in a chroot and haven't rebooted, mount it as the `root`{.systemitem} user:

``` root
mountpoint /sys/firmware/efi/efivars ||
  mount -v -t efivarfs efivarfs /sys/firmware/efi/efivars
```
:::

::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Programs:** [efibootdump and efibootmgr]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- ------------------------------------------------------------------------------------
  []{#efibootdump}[[**efibootdump**]{.command}]{.term}      is a tool to display individual UEFI boot options, from a file or an UEFI variable
  []{#efibootmgr-prog}[[**efibootmgr**]{.command}]{.term}   is a tool to manipulate the UEFI Boot Manager
  --------------------------------------------------------- ------------------------------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](efivar.md "efivar-39"){accesskey="p"}

    efivar-39

-   [Next](editors.md "Text Editors"){accesskey="n"}

    Text Editors

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
