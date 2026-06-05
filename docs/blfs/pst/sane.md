<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 47. Scanning

-   [Prev](scanning.md "Scanning")

    Scanning

-   [Next](simple-scan.md "Simple-scan-50.0")

    Simple-scan-50.0

-   [Up](scanning.md "Chapter 47. Scanning")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# SANE-1.4.0 {#sane-1.4.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to SANE {#introduction-to-sane}

<span class="application">SANE</span> is short for Scanner Access Now Easy. Scanner access, however, is far from easy, since every vendor has their own protocols. The only known protocol that should bring some unity into this chaos is the TWAIN interface, but this is too imprecise to allow a stable scanning framework. Therefore, <span class="application">SANE</span> comes with its own protocol, and the vendor drivers can't be used.

<span class="application">SANE</span> is split into back ends and front ends. The back ends are drivers for the supported scanners and cameras. The front ends are user interfaces to access the backends.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Back Ends Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/sane/sane-backends-1.4.0.tar.gz">https://anduin.linuxfromscratch.org/BLFS/sane/sane-backends-1.4.0.tar.gz</a>

-   Download MD5 sum: fddb8b164ff1b1ffb576c9ba4173610d

-   Download size: 7.2 MB

-   Estimated disk space required: 214 MB (Add 58 MB for tests)

-   Estimated build time: 0.4 SBU (Using parallelism=4; add 0.1 SBU for tests)
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The upstream location for this file is at <a class="ulink" href="https://gitlab.com/sane-project">https://gitlab.com/sane-project</a> but the file URL uses an embedded md5sum. For convenience, the package has been copied to the location above.
</div>

### SANE Dependencies

#### Optional

<a class="xref" href="../basicnet/avahi.md" title="Avahi-0.8">Avahi-0.8</a>, <a class="xref" href="cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>, <a class="xref" href="../multimedia/v4l-utils.md" title="v4l-utils-1.32.0">v4l-utils-1.32.0</a>, <a class="ulink" href="http://www.net-snmp.org/">Net-SNMP</a>, <a class="ulink" href="http://cyberelk.net/tim/libieee1284/">libieee1284</a>, <a class="ulink" href="http://www.gphoto.org/">libgphoto2</a>, and <a class="xref" href="texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="tl-installer.md" title="install-tl-unx">install-tl-unx</a>)
</div>

<div class="kernel" lang="en">
## Kernel Configuration, Drivers and Additional Packages {#kernel-configuration-drivers-and-additional-packages}

To access your scanner, you will probably need the related kernel drivers and/or additional support packages. A SCSI scanner will need SCSI drivers, a parallel port scanner needs parallel port support (you should use enhanced EPP modes) and perhaps <a class="ulink" href="http://cyberelk.net/tim/libieee1284/">libieee1284</a>, and a USB scanner will need the <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a> package. For HP devices, you may need <a class="ulink" href="https://sourceforge.net/projects/hplip/files/hplip/">hplip</a>. Ensure you have the necessary drivers properly configured to access the devices.
</div>

<div class="installation" lang="en">
## Installation of SANE {#installation-of-sane}

<div class="sect3" lang="en">
### Installation of SANE Backends {#installation-of-sane-backends}

The <span class="application">SANE</span> daemon should run with its own group. Create this group by issuing the following command as the <code class="systemitem">root</code> user:

```bash
groupadd -g 70 scanner
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<span class="command"><strong>configure</strong></span> assumes that the user building <span class="application">SANE</span> Backends is a member of the <code class="systemitem">scanner</code> group for testing the existence of this group. As a result, the user building the package needs to be added to the <code class="systemitem">scanner</code> group. Add the user to the <code class="systemitem">scanner</code> group by issuing the following command as the <code class="systemitem">root</code> user:

```bash
usermod -G scanner -a username
```

After adding the <code class="systemitem">scanner</code> group as above, you will need to log out and back in to activate it.
</div>

For a USB scanner, if you are linking to <a class="xref" href="../general/libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>, include the configure switch --enable-libusb_1_0. Install <span class="application">SANE</span> Backends by running the following commands:

```bash
sg scanner -c "                                 \
PYTHON=python3 ./configure --prefix=/usr        \
                           --sysconfdir=/etc    \
                           --localstatedir=/var \
                           --with-lockdir=/run/lock \
                           --docdir=/usr/share/doc/sane-backends-1.4.0" &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install                                         &&
install -m 644 -v tools/udev/libsane.rules           \
                  /etc/udev/rules.d/65-scanner.rules &&
