::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 5. File Systems and Disk Management

-   [Prev](parted.md "parted-3.7"){accesskey="p"}

    parted-3.7

-   [Next](sshfs.md "sshfs-3.7.6"){accesskey="n"}

    sshfs-3.7.6

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#smartmontools}smartmontools-7.5 {#smartmontools-7.5 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to smartmontools {#introduction-to-smartmontools .sect2}

The [smartmontools]{.application} package contains utility programs (smartctl, smartd) to control/monitor storage systems using the Self-Monitoring, Analysis and Reporting Technology System (S.M.A.R.T.) built into most modern ATA and SCSI disks.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/smartmontools/smartmontools-7.5.tar.gz](https://downloads.sourceforge.net/smartmontools/smartmontools-7.5.tar.gz){.ulink}

-   Download MD5 sum: 38c38b0b82db7fc4906cdd50d15a7931

-   Download size: 1.1 MB

-   Estimated disk space required: 24 MB

-   Estimated build time: 0.2 SBU
:::

### smartmontools Dependencies

#### Optional (runtime)

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref} or [Lynx-2.9.3](../basicnet/lynx.md "Lynx-2.9.3"){.xref} or [Wget-1.25.0](../basicnet/wget.md "Wget-1.25.0"){.xref} (download tools), and [GnuPG-2.5.20](gnupg.md "GnuPG-2.5.20"){.xref} (encrypted hard disks)
:::::

::: {.installation lang="en"}
## Installation of smartmontools {#installation-of-smartmontools .sect2}

Install [smartmontools]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/smartmontools-7.5 &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::: {.configuration lang="en"}
## Configuring smartmontools {#configuring-smartmontools .sect2}

::: {.sect3 lang="en"}
### []{#smartmontools-config}Config File {#config-file .sect3}

`/etc/smartd.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

See the embedded comments in `/etc/smartd.conf`{.filename} for detailed instructions on customizing the [smartd]{.application} daemon.
:::

::: {.sect3 lang="en"}
### []{#smartmontoools-init} Systemd Unit {#systemd-unit .sect3}

If you want the [smartd]{.application} daemon to start automatically when the system is booted, enable the systemd unit provided by the package by executing the following command as the `root`{.systemitem} user:

``` root
systemctl enable smartd
```
:::
::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [smartctl, smartd, and update-smart-drivedb]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/smartmontools, /usr/share/doc/smartmontools-7.5, and /etc/smartd_warning.d]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ---------------------------------------------------------
  []{#smartctl}[[**smartctl**]{.command}]{.term}                           is the control and monitor utility for SMART Disks
  []{#smartd}[[**smartd**]{.command}]{.term}                               is the SMART disk monitoring daemon
  []{#update-smart-drivedb}[[**update-smart-drivedb**]{.command}]{.term}   is the update tool for the smartmontools drive database
  ------------------------------------------------------------------------ ---------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](parted.md "parted-3.7"){accesskey="p"}

    parted-3.7

-   [Next](sshfs.md "sshfs-3.7.6"){accesskey="n"}

    sshfs-3.7.6

-   [Up](filesystems.md "Chapter 5. File Systems and Disk Management"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
