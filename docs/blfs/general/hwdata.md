<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](gpm.md "GPM-1.20.7")

    GPM-1.20.7

-   [Next](lsb-tools.md "LSB-Tools-0.12")

    LSB-Tools-0.12

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# hwdata-0.408 {#hwdata-0.408}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to hwdata {#introduction-to-hwdata}

The <span class="application">hwdata</span> package contains current PCI and vendor id data.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/vcrhonek/hwdata/archive/v0.408/hwdata-0.408.tar.gz">https://github.com/vcrhonek/hwdata/archive/v0.408/hwdata-0.408.tar.gz</a>

-   Download MD5 sum: 4101c2cfdc29c8c105d376158ede477f

-   Download size: 2.5 MB

-   Estimated disk space required: 10 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of hwdata {#installation-of-hwdata}

Install <span class="application">hwdata</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-blacklist
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/share/hwdata</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gpm.md "GPM-1.20.7")

    GPM-1.20.7

-   [Next](lsb-tools.md "LSB-Tools-0.12")

    LSB-Tools-0.12

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
