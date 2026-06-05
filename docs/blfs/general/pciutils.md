<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](lm-sensors.md "lm-sensors-3-6-2")

    lm-sensors-3-6-2

-   [Next](sg3_utils.md "sg3_utils-1.48")

    sg3_utils-1.48

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# pciutils-3.15.0 {#pciutils-3.15.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to PCI Utils {#introduction-to-pci-utils}

The <span class="application">PCI Utils</span> package contains a set of programs for listing PCI devices, inspecting their status and setting their configuration registers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://mj.ucw.cz/download/linux/pci/pciutils-3.15.0.tar.gz">https://mj.ucw.cz/download/linux/pci/pciutils-3.15.0.tar.gz</a>

-   Download MD5 sum: 20b8e936cce9784444961088c8801f68

-   Download size: 724 KB

-   Estimated disk space required: 5.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### pciutils Dependencies

#### Recommended

<a class="xref" href="hwdata.md" title="hwdata-0.408">hwdata-0.408</a> (runtime)
</div>

<div class="installation" lang="en">
## Installation of PCI Utils {#installation-of-pci-utils}

Prevent the installation of the <code class="filename">pci.ids</code> file to avoid a conflict with the <a class="xref" href="hwdata.md" title="hwdata-0.408">hwdata-0.408</a> package:

```bash
sed -r '/INSTALL/{/PCI_IDS|update-pciids /d; s/update-pciids.8//}' \
    -i Makefile
```

Install <span class="application">PCI Utils</span> by running the following commands:

```bash
make PREFIX=/usr                \
     SHAREDIR=/usr/share/hwdata \
     SHARED=yes
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make PREFIX=/usr                \
     SHAREDIR=/usr/share/hwdata \
     SHARED=yes                 \
     install install-lib        &&

chmod -v 755 /usr/lib/libpci.so
```

Next, install the <a class="xref" href="hwdata.md" title="hwdata-0.408">hwdata-0.408</a> package for the <code class="filename">pci.ids</code> file.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`SHARED=yes`*: This parameter enables building of the shared library instead of the static one.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">lspci, pcilmr, and setpci</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libpci.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/pci</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------- -------------------------------------------------------------------------------------------------------------
  <a id="lspci"></a><span class="command"><span class="term"><strong>lspci</strong></span></span>     is a utility for displaying information about all PCI buses in the system and all devices connected to them
  <a id="pcilmr"></a><span class="command"><span class="term"><strong>pcilmr</strong></span></span>   is a utility for managing PCIe links
  <a id="setpci"></a><span class="command"><span class="term"><strong>setpci</strong></span></span>   is a utility for querying and configuring PCI devices
  <a id="libpci"></a><span class="term"><code class="filename">libpci.so</code></span>   is a library that allows applications to access the PCI subsystem
  -------------------------------------------- -------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](lm-sensors.md "lm-sensors-3-6-2")

    lm-sensors-3-6-2

-   [Next](sg3_utils.md "sg3_utils-1.48")

    sg3_utils-1.48

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
