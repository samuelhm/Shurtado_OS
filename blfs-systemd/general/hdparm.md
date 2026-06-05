<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](zip.md "Zip-3.0")

    Zip-3.0

-   [Next](lm-sensors.md "lm-sensors-3-6-2")

    lm-sensors-3-6-2

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Hdparm-9.65 {#hdparm-9.65}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Hdparm {#introduction-to-hdparm}

The <span class="application">Hdparm</span> package contains a utility that is useful for obtaining information about, and controlling ATA/IDE controllers and hard drives. It allows to increase performance and sometimes to increase stability.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

As well as being useful, incorrect usage of <span class="application">Hdparm</span> can destroy your information and in rare cases, drives. Use with caution and make sure you know what you are doing. If in doubt, it is recommended that you leave the default kernel parameters alone.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/hdparm/hdparm-9.65.tar.gz">https://downloads.sourceforge.net/hdparm/hdparm-9.65.tar.gz</a>

-   Download MD5 sum: 6d6d039d61ec995b1ec72ddce0b1853b

-   Download size: 140 KB

-   Estimated disk space required: 1.0 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of Hdparm {#installation-of-hdparm}

Build <span class="application">Hdparm</span> by running the following command:

```bash
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make binprefix=/usr install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">hdparm</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------
  <a id="hdparm-prog"></a><span class="command"><span class="term"><strong>hdparm</strong></span></span>   provides a command-line interface to various hard disk ioctls supported by the stock Linux ATA/IDE device driver subsystem
  ------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](zip.md "Zip-3.0")

    Zip-3.0

-   [Next](lm-sensors.md "lm-sensors-3-6-2")

    lm-sensors-3-6-2

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