mkdir -p          /run/lock/sane &&
chgrp -v scanner  /run/lock/sane
```

With the scanner on, run <span class="command"><strong>scanimage -L</strong></span> and the name and location of the device should appear. Of course, you need the device drivers configured, in order to run this test.
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sg scanner -c "..."</strong></span>: runs the command between double quotes with principal group <code class="systemitem">scanner</code>. This may be needed if the user has been newly added to group scanner, and has not logged out and in.

*`PYTHON=python3`*: This switch forces the build system to use Python 3 instead of Python 2.

*`--sysconfdir=/etc`*: This switch installs the configuration files in <code class="filename">/etc/sane.d</code> instead of <code class="filename">/usr/etc/sane.d</code>.
</div>

<div class="configuration" lang="en">
## Configuring SANE {#configuring-sane}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/sane.d/*.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<div class="sect4">
<div class="titlepage">


##### Backend Configuration {#backend-configuration}


</div>

The backend configuration files are located in <code class="filename">/etc/sane.d</code>. Information for configuring the various backends can be found by using the man(5) page for the desired backend. Run <span class="command"><strong>man sane-<em>`<backend>`</strong></em></span>, substituting the desired backend.

Add any users that will use a scanner to the <code class="systemitem">scanner</code> group.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you plan on using the scanner client <a class="xref" href="simple-scan.md" title="Simple-scan-50.0">Simple-scan-50.0</a> to access a networked scanner such as an "All-in-One" printer/scanner, there may be no configuration necessary. Try that first.
</div>

If you want to access a network scanner, include two lines in <code class="filename">net.conf</code>, as the <code class="systemitem">root</code> user (make sure to replace \<server_ip\> by the actual value):

```bash
cat >> /etc/sane.d/net.conf << "EOF"
connect_timeout = 60
<server_ip>
EOF
```

On the server side, include the client ip in the access list of <code class="filename">/etc/sane.d/saned.conf</code>, restart the <span class="command"><strong>saned</strong></span> daemon, and make sure the firewall, if any, is open to the client.
</div>

<div class="sect4">
<div class="titlepage">


##### General Information {#general-information}


</div>

For general information about configuring and using <span class="application">SANE</span>, see <span class="command"><strong>man sane</strong></span>. For information about USB scanning devices, run <span class="command"><strong>man sane-usb</strong></span>. For information about SCSI devices, run <span class="command"><strong>man sane-scsi</strong></span>.
</div>

<div class="sect4">
<div class="titlepage">


##### Configuration and setup of the 'saned' daemon {#configuration-and-setup-of-the-saned-daemon}


</div>

The <span class="command"><strong>saned</strong></span> daemon is not meant to be used for untrusted clients. You should provide <a class="xref" href="../postlfs/firewall.md" title="Setting Up a Network Firewall">Firewalling</a> protection to ensure only trusted clients access the daemon. Due to the complex security requirements to ensure only trusted clients access the daemon, BLFS does not provide instructions to configure the <span class="command"><strong>saned</strong></span> daemon. Some good (but outdated) information for setting up and securing the <span class="command"><strong>saned</strong></span> daemon can be found at <a class="ulink" href="https://penguin-breeder.org/sane/saned/">https://penguin-breeder.org/sane/saned/</a>.
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gamma4scanimage, sane-config, saned, sane-find-scanner, scanimage, and umax_pp</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libsane.so and numerous scanner backend modules</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/sane.d, /usr/{include,lib,share}/sane, and /usr/share/doc/sane-1.4.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gamma4scanimage"></a><span class="command"><span class="term"><strong>gamma4scanimage</strong></span></span>       creates a gamma table in the format expected by <span class="command"><strong>scanimage</strong></span>
  <a id="sane-config-prog"></a><span class="command"><span class="term"><strong>sane-config</strong></span></span>          is a tool used to determine the compiler and linker flags that should be used to compile and link <span class="application">SANE</span>
  <a id="saned"></a><span class="command"><span class="term"><strong>saned</strong></span></span>                           is the <span class="application">SANE</span> daemon that allows remote clients to access image acquisition devices available on the local host
  <a id="sane-find-scanner"></a><span class="command"><span class="term"><strong>sane-find-scanner</strong></span></span>   is a command-line tool to find SCSI and USB scanners and determine their device files. Its primary purpose is to make sure that scanners can be detected by <span class="application">SANE</span> backends
  <a id="scanimage"></a><span class="command"><span class="term"><strong>scanimage</strong></span></span>                   is a command line interface for scanning from image acquisition devices such as flatbed scanners or cameras. It is also used to list the available backend devices
  <a id="umax_pp"></a><span class="command"><span class="term"><strong>umax_pp</strong></span></span>                       is a tool used to read information from UMAX parallel port scanners. It can also be used for performing diagnostics on these scanners
  <a id="libsane"></a><span class="term"><code class="filename">libsane.so</code></span>                       is the application programming interface that is used to communicate between frontends and backends
  <a id="libsane-module"></a><span class="term"><code class="filename">libsane-*.so</code></span>              modules are backend scanning library plugins used to interface with scanning devices. See <a class="ulink" href="http://www.sane-project.org/sane-supported-devices.md">http://www.sane-project.org/sane-supported-devices.html</a> for a list of supported backends
  ------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](scanning.md "Scanning")

    Scanning

-   [Next](simple-scan.md "Simple-scan-50.0")

    Simple-scan-50.0

-   [Up](scanning.md "Chapter 47. Scanning")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
