<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](iw.md "iw-6.17")

    iw-6.17

-   [Next](wpa_supplicant.md "wpa_supplicant-2.11")

    wpa_supplicant-2.11

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Wireless Tools-29 {#wireless-tools-29}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Wireless Tools {#introduction-to-wireless-tools}

The Wireless Extension (WE) is a generic API in the Linux kernel allowing a driver to expose configuration and statistics specific to common Wireless LANs to userspace. A single set of tools can support all the variations of Wireless LANs, regardless of their type, as long as the driver supports Wireless Extensions. WE parameters may also be changed on the fly without restarting the driver (or Linux).

The <span class="application">Wireless Tools</span> (WT) package is a set of tools allowing manipulation of the Wireless Extensions. They use a textual interface to support the full Wireless Extension.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://hewlettpackard.github.io/wireless-tools/wireless_tools.29.tar.gz">https://hewlettpackard.github.io/wireless-tools/wireless_tools.29.tar.gz</a>

-   Download MD5 sum: e06c222e186f7cc013fd272d023710cb

-   Download size: 288 KB

-   Estimated disk space required: 2.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/wireless_tools-29-fix_iwlist_scanning-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/wireless_tools-29-fix_iwlist_scanning-1.patch</a>
</div>

### Wireless Tools Dependencies

#### Required (Runtime)

<a class="xref" href="wireless-kernel.md" title="Configuring the Linux Kernel for Wireless">Configuring the Linux Kernel for Wireless</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

To use <span class="application">Wireless Tools</span>, the kernel must have the appropriate drivers and other support available. Besides the configurations mentioned by <a class="xref" href="wireless-kernel.md" title="Configuring the Linux Kernel for Wireless">Configuring the Linux Kernel for Wireless</a>, it's also needed to enable the following options in the kernel configuration:

```console
[*] Networking support --->                                                [NET]
  [*] Wireless --->                                                   [WIRELESS]
    <*/M> cfg80211 - wireless configuration API                       [CFG80211]
    [*]     cfg80211 wireless extensions compatibility           [CFG80211_WEXT]
```
</div>

<div class="installation" lang="en">
## Installation of Wireless Tools {#installation-of-wireless-tools}

First, apply a patch that fixes a problem when numerous networks are available:

```bash
patch -Np1 -i ../wireless_tools-29-fix_iwlist_scanning-1.patch
```

To install <span class="application">Wireless Tools</span>, use the following commands:

```bash
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make PREFIX=/usr INSTALL_MAN=/usr/share/man install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>INSTALL_MAN=/usr/share/man</strong></span>: Install manual pages in <code class="filename">/usr/share/man</code> instead of <code class="filename">/usr/man</code>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">ifrename, iwconfig, iwevent, iwgetid, iwlist, iwpriv, and iwspy</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libiw.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------ ---------------------------------------------------------------------------------------------
  <a id="ifrename"></a><span class="command"><span class="term"><strong>ifrename</strong></span></span>   renames network interfaces based on various static criteria
  <a id="iwconfig"></a><span class="command"><span class="term"><strong>iwconfig</strong></span></span>   configures a wireless network interface
  <a id="iwevent"></a><span class="command"><span class="term"><strong>iwevent</strong></span></span>     displays wireless events generated by drivers and setting changes
  <a id="iwgetid"></a><span class="command"><span class="term"><strong>iwgetid</strong></span></span>     reports ESSID, NWID or AP/Cell Address of wireless networks
  <a id="iwlist"></a><span class="command"><span class="term"><strong>iwlist</strong></span></span>       gets detailed wireless information from a wireless interface
  <a id="iwpriv"></a><span class="command"><span class="term"><strong>iwpriv</strong></span></span>       configures optional (private) parameters of a wireless network interface
  <a id="iwspy"></a><span class="command"><span class="term"><strong>iwspy</strong></span></span>         gets wireless statistics from specific node
  <a id="libiw"></a><span class="term"><code class="filename">libiw.so</code></span>         contains functions required by the wireless programs and provides an API for other programs
  ------------------------------------------------ ---------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](iw.md "iw-6.17")

    iw-6.17

-   [Next](wpa_supplicant.md "wpa_supplicant-2.11")

    wpa_supplicant-2.11

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
