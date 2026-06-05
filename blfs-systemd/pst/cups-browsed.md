<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](cups.md "Cups-2.4.19")

    Cups-2.4.19

-   [Next](cups-filters.md "cups-filters-2.0.1")

    cups-filters-2.0.1

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# cups-browsed-2.1.1 {#cups-browsed-2.1.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to cups-browsed {#introduction-to-cups-browsed}

The <span class="application">cups-browsed</span> daemon is used to browse the network for remote CUPS queues and IPP network printers and automatically create local queues pointing to them.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/OpenPrinting/cups-browsed/releases/download/2.1.1/cups-browsed-2.1.1.tar.xz">https://github.com/OpenPrinting/cups-browsed/releases/download/2.1.1/cups-browsed-2.1.1.tar.xz</a>

-   Download MD5 sum: 293948973ebfc7ef4d5d8242d5733181

-   Download size: 412 KB

-   Estimated disk space required: 5.3 MB

-   Estimated build time: less than 0.1 SBU (Using parallelism=4)
</div>

### cups-browsed Dependencies

#### Required

<a class="xref" href="../basicnet/avahi.md" title="Avahi-0.8">Avahi-0.8</a>, <a class="xref" href="libcupsfilters.md" title="libcupsfilters-2.1.1">libcupsfilters-2.1.1</a> and <a class="xref" href="libppd.md" title="libppd-2.1.1">libppd-2.1.1</a>

#### Optional

<a class="xref" href="../server/openldap.md" title="OpenLDAP-2.6.13">OpenLDAP-2.6.13</a>
</div>

<div class="installation" lang="en">
## Installation of cups-browsed {#installation-of-cups-browsed}

Install <span class="application">cups-browsed</span> by running the following commands:

```bash
./configure --prefix=/usr                \
            --with-cups-rundir=/run/cups \
            --without-rcdir              \
            --disable-static             \
            --docdir=/usr/share/doc/cups-browsed-2.1.1 &&
make
```

This package does not come with a functional test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Install the systemd unit by running the following command as the <code class="systemitem">root</code> user:

```bash
install -v -m644 daemon/cups-browsed.service /lib/systemd/system/cups-browsed.service
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-cups-rundir=/run/cups`*: Defines the directory containing transient printing data. The default <code class="filename">/var/run/cups</code> is obsolete.

*`--without-rcdir`*: This switch disables installation of the bundled bootscript which is not compatible with BLFS.
</div>

<div class="configuration" lang="en">
## Configuring cups-browsed {#configuring-cups-browsed}

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the <span class="command"><strong>cups-browsed</strong></span> daemon at boot, enable the previously installed systemd unit by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable cups-browsed
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cups-browsed</span>
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

  ------------------------------------------------------------- ------------------------------------------------------------------------------------------
  <a id="cups-browsed-prog"></a><span class="command"><span class="term"><strong>cups-browsed</strong></span></span>   is a daemon for browsing the Bonjour and CUPS broadcasts of shared, remote CUPS printers
  ------------------------------------------------------------- ------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](cups.md "Cups-2.4.19")

    Cups-2.4.19

-   [Next](cups-filters.md "cups-filters-2.0.1")

    cups-filters-2.0.1

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
