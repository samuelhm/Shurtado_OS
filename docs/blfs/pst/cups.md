<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](printing.md "Printing")

    Printing

-   [Next](cups-browsed.md "cups-browsed-2.1.1")

    cups-browsed-2.1.1

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Cups-2.4.19 {#cups-2.4.19}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Cups {#introduction-to-cups}

The Common Unix Printing System (CUPS) is a print spooler and associated utilities. It is based on the "Internet Printing Protocol" and provides printing services to most PostScript and raster printers.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/OpenPrinting/cups/releases/download/v2.4.19/cups-2.4.19-source.tar.gz">https://github.com/OpenPrinting/cups/releases/download/v2.4.19/cups-2.4.19-source.tar.gz</a>

-   Download MD5 sum: 06b7a3921812988cdb3198ff74ae381d

-   Download size: 7.6 MB

-   Estimated disk space required: 134 MB (with tests)

-   Estimated build time: 0.4 SBU (Add 1.4 SBU for tests)
</div>

### Cups Dependencies

#### Required

<a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>

#### Recommended

<a class="xref" href="../general/colord.md" title="Colord-1.4.8">colord-1.4.8</a>, <a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>, <a class="xref" href="../postlfs/linux-pam.md" title="Linux-PAM-1.7.2">Linux-PAM-1.7.2</a>, and <a class="xref" href="../xsoft/xdg-utils.md" title="xdg-utils-1.2.1">xdg-utils-1.2.1</a>

#### Optional

<a class="xref" href="../basicnet/avahi.md" title="Avahi-0.8">Avahi-0.8</a>, <a class="xref" href="../general/libpaper.md" title="libpaper-2.2.8">libpaper-2.2.8</a>, <a class="xref" href="../general/php.md" title="PHP-8.5.6">PHP-8.5.6</a>, and <a class="ulink" href="https://www.python.org/downloads/release/python-2718/">Python2</a>

#### Required (Postinstall)

<a class="xref" href="cups-filters.md" title="cups-filters-2.0.1">cups-filters-2.0.1</a>

#### Optional (Postinstall)

<a class="xref" href="gutenprint.md" title="Gutenprint-5.3.5">Gutenprint-5.3.5</a> and <a class="ulink" href="https://developers.hp.com/hp-linux-imaging-and-printing">hplip</a> (HP printers)
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

There used to be a conflict between the <span class="application">Cups</span> <span class="application">libusb</span> backend and the usblp kernel driver. This is no longer the case and cups will work with both of these enabled.
</div>

If you want to use the kernel usblp driver (for example, if you wish to use <span class="application">escputil</span> from <a class="xref" href="gutenprint.md" title="Gutenprint-5.3.5">Gutenprint-5.3.5</a>) enable the following options in your kernel configuration and recompile the kernel:

```console
Device Drivers --->
  [*] USB support --->                                             [USB_SUPPORT]
    <*/M> USB Printer support                                      [USB_PRINTER]
```

If you have a parallel printer, enable the following options in your kernel configuration and recompile the kernel:

```console
Device Drivers --->
  <*/M> Parallel port support --->                                     [PARPORT]
    <*/M> PC-style hardware                                         [PARPORT_PC]
  Character devices --->
    <*/M> Parallel printer support                                     [PRINTER]
```
</div>

<div class="installation" lang="en">
## Installation of Cups {#installation-of-cups}

You will need to add an <code class="systemitem">lp</code> user, as <span class="application">Cups</span> will create some files owned by this user. (The <code class="systemitem">lp</code> user is the default used by <span class="application">Cups</span>, but may be changed to a different user by passing a parameter to the <span class="command"><strong>configure</strong></span> script.) Use the following command as the <code class="systemitem">root</code> user:

```bash
useradd -c "Print Service User" -d /var/spool/cups -g lp -s /bin/false -u 9 lp
```

You will also need a dedicated group that will contain users allowed to do <span class="application">Cups</span> administrative tasks. Add the group by running the following command as the <code class="systemitem">root</code> user:

```bash
groupadd -g 19 lpadmin
```

If you want to add a user to the <span class="application">Cups</span> administrative group, run the following command as the <code class="systemitem">root</code> user:

```bash
usermod -a -G lpadmin <username>
```

If you didn't install <a class="xref" href="../xsoft/xdg-utils.md" title="xdg-utils-1.2.1">xdg-utils-1.2.1</a>, use the following <span class="command"><strong>sed</strong></span> to change the default browser that will be used to access the <span class="application">Cups</span> web interface:

```bash
sed -i 's#@CUPS_HTMLVIEW@#firefox#' desktop/cups.desktop.in
```

Replace <span class="command"><strong>firefox</strong></span> with the web browser of your choice.

Fix a runtime issue caused by corruption of a previous pointer when using IPP:

```bash
sed -i '/& ipp->prev)/s/prev/& \&\& ipp->prev->next == *attr/' cups/ipp.c
```

Build <span class="application">Cups</span> by running the following commands:

```bash
./configure --libdir=/usr/lib            \
            --with-rundir=/run/cups      \
            --with-system-groups=lpadmin \
            --with-docdir=/usr/share/cups/doc-2.4.19 &&
make
```

To test the results, issue: <span class="command"><strong>LC_ALL=C make -k check</strong></span>. An already active graphical session with bus address is necessary to run the tests. Make sure that there is no other instance of <span class="application">Cups</span> running, otherwise at least 4 tests will fail with "address in use".

Now, as the <code class="systemitem">root</code> user:

```bash
make install &&
ln -svnf ../cups/doc-2.4.19 /usr/share/doc/cups-2.4.19
```

Create a basic <span class="application">Cups</span> client configuration file by running the following command as the <code class="systemitem">root</code> user:

```bash
echo "ServerName /run/cups/cups.sock" > /etc/cups/client.conf
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the <code class="filename">/usr/share/icons/hicolor</code> hierarchy and you can improve system performance and memory usage by updating <code class="filename">/usr/share/icons/hicolor/index.theme</code>. To perform the update you must have <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> installed and issue the following command as the <code class="systemitem">root</code> user:

```bash
gtk-update-icon-cache -qtf /usr/share/icons/hicolor
```
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--with-rundir=/run/cups`*: This switch prevents the package from referring to the deprecated <code class="filename">/var/run</code> directory.

*`--with-system-groups=lpadmin`*: This switch ensures that only <code class="systemitem">lpadmin</code> will be used as the <span class="application">Cups</span> administrative group.

<code class="option">--disable-libusb</code>: Use this switch if you have installed <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>, but wish to use the kernel usblp driver.

<code class="option">--enable-libpaper</code>: Use this switch if you have installed <span class="application">libpaper</span> and wish to use it with <span class="application">Cups</span>.
</div>

<div class="configuration" lang="en">
## Configuring Cups {#configuring-cups}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/cups/*</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

Normally, printers are set up via a web browser. The <span class="application">Cups</span> server will normally connect via the url http://localhost:631. From there printers, print jobs, and the server configuration can be set up and managed. Remote system administration can also be set up. Configuration can also be done from the command line via the <span class="command"><strong>lpadmin</strong></span>, <span class="command"><strong>lpoptions</strong></span>, and <span class="command"><strong>lpstat</strong></span> commands.

Configuration of <span class="application">Cups</span> is dependent on the type of printer and can be complex. Generally, PostScript printers are easier. For detailed instructions on configuration and use of <span class="application">Cups</span>, see <a class="ulink" href="https://www.cups.org/documentation.md">https://www.cups.org/documentation.html</a>.

For non-PostScript printers to print with <span class="application">Cups</span>, you need to install <a class="xref" href="gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a> to convert PostScript to raster images and a driver (e.g. from <a class="xref" href="gutenprint.md" title="Gutenprint-5.3.5">Gutenprint-5.3.5</a>) to convert the resulting raster images to a form that the printer understands. <a class="ulink" href="https://wiki.linuxfoundation.org/openprinting/database/foomatic">Foomatic</a> drivers use <a class="xref" href="gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a> to convert PostScript to a printable form directly, but this is considered suboptimal by <span class="application">Cups</span> developers.
</div>

<div class="sect3" lang="en">
### Linux PAM Configuration {#linux-pam-configuration}

If <span class="application">CUPS</span> has been built with <span class="application">Linux PAM</span> support, you need to create a <span class="application">PAM</span> configuration file to get it working correctly with BLFS.

Issue the following command as the <code class="systemitem">root</code> user to create the configuration file for <span class="application">Linux PAM</span>:

```bash
cat > /etc/pam.d/cups << "EOF"
# Begin /etc/pam.d/cups

auth    include system-auth
account include system-account
session include system-session

# End /etc/pam.d/cups
EOF
```
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the <span class="command"><strong>cupsd</strong></span> daemon when something tries to access it, enable the previously installed systemd units by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable cups
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">cancel, cupsaccept, cups-config, cupsctl, cupsd, cupsdisable, cupsenable, cupsfilter, cupsreject, cupstestppd, ippeveprinter, ippfind, ipptool, lp, lpadmin, lpc, lpinfo, lpmove, lpoptions, lpq, lpr, lprm, lpstat, ppdc, ppdhtml, ppdi, ppdmerge, and ppdpo</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libcupsimage.so and libcups.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/cups, /usr/{include,lib,share}/cups, /usr/share/doc/cups-2.4.19, /run/cups, and /var/{cache,log,spool}/cups</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="cancel-cups"></a><span class="command"><span class="term"><strong>cancel</strong></span></span>             cancels existing print jobs from the print queues
  <a id="cupsaccept"></a><span class="command"><span class="term"><strong>cupsaccept</strong></span></span>          accepts jobs sent to a destination
  <a id="cups-config-prog"></a><span class="command"><span class="term"><strong>cups-config</strong></span></span>   is a <span class="application">Cups</span> program configuration utility
  <a id="cupsctl"></a><span class="command"><span class="term"><strong>cupsctl</strong></span></span>                updates or queries the cupsd.conf file for a server
  <a id="cupsd"></a><span class="command"><span class="term"><strong>cupsd</strong></span></span>                    is the scheduler for the Common Unix Printing System
  <a id="cupsdisable"></a><span class="command"><span class="term"><strong>cupsdisable</strong></span></span>        stops printers and classes
  <a id="cupsenable"></a><span class="command"><span class="term"><strong>cupsenable</strong></span></span>          starts printers and classes
  <a id="cupsfilter"></a><span class="command"><span class="term"><strong>cupsfilter</strong></span></span>          is a front-end to the <span class="application">Cups</span> filter subsystem which allows you to convert a file to a specific format
  <a id="cupsreject"></a><span class="command"><span class="term"><strong>cupsreject</strong></span></span>          rejects jobs sent to a destination
  <a id="cupstestppd"></a><span class="command"><span class="term"><strong>cupstestppd</strong></span></span>        tests the conformance of PPD files
  <a id="ippeveprinter"></a><span class="command"><span class="term"><strong>ippeveprinter</strong></span></span>    is an IPP Everywhere printer for CUPS
  <a id="ippfind"></a><span class="command"><span class="term"><strong>ippfind</strong></span></span>                finds Internet Printing Protocol printers
  <a id="ipptool"></a><span class="command"><span class="term"><strong>ipptool</strong></span></span>                sends IPP requests to the specified URI and tests and/or displays the results
  <a id="lp-cups"></a><span class="command"><span class="term"><strong>lp</strong></span></span>                     submits files for printing or alters a pending job
  <a id="lpadmin"></a><span class="command"><span class="term"><strong>lpadmin</strong></span></span>                configures printer and class queues provided by <span class="application">Cups</span>
  <a id="lpc-cups"></a><span class="command"><span class="term"><strong>lpc</strong></span></span>                   provides limited control over printer and class queues provided by <span class="application">Cups</span>
  <a id="lpinfo"></a><span class="command"><span class="term"><strong>lpinfo</strong></span></span>                  lists the available devices or drivers known to the <span class="application">Cups</span> server
  <a id="lpmove"></a><span class="command"><span class="term"><strong>lpmove</strong></span></span>                  moves the specified job to a new destination
  <a id="lpoptions"></a><span class="command"><span class="term"><strong>lpoptions</strong></span></span>            displays or sets printer options and defaults
  <a id="lpq-cups"></a><span class="command"><span class="term"><strong>lpq</strong></span></span>                   shows the current print queue status on the named printer
  <a id="lpr-cups"></a><span class="command"><span class="term"><strong>lpr</strong></span></span>                   submits files for printing
  <a id="lprm-cups"></a><span class="command"><span class="term"><strong>lprm</strong></span></span>                 cancels print jobs that have been queued for printing
  <a id="lpstat-cups"></a><span class="command"><span class="term"><strong>lpstat</strong></span></span>             displays status information about the current classes, jobs, and printers
  <a id="ppdc"></a><span class="command"><span class="term"><strong>ppdc</strong></span></span>                      compiles PPDC source files into one or more PPD files
  <a id="ppdhtml"></a><span class="command"><span class="term"><strong>ppdhtml</strong></span></span>                reads a driver information file and produces a HTML summary page that lists all of the drivers in a file and the supported options
  <a id="ppdi"></a><span class="command"><span class="term"><strong>ppdi</strong></span></span>                      imports one or more PPD files into a PPD compiler source file
  <a id="ppdmerge"></a><span class="command"><span class="term"><strong>ppdmerge</strong></span></span>              merges two or more PPD files into a single, multi-language PPD file
  <a id="ppdpo"></a><span class="command"><span class="term"><strong>ppdpo</strong></span></span>                    extracts UI strings from PPDC source files and updates either a GNU gettext or Mac OS X strings format message catalog source file for translation
  <a id="libcups"></a><span class="term"><code class="filename">libcups.so</code></span>                contains the <span class="application">Cups</span> API functions
  ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](printing.md "Printing")

    Printing

-   [Next](cups-browsed.md "cups-browsed-2.1.1")

    cups-browsed-2.1.1

-   [Up](printing.md "Chapter 46. Printing")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
