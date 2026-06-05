<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](hdparm.md "Hdparm-9.65")

    Hdparm-9.65

-   [Next](pciutils.md "pciutils-3.15.0")

    pciutils-3.15.0

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# lm-sensors-3-6-2 {#lm-sensors-3-6-2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to lm-sensors {#introduction-to-lm-sensors}

The <span class="application">lm-sensors</span> package provides userspace support for the hardware monitoring drivers in the Linux kernel. This is useful for monitoring the temperature of the CPU and adjusting the performance of some hardware (such as cooling fans).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/hramrach/lm-sensors/archive/V3-6-2/lm-sensors-3-6-2.tar.gz">https://github.com/hramrach/lm-sensors/archive/V3-6-2/lm-sensors-3-6-2.tar.gz</a>

-   Download MD5 sum: 44c733f509cd4a31494fd3e355152b0a

-   Download size: 288 KB

-   Estimated disk space required: 2.7 MB

-   Estimated build time: less than 0.1 SBU
</div>

### lm-sensors Dependencies

#### Required

<a class="xref" href="which.md" title="Which-2.25 and Alternatives">Which-2.25</a>

#### Optional

<a class="ulink" href="https://oss.oetiker.ch/rrdtool/">RRDtool</a> (required to build the <span class="command"><strong>sensord</strong></span> program) and <a class="ulink" href="https://www.nongnu.org/dmidecode/">dmidecode</a> (runtime)
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

The following configuration options attempt to cover the most common hardware monitoring devices in a typical desktop or laptop system. View the help of each (by pressing the <span class="keycap"><strong>H</strong></span> button with the option focused in the <span class="command"><strong>make menuconfig</strong></span>) to know if you need it. There are many platform-specific hardware monitoring devices so it's impossible to list the configuration for all of them here. You may investigate the content of <code class="filename">/sys/class/hwmon</code> within a <span class="quote">“<span class="quote">mainstream</span>”</span> distro running on the system to know which drivers you need.

```console
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
</div>

<div class="installation" lang="en">
## Installation of lm-sensors {#installation-of-lm-sensors}

Install <span class="application">lm-sensors</span> by running the following commands:

```bash
make PREFIX=/usr        \
     BUILD_STATIC_LIB=0 \
     MANDIR=/usr/share/man
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make PREFIX=/usr        \
     BUILD_STATIC_LIB=0 \
     MANDIR=/usr/share/man install &&

install -v -m755 -d /usr/share/doc/lm-sensors-3-6-2 &&
cp -rv              README INSTALL doc/* \
                    /usr/share/doc/lm-sensors-3-6-2
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`BUILD_STATIC_LIB=0`*: This parameter disables compiling and installing the static version of <code class="filename">libsensors</code>.

<code class="option">PROG_EXTRA=sensord</code>: This parameter enables compiling <span class="command"><strong>sensord</strong></span>, a daemon that can monitor your system at regular intervals. Compiling <span class="command"><strong>sensord</strong></span> requires <a class="ulink" href="https://oss.oetiker.ch/rrdtool/">RRDtool</a>. Be sure to install RRDtool in <code class="filename">/usr</code> by running <span class="command"><strong>make prefix=/usr</strong></span> when building it. Otherwise, lm-sensors will not find it easily.
</div>

<div class="configuration" lang="en">
## Configuring lm-sensors {#configuring-lm-sensors}

<div class="sect3" lang="en">
### Config File {#config-file}

<code class="filename">/etc/sensors3.conf</code>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fancontrol, isadump, isaset, pwmconfig, sensors, sensors-conf-convert, sensors-detect, and optionally, sensord</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libsensors.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/sensors.d, /usr/include/sensors and /usr/share/doc/lm-sensors-3-6-2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="fancontrol"></a><span class="command"><span class="term"><strong>fancontrol</strong></span></span>                       is a shell script for use with <span class="application">lm-sensors</span>. It reads its configuration from a file (/etc/sensors3.conf by default), then calculates fan speeds from temperatures and sets the corresponding PWM outputs to the computed values
  <a id="isadump"></a><span class="command"><span class="term"><strong>isadump</strong></span></span>                             is a small helper program to examine registers visible through the ISA bus. It is intended to probe any chip that lives on the ISA bus working with an address register and a data register (I2C-like access) or a flat range (of up to 256 bytes)
  <a id="isaset"></a><span class="command"><span class="term"><strong>isaset</strong></span></span>                               is a small helper program to set registers visible through the ISA bus
  <a id="pwmconfig"></a><span class="command"><span class="term"><strong>pwmconfig</strong></span></span>                         tests the pulse width modulation (PWM) outputs of sensors and configures fancontrol
  <a id="sensors"></a><span class="command"><span class="term"><strong>sensors</strong></span></span>                             prints the current readings of all sensor chips
  <a id="sensors-conf-convert"></a><span class="command"><span class="term"><strong>sensors-conf-convert</strong></span></span>   is a <span class="application">Perl</span> script to convert <span class="application">lm-sensors</span> version 2 configuration files to work with version 3
  <a id="sensors-detect"></a><span class="command"><span class="term"><strong>sensors-detect</strong></span></span>               is a <span class="application">Perl</span> script that will walk you through the process of scanning your system for various hardware monitoring chips (sensors) supported by <code class="filename">libsensors</code>, or more generally by the <span class="application">lm-sensors</span> tool suite
  <a id="sensord"></a><span class="command"><span class="term"><strong>sensord</strong></span></span>                             (optional) is a daemon that can be used to periodically log sensor readings
  <a id="libsensors"></a><span class="term"><code class="filename">libsensors.so</code></span>                       contains the <span class="application">lm-sensors</span> API functions
  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](hdparm.md "Hdparm-9.65")

    Hdparm-9.65

-   [Next](pciutils.md "pciutils-3.15.0")

    pciutils-3.15.0

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
