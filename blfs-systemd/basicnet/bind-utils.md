<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](avahi.md "Avahi-0.8")

    Avahi-0.8

-   [Next](networkmanager.md "NetworkManager-1.56.1")

    NetworkManager-1.56.1

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# BIND Utilities-9.20.20 {#bind-utilities-9.20.20}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to BIND Utilities {#introduction-to-bind-utilities}

<span class="application">BIND Utilities</span> is not a separate package, it is a collection of the client side programs that are included with <a class="xref" href="../server/bind.md" title="BIND-9.20.20">BIND-9.20.20</a>. The <span class="application">BIND</span> package includes the client side programs <span class="command"><strong>nslookup</strong></span>, <span class="command"><strong>dig</strong></span> and <span class="command"><strong>host</strong></span>. If you install <span class="application">BIND</span> server, these programs will be installed automatically. This section is for those users who don't need the complete <span class="application">BIND</span> server, but need these client side applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftp.isc.org/isc/bind9/9.20.20/bind-9.20.20.tar.xz">https://ftp.isc.org/isc/bind9/9.20.20/bind-9.20.20.tar.xz</a>

-   Download MD5 sum: f27aa3bf9eac4e2b805b3d1f4aecef90

-   Download size: 5.5 MB

-   Estimated disk space required: 118 MB

-   Estimated build time: 0.3 SBU (using parallelism=4)
</div>

### BIND Utilities Dependencies

#### Required

<a class="xref" href="../general/liburcu.md" title="liburcu-0.15.6">liburcu-0.15.6</a> and <a class="xref" href="../general/libuv.md" title="libuv-1.52.1">libuv-1.52.1</a>

#### Recommended

<a class="xref" href="../general/json-c.md" title="JSON-C-0.18">JSON-C-0.18</a> and <a class="xref" href="nghttp2.md" title="nghttp2-1.69.0">nghttp2-1.69.0</a>

#### Optional

<a class="xref" href="../postlfs/libcap.md" title="libcap-2.78 with PAM">libcap-2.78 with PAM</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, and <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>
</div>

<div class="installation" lang="en">
## Installation of BIND Utilities {#installation-of-bind-utilities}

Install <span class="application">BIND Utilities</span> by running the following commands:

```bash
./configure --prefix=/usr --sysconfdir=/etc &&
make -C lib/isc      &&
make -C lib/dns      &&
make -C lib/ns       &&
make -C lib/isccfg   &&
make -C lib/isccc    &&
make -C bin/dig      &&
make -C bin/nsupdate &&
make -C bin/rndc     &&
make -C doc
```

This portion of the package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make -C lib/isc      install &&
make -C lib/dns      install &&
make -C lib/ns       install &&
make -C lib/isccfg   install &&
make -C lib/isccc    install &&
make -C bin/dig      install &&
make -C bin/nsupdate install &&
make -C bin/rndc     install &&
cp -v doc/man/{dig.1,host.1,nslookup.1,nsupdate.1} /usr/share/man/man1 &&
cp -v doc/man/rndc.8 /usr/share/man/man8
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">--sysconfdir=/etc</code>: Use this option to ensure installed packages look in <code class="filename">/etc</code> for configuration files.

<code class="option">--disable-doh</code>: Use this option if you have not installed <a class="xref" href="nghttp2.md" title="nghttp2-1.69.0">nghttp2-1.69.0</a> and you don't need DNS over HTTPS support.

<span class="command"><strong>make -C lib/...</strong></span>: These commands build the libraries that are needed for the client programs.

<span class="command"><strong>make -C bin/...</strong></span>: This command builds the client programs.

<span class="command"><strong>make -C doc</strong></span>: This command builds the manual pages if the optional Python module <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> is installed.

Use <span class="command"><strong>cp -v doc/man/... /usr/share/man/man...</strong></span> to install the manual pages if they have been built.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">dig, host, nslookup, nsupdate and rndc</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

### Short Descriptions

See the program descriptions in the <a class="xref" href="../server/bind.md" title="BIND-9.20.20">BIND-9.20.20</a> section.
</div>
</div>

<div class="navfooter">
-   [Prev](avahi.md "Avahi-0.8")

    Avahi-0.8

-   [Next](networkmanager.md "NetworkManager-1.56.1")

    NetworkManager-1.56.1

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
