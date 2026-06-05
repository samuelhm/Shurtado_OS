::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](redland.md "Redland-1.0.17"){accesskey="p"}

    Redland-1.0.17

-   [Next](systemd.md "Systemd-260.2"){accesskey="n"}

    Systemd-260.2

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sysstat}Sysstat-12.7.9 {#sysstat-12.7.9 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Sysstat {#introduction-to-sysstat .sect2}

The [Sysstat]{.application} package contains utilities to monitor system performance and usage activity. [Sysstat]{.application} contains the [**sar**]{.command} utility, common to many commercial Unixes, and tools you can schedule via cron to collect and historize performance and activity data.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://sysstat.github.io/sysstat-packages/sysstat-12.7.9.tar.xz](https://sysstat.github.io/sysstat-packages/sysstat-12.7.9.tar.xz){.ulink}

-   Download MD5 sum: feded3c0171774a19c1efdb2dc43b68d

-   Download size: 916 KB

-   Estimated disk space required: 29 MB

-   Estimated build time: 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of Sysstat {#installation-of-sysstat .sect2}

Install [Sysstat]{.application} by running the following commands:

``` userinput
sa_lib_dir=/usr/lib/sa    \
sa_dir=/var/log/sa        \
conf_dir=/etc/sysstat     \
./configure --prefix=/usr \
            --disable-file-attr &&
make
```

This package does not come with a working test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

Install the systemd units and timers by running the following commands as the `root`{.systemitem} user:

``` root
install -v -m644 sysstat.service /usr/lib/systemd/system/sysstat.service                      &&
install -v -m644 cron/sysstat-collect.service /usr/lib/systemd/system/sysstat-collect.service &&
install -v -m644 cron/sysstat-collect.timer /usr/lib/systemd/system/sysstat-collect.timer     &&
install -v -m644 cron/sysstat-rotate.service /usr/lib/systemd/system/sysstat-rotate.service   &&
install -v -m644 cron/sysstat-rotate.timer /usr/lib/systemd/system/sysstat-rotate.timer       &&
install -v -m644 cron/sysstat-summary.service /usr/lib/systemd/system/sysstat-summary.service &&
install -v -m644 cron/sysstat-summary.timer /usr/lib/systemd/system/sysstat-summary.timer
```

Fix one of the systemd units by running the following command as the `root`{.systemitem} user:

``` root
sed -i "/^Also=/d" /usr/lib/systemd/system/sysstat.service
```
:::

:::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`sa_lib_dir`{.envar}: This environment variable specifies the location of the package-specific library directory.

`sa_dir`{.envar}: This environment variable specifies the location of the directory containing the data files.

`conf_dir`{.envar}: This environment variable specifies the location of the system configuration directory.

*`--disable-file-attr`*: Do not set attributes on files being installed. This parameter causes the installation to ignore the man group variable resulting in the man files having `root`{.systemitem}: `root`{.systemitem} ownership.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Run [**./configure --help**]{.command} to see other influential environment variables you can pass to [**configure**]{.command}. You may want to use the `history`{.envar} and `compressafter`{.envar} variables to customize the amount of data files kept on the system.
:::
::::

::::: {.configuration lang="en"}
## Configuring Sysstat {#configuring-sysstat .sect2}

::: {.sect3 lang="en"}
### []{#sysstat-config}Config Files {#config-files .sect3}

`/etc/sysconfig/sysstat`{.filename} and `/etc/sysconfig/sysstat.ioconf`{.filename}
:::

::: {.sect3 lang="en"}
### []{#sysstat-init}System Startup Information {#system-startup-information .sect3}

At system startup, a LINUX RESTART message must be inserted in the daily data file to reinitialize the kernel counters. This can be automated by enabling the previously installed systemd unit by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable sysstat
```

In addition to placing the LINUX RESTART message into the daily data file, there are systemd timers installed which will automatically capture the required history information for the [**sar**]{.command} command.
:::
:::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [cifsiostat, iostat, mpstat, pidstat, sadf, sar, and tapestat]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/sa, /usr/share/doc/sysstat-12.7.9 and /var/log/sa]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#cifsiostat}[[**cifsiostat**]{.command}]{.term}   displays statistics about read and write operations on CIFS filesystems
  []{#iostat}[[**iostat**]{.command}]{.term}           reports CPU statistics and input/output statistics for devices and partitions
  []{#mpstat}[[**mpstat**]{.command}]{.term}           writes activities for each available processor
  []{#pidstat}[[**pidstat**]{.command}]{.term}         is used for monitoring individual tasks currently being managed by the Linux kernel
  []{#sadf}[[**sadf**]{.command}]{.term}               is used for displaying the contents of data files created by the [**sar**]{.command} command. But unlike [**sar**]{.command}, [**sadf**]{.command} can write its data in many different formats
  []{#sar}[[**sar**]{.command}]{.term}                 is used for displaying the contents of elected cumulative activity counters in the operating system
  []{#tapestat}[[**tapestat**]{.command}]{.term}       is used for monitoring the activity of tape drives connected to a system
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](redland.md "Redland-1.0.17"){accesskey="p"}

    Redland-1.0.17

-   [Next](systemd.md "Systemd-260.2"){accesskey="n"}

    Systemd-260.2

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
