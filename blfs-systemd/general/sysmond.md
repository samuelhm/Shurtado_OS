::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](sg3_utils.md "sg3_utils-1.48"){accesskey="p"}

    sg3_utils-1.48

-   [Next](sysmon3.md "sysmon3-3.0.3"){accesskey="n"}

    sysmon3-3.0.3

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#sysmond}sysmond-1.0.1 {#sysmond-1.0.1 .sect1}

::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to sysmond {#introduction-to-sysmond .sect2}

The [sysmond]{.application} package (pronounced sys-mon-d) is the daemon portion of the sysmond/sysmon3 client/server application that monitors system values including CPU usage, memory usage, and system temperatures in a compact screen window.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lfs-book/sysmond/releases/download/sysmond-1.0.1/sysmond-1.0.1.tar.xz](https://github.com/lfs-book/sysmond/releases/download/sysmond-1.0.1/sysmond-1.0.1.tar.xz){.ulink}

-   Download MD5 sum: 8633f400cf9491f575fe419f1ed59d1a

-   Download size: 24 KB

-   Estimated disk space required: 200 KB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.kernel lang="en"}
## []{#sysmond-kernel}Kernel Configuration {#kernel-configuration .sect2}

There are many different hardware devices that sense temperatures. The temperature readings are updated by kernel drivers that support specific devices. To determine what devices are present on a system the [lm-sensors-3-6-2](lm-sensors.md "lm-sensors-3-6-2"){.xref} package has a Perl script, [**sensors-detect**]{.command} that can look for specific devices that are in the current system.

After sensor devices are known, the appropriate kernel driver must be enabled. In many cases, but not all, the appropriate drivers are selected by default. The kernel configuration parameters are located at:

``` screen
Device Drivers --->                                    
  [*] Hardware Monitoring support --->        [CONFIG_HWMON]
```

In most cases at least Intel Core/Core2/Atom temperature sensor (SENSORS_CORETEMP) should be enabled for Intel based systems or CONFIG_SENSORS_K10TEMP (AMD) should be enabled for AMD based systems.
:::

::: {.installation lang="en"}
## Installation of sysmond {#installation-of-sysmond .sect2}

Install [sysmond]{.application} by running the following commands:

``` userinput
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::: {.configuration lang="en"}
## Configuring sysmond {#configuring-sysmond .sect2}

::: {.sect3 lang="en"}
### []{#sysmond-init} Systemd Unit {#systemd-unit .sect3}

To start the [**sysmond**]{.command} daemon at boot, install the systemd unit from the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package by running the following command as the `root`{.systemitem} user:

``` root
make install-sysmond
```
:::

::: {.sect3 lang="en"}
### []{#sysmond-config}Config File {#config-file .sect3}

By default the configuration file is `/etc/sysmond.conf`{.filename} but it can be changed by passing --config-file \<filename\> on the command line. Initially all of the configuration items are commented out and the defaults specified there are used.
:::
:::::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [sysmond]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::::

::: navfooter
-   [Prev](sg3_utils.md "sg3_utils-1.48"){accesskey="p"}

    sg3_utils-1.48

-   [Next](sysmon3.md "sysmon3-3.0.3"){accesskey="n"}

    sysmon3-3.0.3

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
