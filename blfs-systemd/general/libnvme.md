<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libmbim.md "libmbim-1.34.0")

    libmbim-1.34.0

-   [Next](libpaper.md "libpaper-2.2.8")

    libpaper-2.2.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libnvme-1.16.1 {#libnvme-1.16.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libnvme {#introduction-to-libnvme}

The <span class="application">libnvme</span> package is a library which provides type definitions for NVMe specification structures, enumerations, and bit fields, helper functions to construct, dispatch, and decode commands and payloads, and utilities to connect, scan, and manage NVMe devices on a Linux system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/linux-nvme/libnvme/archive/v1.16.1/libnvme-1.16.1.tar.gz">https://github.com/linux-nvme/libnvme/archive/v1.16.1/libnvme-1.16.1.tar.gz</a>

-   Download MD5 sum: 64207c770523f2817a6482d5103cf809

-   Download size: 820 KB

-   Estimated disk space required: 32 MB

-   Estimated build time: 0.1 SBU (including tests)
</div>

### libnvme Dependencies

#### Optional

<a class="xref" href="json-c.md" title="JSON-C-0.18">JSON-C-0.18</a>, <a class="xref" href="keyutils.md" title="keyutils-1.6.3">keyutils-1.6.3</a>, and <a class="xref" href="swig.md" title="SWIG-4.4.1">SWIG-4.4.1</a> (to generate the Python bindings)
</div>

<div class="installation" lang="en">
## Installation of libnvme {#installation-of-libnvme}

Install <span class="application">libnvme</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D libdbus=auto .. &&
ninja
```

To run the tests, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
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
**Installed Library:** <span class="segbody">libnvme.so and libnvme-mi.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/nvme and optionally /usr/lib/python3.14/site-packages/libnvme</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ------------------------------------------------------------------------
  <a id="libnvme-lib"></a><span class="term"><code class="filename">libnvme.so</code></span>   contains functions used to handle operations relating to NVMe devices.
  -------------------------------------------------- ------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libmbim.md "libmbim-1.34.0")

    libmbim-1.34.0

-   [Next](libpaper.md "libpaper-2.2.8")

    libpaper-2.2.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
