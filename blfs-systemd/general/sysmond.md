<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](sg3_utils.md "sg3_utils-1.48")

    sg3_utils-1.48

-   [Next](sysmon3.md "sysmon3-3.0.3")

    sysmon3-3.0.3

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# sysmond-1.0.1 {#sysmond-1.0.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to sysmond {#introduction-to-sysmond}

The <span class="application">sysmond</span> package (pronounced sys-mon-d) is the daemon portion of the sysmond/sysmon3 client/server application that monitors system values including CPU usage, memory usage, and system temperatures in a compact screen window.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lfs-book/sysmond/releases/download/sysmond-1.0.1/sysmond-1.0.1.tar.xz">https://github.com/lfs-book/sysmond/releases/download/sysmond-1.0.1/sysmond-1.0.1.tar.xz</a>

-   Download MD5 sum: 8633f400cf9491f575fe419f1ed59d1a

-   Download size: 24 KB

-   Estimated disk space required: 200 KB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

There are many different hardware devices that sense temperatures. The temperature readings are updated by kernel drivers that support specific devices. To determine what devices are present on a system the <a class="xref" href="lm-sensors.md" title="lm-sensors-3-6-2">lm-sensors-3-6-2</a> package has a Perl script, <span class="command"><strong>sensors-detect</strong></span> that can look for specific devices that are in the current system.

After sensor devices are known, the appropriate kernel driver must be enabled. In many cases, but not all, the appropriate drivers are selected by default. The kernel configuration parameters are located at:

```console
Device Drivers --->                                    
  [*] Hardware Monitoring support --->        [CONFIG_HWMON]
```

In most cases at least Intel Core/Core2/Atom temperature sensor (SENSORS_CORETEMP) should be enabled for Intel based systems or CONFIG_SENSORS_K10TEMP (AMD) should be enabled for AMD based systems.
</div>

<div class="installation" lang="en">
## Installation of sysmond {#installation-of-sysmond}

Install <span class="application">sysmond</span> by running the following commands:

```bash
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="configuration" lang="en">
## Configuring sysmond {#configuring-sysmond}

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the <span class="command"><strong>sysmond</strong></span> daemon at boot, install the systemd unit from the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package by running the following command as the <code class="systemitem">root</code> user:

```bash
make install-sysmond
```
</div>

<div class="sect3" lang="en">
### Config File {#config-file}

By default the configuration file is <code class="filename">/etc/sysmond.conf</code> but it can be changed by passing --config-file \<filename\> on the command line. Initially all of the configuration items are commented out and the defaults specified there are used.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">sysmond</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](sg3_utils.md "sg3_utils-1.48")

    sg3_utils-1.48

-   [Next](sysmon3.md "sysmon3-3.0.3")

    sysmon3-3.0.3

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
