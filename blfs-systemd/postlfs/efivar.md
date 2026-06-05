::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](xfsprogs.md "xfsprogs-7.0.1"){accesskey="p"}

    xfsprogs-7.0.1

-   [Next](efibootmgr.md "efibootmgr-18"){accesskey="n"}

    efibootmgr-18

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#efivar}efivar-39 {#efivar-39 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to efivar {#introduction-to-efivar .sect2}

The [efivar]{.application} package provides tools and libraries to manipulate EFI variables.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/rhboot/efivar/archive/39/efivar-39.tar.gz](https://github.com/rhboot/efivar/archive/39/efivar-39.tar.gz){.ulink}

-   Download MD5 sum: a8fc3e79336cd6e738ab44f9bc96a5aa

-   Download size: 456 KB

-   Estimated disk space required: 21 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/efivar-39-upstream_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/efivar-39-upstream_fixes-1.patch){.ulink}
:::

### efivar Dependencies

#### Optional

[mandoc](https://mandoc.bsd.lv/){.ulink} (for the man page of [**efisecdb**]{.command})
::::::

:::: {.installation lang="en"}
## Installation of efivar {#installation-of-efivar .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package cannot function properly on a 32-bit system with a 64-bit UEFI implementation. Don't install this package (or efibootmgr) on 32-bit system unless you are absolutely sure you have a 32-bit UEFI implementation, which is very rare in practice.
:::

First, apply a patch to make this package compatible with glibc-2.43 and later:

``` userinput
patch -Np1 -i ../efivar-39-upstream_fixes-1.patch
```

Build [efivar]{.application} with the following commands:

``` userinput
make ENABLE_DOCS=0
```

The test suite of this package is dangerous. Running it may trigger firmware bugs and make your system unusable without using some special hardware to reprogram the firmware.

Now, as the `root`{.systemitem} user:

``` root
make install ENABLE_DOCS=0 LIBDIR=/usr/lib
```

To avoid a hard dependency on [mandoc](https://mandoc.bsd.lv/){.ulink} we used *`ENABLE_DOCS=0`*, but it causes all the man pages skipped from the installation even though most of them actually do not need [mandoc](https://mandoc.bsd.lv/){.ulink}. Still as the `root`{.systemitem} user, install these man pages:

``` root
install -vm644 docs/efivar.1 /usr/share/man/man1 &&
install -vm644 docs/*.3      /usr/share/man/man3
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`ENABLE_DOCS=0`*: Disable the generation of man pages, in order to allow building this package without [mandoc](https://mandoc.bsd.lv/){.ulink} installed.

*`LIBDIR=/usr/lib`*: This option overrides the default library directory of the package (`/usr/lib64`{.filename}, which is not used by LFS).
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [efisecdb and efivar]{.segbody}
:::

::: seg
**Installed Libraries:** [libefiboot.so, libefisec.so, and libefivar.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/efivar]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ----------------------------------------------------
  []{#efisecdb}[[**efisecdb**]{.command}]{.term}       is a utility for managing UEFI signature lists
  []{#efivar-prog}[[**efivar**]{.command}]{.term}      is a tool to manipulate UEFI variables
  []{#libefiboot}[`libefiboot.so`{.filename}]{.term}   is a library used by [**efibootmgr**]{.command}
  []{#libefisec}[`libefisec.so`{.filename}]{.term}     is a library for managing UEFI signature lists
  []{#libefivar}[`libefivar.so`{.filename}]{.term}     is a library for the manipulation of EFI variables
  ---------------------------------------------------- ----------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](xfsprogs.md "xfsprogs-7.0.1"){accesskey="p"}

    xfsprogs-7.0.1

-   [Next](efibootmgr.md "efibootmgr-18"){accesskey="n"}

    efibootmgr-18

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
