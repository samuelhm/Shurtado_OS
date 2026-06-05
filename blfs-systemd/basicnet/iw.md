<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](wireless-kernel.md "Configuring the Linux Kernel for Wireless")

    Configuring the Linux Kernel for Wireless

-   [Next](wireless_tools.md "Wireless Tools-29")

    Wireless Tools-29

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# iw-6.17 {#iw-6.17}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to iw {#introduction-to-iw}

<span class="application">iw</span> is a new nl80211 based CLI configuration utility for wireless devices. It supports all new drivers that have been added to the kernel recently. The old tool <span class="application">iwconfig</span>, which uses Wireless Extensions interface, is deprecated and it's strongly recommended to switch to <span class="application">iw</span> and nl80211.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.kernel.org/pub/software/network/iw/iw-6.17.tar.xz">https://www.kernel.org/pub/software/network/iw/iw-6.17.tar.xz</a>

-   Download MD5 sum: 7323e43843f30068ffb6079e15e8e11a

-   Download size: 160 KB

-   Estimated disk space required: 4.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

### iw Dependencies

#### Required

<a class="xref" href="libnl.md" title="libnl-3.12.0">libnl-3.12.0</a>

#### Required (Runtime)

<a class="xref" href="wireless-kernel.md" title="Configuring the Linux Kernel for Wireless">Configuring the Linux Kernel for Wireless</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

To use <span class="application">iw</span>, the kernel must have the appropriate drivers and other support available. Read <a class="xref" href="wireless-kernel.md" title="Configuring the Linux Kernel for Wireless">Configuring the Linux Kernel for Wireless</a> for details.
</div>

<div class="installation" lang="en">
## Installation of iw {#installation-of-iw}

To install <span class="application">iw</span>, use the following commands:

```bash
sed -i "/INSTALL.*gz/s/.gz//" Makefile &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed ...</strong></span>: Install uncompressed manual pages in accordance with other man pages.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">iw</span>
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

  ----------------------------------------- --------------------------------------------------------------
  <a id="iw-prog"></a><span class="command"><span class="term"><strong>iw</strong></span></span>   shows / manipulates wireless devices and their configuration
  ----------------------------------------- --------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](wireless-kernel.md "Configuring the Linux Kernel for Wireless")

    Configuring the Linux Kernel for Wireless

-   [Next](wireless_tools.md "Wireless Tools-29")

    Wireless Tools-29

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
