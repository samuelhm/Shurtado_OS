<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libnsl.md "libnsl-2.0.1")

    libnsl-2.0.1

-   [Next](libpsl.md "libpsl-0.21.5")

    libpsl-0.21.5

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libpcap-1.10.6 {#libpcap-1.10.6}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libpcap {#introduction-to-libpcap}

<span class="application">libpcap</span> provides functions for user-level packet capture, used in low-level network monitoring.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.tcpdump.org/release/libpcap-1.10.6.tar.gz">https://www.tcpdump.org/release/libpcap-1.10.6.tar.gz</a>

-   Download MD5 sum: f49b1c1877dcbb3b7f5147429aa047f9

-   Download size: 968 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libpcap Dependencies

#### Optional

<a class="xref" href="../general/bluez.md" title="BlueZ-5.86">BlueZ-5.86</a>, <a class="xref" href="libnl.md" title="libnl-3.12.0">libnl-3.12.0</a>, <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>, Software distribution for the <a class="ulink" href="https://www.endace.com/">DAG</a>, and <a class="ulink" href="https://www.intel.com/">Septel</a> range of passive network monitoring cards.
</div>

<div class="installation" lang="en">
## Installation of libpcap {#installation-of-libpcap}

Install <span class="application">libpcap</span> by running the following commands:

```bash
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

If you want to disable installing the static library, use this sed:

```bash
sed -i '/INSTALL_DATA.*libpcap.a\|RANLIB.*libpcap.a/ s/^/#/' Makefile
```

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
**Installed Program:** <span class="segbody">pcap-config</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpcap.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/pcap</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ----------------------------------------------------------------
  <a id="pcap-config"></a><span class="command"><span class="term"><strong>pcap-config</strong></span></span>   provides configuration information for <span class="application">libpcap</span>
  <a id="libpcap-lib"></a><span class="term"><code class="filename">libpcap.{a,so}</code></span>   are libraries used for user-level packet capture
  ------------------------------------------------------ ----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libnsl.md "libnsl-2.0.1")

    libnsl-2.0.1

-   [Next](libpsl.md "libpsl-0.21.5")

    libpsl-0.21.5

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
