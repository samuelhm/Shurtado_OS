::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](hdparm.md "Hdparm-9.65"){accesskey="p"}

    Hdparm-9.65

-   [Next](pciutils.md "pciutils-3.15.0"){accesskey="n"}

    pciutils-3.15.0

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#lm_sensors}lm-sensors-3-6-2 {#lm-sensors-3-6-2 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to lm-sensors {#introduction-to-lm-sensors .sect2}

The [lm-sensors]{.application} package provides userspace support for the hardware monitoring drivers in the Linux kernel. This is useful for monitoring the temperature of the CPU and adjusting the performance of some hardware (such as cooling fans).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/hramrach/lm-sensors/archive/V3-6-2/lm-sensors-3-6-2.tar.gz](https://github.com/hramrach/lm-sensors/archive/V3-6-2/lm-sensors-3-6-2.tar.gz){.ulink}

-   Download MD5 sum: 44c733f509cd4a31494fd3e355152b0a

-   Download size: 288 KB

-   Estimated disk space required: 2.7 MB

-   Estimated build time: less than 0.1 SBU
:::

### lm-sensors Dependencies

#### Required

[Which-2.25](which.md "Which-2.25 and Alternatives"){.xref}

#### Optional

[RRDtool](https://oss.oetiker.ch/rrdtool/){.ulink} (required to build the [**sensord**]{.command} program) and [dmidecode](https://www.nongnu.org/dmidecode/){.ulink} (runtime)
:::::

::: {.kernel lang="en"}
## []{#lm_sensors-kernel}Kernel Configuration {#kernel-configuration .sect2}

The following configuration options attempt to cover the most common hardware monitoring devices in a typical desktop or laptop system. View the help of each (by pressing the [**H**]{.keycap} button with the option focused in the [**make menuconfig**]{.command}) to know if you need it. There are many platform-specific hardware monitoring devices so it's impossible to list the configuration for all of them here. You may investigate the content of `/sys/class/hwmon`{.filename} within a [“[mainstream]{.quote}”]{.quote} distro running on the system to know which drivers you need.

``` screen
Power management and ACPI options --->
  [*] ACPI (Advanced Configuration and Power Interface) Support --->      [ACPI]
    < /*/M> Battery                                               [ACPI_BATTERY]
    < /*/M> Thermal Zone                                          [ACPI_THERMAL]

Device Drivers --->
  NVME Support --->
    < /*> NVM Express block device                                [BLK_DEV_NVME]
    # Set [HWMON] to <*> (not <M>!) or it will not show up:
    [ /*] NVMe hardware monitoring                                  [NVME_HWMON]
  <*/M> Hardware Monitoring support --->                                 [HWMON]
    < /*/M> AMD Athlon64/FX or Opteron temperature sensor       [SENSORS_K8TEMP]
    < /*/M> AMD Family 10h+ temperature sensor                 [SENSORS_K10TEMP]
    < /*/M> AMD Family 15h processor power                [SENSORS_FAM15H_POWER]
    < /*/M> Intel Core/Core2/Atom temperature sensor          [SENSORS_CORETEMP]
```

Recompile your kernel and reboot into the new kernel.
:::

::: {.installation lang="en"}
## Installation of lm-sensors {#installation-of-lm-sensors .sect2}

Install [lm-sensors]{.application} by running the following commands:

``` userinput
make PREFIX=/usr        \
     BUILD_STATIC_LIB=0 \
     MANDIR=/usr/share/man
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make PREFIX=/usr        \
     BUILD_STATIC_LIB=0 \
     MANDIR=/usr/share/man install &&

install -v -m755 -d /usr/share/doc/lm-sensors-3-6-2 &&
cp -rv              README INSTALL doc/* \
                    /usr/share/doc/lm-sensors-3-6-2
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`BUILD_STATIC_LIB=0`*: This parameter disables compiling and installing the static version of `libsensors`{.filename}.

`PROG_EXTRA=sensord`{.option}: This parameter enables compiling [**sensord**]{.command}, a daemon that can monitor your system at regular intervals. Compiling [**sensord**]{.command} requires [RRDtool](https://oss.oetiker.ch/rrdtool/){.ulink}. Be sure to install RRDtool in `/usr`{.filename} by running [**make prefix=/usr**]{.command} when building it. Otherwise, lm-sensors will not find it easily.
:::

:::: {.configuration lang="en"}
## Configuring lm-sensors {#configuring-lm-sensors .sect2}

::: {.sect3 lang="en"}
### []{#lm_sensors-config}Config File {#config-file .sect3}

`/etc/sensors3.conf`{.filename}
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fancontrol, isadump, isaset, pwmconfig, sensors, sensors-conf-convert, sensors-detect, and optionally, sensord]{.segbody}
:::

::: seg
**Installed Library:** [libsensors.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/sensors.d, /usr/include/sensors and /usr/share/doc/lm-sensors-3-6-2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#fancontrol}[[**fancontrol**]{.command}]{.term}                       is a shell script for use with [lm-sensors]{.application}. It reads its configuration from a file (/etc/sensors3.conf by default), then calculates fan speeds from temperatures and sets the corresponding PWM outputs to the computed values
  []{#isadump}[[**isadump**]{.command}]{.term}                             is a small helper program to examine registers visible through the ISA bus. It is intended to probe any chip that lives on the ISA bus working with an address register and a data register (I2C-like access) or a flat range (of up to 256 bytes)
  []{#isaset}[[**isaset**]{.command}]{.term}                               is a small helper program to set registers visible through the ISA bus
  []{#pwmconfig}[[**pwmconfig**]{.command}]{.term}                         tests the pulse width modulation (PWM) outputs of sensors and configures fancontrol
  []{#sensors}[[**sensors**]{.command}]{.term}                             prints the current readings of all sensor chips
  []{#sensors-conf-convert}[[**sensors-conf-convert**]{.command}]{.term}   is a [Perl]{.application} script to convert [lm-sensors]{.application} version 2 configuration files to work with version 3
  []{#sensors-detect}[[**sensors-detect**]{.command}]{.term}               is a [Perl]{.application} script that will walk you through the process of scanning your system for various hardware monitoring chips (sensors) supported by `libsensors`{.filename}, or more generally by the [lm-sensors]{.application} tool suite
  []{#sensord}[[**sensord**]{.command}]{.term}                             (optional) is a daemon that can be used to periodically log sensor readings
  []{#libsensors}[`libsensors.so`{.filename}]{.term}                       contains the [lm-sensors]{.application} API functions
  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](hdparm.md "Hdparm-9.65"){accesskey="p"}

    Hdparm-9.65

-   [Next](pciutils.md "pciutils-3.15.0"){accesskey="n"}

    pciutils-3.15.0

-   [Up](sysutils.md "Chapter 12. System Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
