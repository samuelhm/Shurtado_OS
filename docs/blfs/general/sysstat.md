<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](redland.md "Redland-1.0.17")

    Redland-1.0.17

-   [Next](systemd.md "Systemd-260.2")

    Systemd-260.2

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Sysstat-12.7.9 {#sysstat-12.7.9}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Sysstat {#introduction-to-sysstat}

The <span class="application">Sysstat</span> package contains utilities to monitor system performance and usage activity. <span class="application">Sysstat</span> contains the <span class="command"><strong>sar</strong></span> utility, common to many commercial Unixes, and tools you can schedule via cron to collect and historize performance and activity data.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://sysstat.github.io/sysstat-packages/sysstat-12.7.9.tar.xz">https://sysstat.github.io/sysstat-packages/sysstat-12.7.9.tar.xz</a>

-   Download MD5 sum: feded3c0171774a19c1efdb2dc43b68d

-   Download size: 916 KB

-   Estimated disk space required: 29 MB

-   Estimated build time: 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of Sysstat {#installation-of-sysstat}

Install <span class="application">Sysstat</span> by running the following commands:

```bash
sa_lib_dir=/usr/lib/sa    \
sa_dir=/var/log/sa        \
conf_dir=/etc/sysstat     \
./configure --prefix=/usr \
            --disable-file-attr &&
make
```

This package does not come with a working test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Install the systemd units and timers by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m644 sysstat.service /usr/lib/systemd/system/sysstat.service                      &&
install -v -m644 cron/sysstat-collect.service /usr/lib/systemd/system/sysstat-collect.service &&
install -v -m644 cron/sysstat-collect.timer /usr/lib/systemd/system/sysstat-collect.timer     &&
install -v -m644 cron/sysstat-rotate.service /usr/lib/systemd/system/sysstat-rotate.service   &&
install -v -m644 cron/sysstat-rotate.timer /usr/lib/systemd/system/sysstat-rotate.timer       &&
install -v -m644 cron/sysstat-summary.service /usr/lib/systemd/system/sysstat-summary.service &&
install -v -m644 cron/sysstat-summary.timer /usr/lib/systemd/system/sysstat-summary.timer
```

Fix one of the systemd units by running the following command as the <code class="systemitem">root</code> user:

```bash
sed -i "/^Also=/d" /usr/lib/systemd/system/sysstat.service
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="envar">sa_lib_dir</code>: This environment variable specifies the location of the package-specific library directory.

<code class="envar">sa_dir</code>: This environment variable specifies the location of the directory containing the data files.

<code class="envar">conf_dir</code>: This environment variable specifies the location of the system configuration directory.

*`--disable-file-attr`*: Do not set attributes on files being installed. This parameter causes the installation to ignore the man group variable resulting in the man files having <code class="systemitem">root</code>: <code class="systemitem">root</code> ownership.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Run <span class="command"><strong>./configure --help</strong></span> to see other influential environment variables you can pass to <span class="command"><strong>configure</strong></span>. You may want to use the <code class="envar">history</code> and <code class="envar">compressafter</code> variables to customize the amount of data files kept on the system.
</div>
</div>

<div class="configuration" lang="en">
## Configuring Sysstat {#configuring-sysstat}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/sysconfig/sysstat</code> and <code class="filename">/etc/sysconfig/sysstat.ioconf</code>
</div>

<div class="sect3" lang="en">
### System Startup Information {#system-startup-information}

At system startup, a LINUX RESTART message must be inserted in the daily data file to reinitialize the kernel counters. This can be automated by enabling the previously installed systemd unit by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable sysstat
```

In addition to placing the LINUX RESTART message into the daily data file, there are systemd timers installed which will automatically capture the required history information for the <span class="command"><strong>sar</strong></span> command.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cifsiostat, iostat, mpstat, pidstat, sadf, sar, and tapestat</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/sa, /usr/share/doc/sysstat-12.7.9 and /var/log/sa</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="cifsiostat"></a><span class="command"><span class="term"><strong>cifsiostat</strong></span></span>   displays statistics about read and write operations on CIFS filesystems
  <a id="iostat"></a><span class="command"><span class="term"><strong>iostat</strong></span></span>           reports CPU statistics and input/output statistics for devices and partitions
  <a id="mpstat"></a><span class="command"><span class="term"><strong>mpstat</strong></span></span>           writes activities for each available processor
  <a id="pidstat"></a><span class="command"><span class="term"><strong>pidstat</strong></span></span>         is used for monitoring individual tasks currently being managed by the Linux kernel
  <a id="sadf"></a><span class="command"><span class="term"><strong>sadf</strong></span></span>               is used for displaying the contents of data files created by the <span class="command"><strong>sar</strong></span> command. But unlike <span class="command"><strong>sar</strong></span>, <span class="command"><strong>sadf</strong></span> can write its data in many different formats
  <a id="sar"></a><span class="command"><span class="term"><strong>sar</strong></span></span>                 is used for displaying the contents of elected cumulative activity counters in the operating system
  <a id="tapestat"></a><span class="command"><span class="term"><strong>tapestat</strong></span></span>       is used for monitoring the activity of tape drives connected to a system
  ---------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](redland.md "Redland-1.0.17")

    Redland-1.0.17

-   [Next](systemd.md "Systemd-260.2")

    Systemd-260.2

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
