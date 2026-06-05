<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 20. Major Servers

-   [Prev](apache.md "Apache-2.4.67")

    Apache-2.4.67

-   [Next](kea.md "Kea 3.0.2 DHCP Server")

    Kea 3.0.2 DHCP Server

-   [Up](majorservers.md "Chapter 20. Major Servers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# BIND-9.20.20 {#bind-9.20.20}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to BIND {#introduction-to-bind}

The <span class="application">BIND</span> package provides a DNS server and client utilities. If you are only interested in the utilities, refer to the <a class="xref" href="../basicnet/bind-utils.md" title="BIND Utilities-9.20.20">BIND Utilities-9.20.20</a>.

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

-   Estimated disk space required: 163 MB (23 MB installed)

-   Estimated build time: 0.4 SBU (with parallelism=4; about 40 minutes somewhat processor independent, to run the complete test suite)
</div>

### BIND Dependencies

#### Required

<a class="xref" href="../general/liburcu.md" title="liburcu-0.15.6">liburcu-0.15.6</a> and <a class="xref" href="../general/libuv.md" title="libuv-1.52.1">libuv-1.52.1</a>

#### Recommended

<a class="xref" href="../general/json-c.md" title="JSON-C-0.18">JSON-C-0.18</a>, <a class="xref" href="../postlfs/libcap.md" title="libcap-2.78 with PAM">libcap-2.78 with PAM</a>, and <a class="xref" href="../basicnet/nghttp2.md" title="nghttp2-1.69.0">nghttp2-1.69.0</a>

#### Optional

<a class="xref" href="../basicnet/curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../general/libidn2.md" title="libidn2-2.3.8">libidn2-2.3.8</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="lmdb.md" title="lmdb-0.9.35">lmdb-0.9.35</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../general/python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> (required to build documentation), <a class="ulink" href="https://cmocka.org/">cmocka</a>, <a class="ulink" href="https://github.com/cjheath/geoip">geoip</a>, <a class="ulink" href="https://github.com/jemalloc/jemalloc">jemalloc</a>, <a class="ulink" href="https://w3m.sourceforge.net/">w3m</a>

#### Optional (to run the test suite)

<a class="xref" href="../general/perl-modules.md#perl-net-dns" title="Net::DNS-1.54">Net-DNS-1.54</a>, <a class="ulink" href="https://www.dnspython.org/">dnspython</a>, and <a class="ulink" href="https://hypothesis.readthedocs.io/en/latest/">hypothesis</a>

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/bind">https://wiki.linuxfromscratch.org/blfs/wiki/bind</a>
</div>

<div class="installation" lang="en">
## Installation of BIND {#installation-of-bind}

Install <span class="application">BIND</span> by running the following commands:

```bash
./configure --prefix=/usr           \
            --sysconfdir=/etc       \
            --localstatedir=/var    \
            --mandir=/usr/share/man \
            --disable-static        &&
make
```

Issue the following commands to run the complete suite of tests. First, as the <code class="systemitem">root</code> user, set up some test interfaces:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If IPv6 is not enabled in the kernel, there will be several error messages: "RTNETLINK answers: Operation not permitted". These messages do not affect the tests.
</div>

```bash
bin/tests/system/ifconfig.sh up
```

The test suite may indicate some skipped tests depending on what configuration options are used. Some tests are marked <span class="quote">“<span class="quote">UNTESTED</span>”</span> or do even fail if <a class="xref" href="../general/perl-modules.md#perl-net-dns" title="Net::DNS-1.54">Net-DNS-1.54</a> is not installed. One test, <code class="filename">dnssec</code>, is known to fail. The tests require the <a class="ulink" href="https://hypothesis.readthedocs.org/">hypothesis</a> and <a class="ulink" href="https://www.dnspython.org/">dnspython</a> Python modules, which are not in BLFS. To work around this, the instructions below create a Python virtual environment and then install the modules in there prior to running the tests. To run the tests, as an unprivileged user, execute:

```bash
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install dnspython hypothesis              &&
make -k check                                  &&
deactivate
```

Again as <code class="systemitem">root</code>, clean up the test interfaces:

```bash
bin/tests/system/ifconfig.sh down
```

Finally, install the package as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--sysconfdir=/etc`*: This parameter forces <span class="application">BIND</span> to look for configuration files in <code class="filename">/etc</code> instead of <code class="filename">/usr/etc</code>.

<code class="option">--with-libidn2</code>: This parameter enables the IDNA2008 (Internationalized Domain Names in Applications) support.

<code class="option">--enable-fetchlimit</code>: Use this option if you want to be able to limit the rate of recursive client queries. This may be useful on servers which receive a large number of queries.

<code class="option">--disable-doh</code>: Use this option if you do not have <a class="xref" href="../basicnet/nghttp2.md" title="nghttp2-1.69.0">nghttp2-1.69.0</a> installed and do not need support for DNS over HTTPS.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--system-site-packages`*: Allow the <span class="application">Python3</span> venv module to access the system-installed <code class="filename">/usr/lib/python3.14/site-packages</code> directory.
</div>

<div class="configuration" lang="en">
## Configuring BIND {#configuring-bind}

<div class="sect3" lang="en">
### Config files {#config-files}

<code class="filename">named.conf</code>, <code class="filename">root.hints</code>, <code class="filename">127.0.0</code>, <code class="filename">rndc.conf</code>, and <code class="filename">resolv.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

<span class="application">BIND</span> will be configured to run in a <span class="command"><strong>chroot</strong></span> jail as an unprivileged user (<code class="systemitem">named</code>). This configuration is more secure in that a DNS compromise can only affect a few files in the <code class="systemitem">named</code> user's <code class="envar">HOME</code> directory.

Create the unprivileged user and group <code class="systemitem">named</code>:

```bash
groupadd -g 20 named &&
useradd -c "BIND Owner" -g named -s /bin/false -u 20 named &&
install -d -m770 -o named -g named /srv/named
```

Set up some files, directories and devices needed by <span class="application">BIND</span>:

```bash
mkdir -p /srv/named &&
cd       /srv/named &&
mkdir -p dev etc/named/{slave,pz} usr/lib/engines var/run/named &&
mknod /srv/named/dev/null c 1 3 &&
mknod /srv/named/dev/urandom c 1 9 &&
chmod 666 /srv/named/dev/{null,urandom} &&
cp /etc/localtime etc
```

The <code class="filename">rndc.conf</code> file contains information for controlling <span class="command"><strong>named</strong></span> operations with the <span class="command"><strong>rndc</strong></span> utility. Generate a key for use in the <code class="filename">named.conf</code> and <code class="filename">rndc.conf</code> with the <span class="command"><strong>rndc-confgen</strong></span> command:

```bash
rndc-confgen -a -b 512 -t /srv/named
```

Create the <code class="filename">named.conf</code> file from which <span class="command"><strong>named</strong></span> will read the location of zone files, root name servers and secure DNS keys:

```bash
cat >> /srv/named/etc/named.conf << "EOF"
options {
    directory "/etc/named";
    pid-file "/var/run/named.pid";
    statistics-file "/var/run/named.stats";

};
zone "." {
    type hint;
    file "root.hints";
};
zone "0.0.127.in-addr.arpa" {
    type master;
    file "pz/127.0.0";
};

// Bind 9 now logs by default through syslog (except debug).
// These are the default logging rules.

logging {
    category default { default_syslog; default_debug; };
    category unmatched { null; };

  channel default_syslog {
      syslog daemon;                      // send to syslog's daemon
                                          // facility
      severity info;                      // only send priority info
                                          // and higher
  };

  channel default_debug {
      file "named.run";                   // write to named.run in
                                          // the working directory
                                          // Note: stderr is used instead
                                          // of "named.run"
                                          // if the server is started
                                          // with the '-f' option.
      severity dynamic;                   // log at the server's
                                          // current debug level
  };

  channel default_stderr {
      stderr;                             // writes to stderr
      severity info;                      // only send priority info
                                          // and higher
  };

  channel null {
      null;                               // toss anything sent to
                                          // this channel
  };
};
EOF
```

Create a zone file with the following contents:

```bash
cat > /srv/named/etc/named/pz/127.0.0 << "EOF"
$TTL 3D
@      IN      SOA     ns.local.domain. hostmaster.local.domain. (
                        1       ; Serial
                        8H      ; Refresh
                        2H      ; Retry
                        4W      ; Expire
                        1D)     ; Minimum TTL
                NS      ns.local.domain.
1               PTR     localhost.
EOF
```

Create the <code class="filename">root.hints</code> file with the following commands:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Caution must be used to ensure there are no leading spaces in this file.
</div>

```bash
cat > /srv/named/etc/named/root.hints << "EOF"
.                       6D  IN      NS      A.ROOT-SERVERS.NET.
.                       6D  IN      NS      B.ROOT-SERVERS.NET.
.                       6D  IN      NS      C.ROOT-SERVERS.NET.
.                       6D  IN      NS      D.ROOT-SERVERS.NET.
.                       6D  IN      NS      E.ROOT-SERVERS.NET.
.                       6D  IN      NS      F.ROOT-SERVERS.NET.
.                       6D  IN      NS      G.ROOT-SERVERS.NET.
.                       6D  IN      NS      H.ROOT-SERVERS.NET.
.                       6D  IN      NS      I.ROOT-SERVERS.NET.
.                       6D  IN      NS      J.ROOT-SERVERS.NET.
.                       6D  IN      NS      K.ROOT-SERVERS.NET.
.                       6D  IN      NS      L.ROOT-SERVERS.NET.
.                       6D  IN      NS      M.ROOT-SERVERS.NET.
A.ROOT-SERVERS.NET.     6D  IN      A       198.41.0.4
A.ROOT-SERVERS.NET.     6D  IN      AAAA    2001:503:ba3e::2:30
B.ROOT-SERVERS.NET.     6D  IN      A       170.247.170.2
B.ROOT-SERVERS.NET.     6D  IN      AAAA    2801:1b8:10::b
C.ROOT-SERVERS.NET.     6D  IN      A       192.33.4.12
C.ROOT-SERVERS.NET.     6D  IN      AAAA    2001:500:2::c
D.ROOT-SERVERS.NET.     6D  IN      A       199.7.91.13
D.ROOT-SERVERS.NET.     6D  IN      AAAA    2001:500:2d::d
E.ROOT-SERVERS.NET.     6D  IN      A       192.203.230.10
E.ROOT-SERVERS.NET.     6D  IN      AAAA    2001:500:a8::e
F.ROOT-SERVERS.NET.     6D  IN      A       192.5.5.241
F.ROOT-SERVERS.NET.     6D  IN      AAAA    2001:500:2f::f
G.ROOT-SERVERS.NET.     6D  IN      A       192.112.36.4
G.ROOT-SERVERS.NET.     6D  IN      AAAA    2001:500:12::d0d
H.ROOT-SERVERS.NET.     6D  IN      A       198.97.190.53
H.ROOT-SERVERS.NET.     6D  IN      AAAA    2001:500:1::53
I.ROOT-SERVERS.NET.     6D  IN      A       192.36.148.17
I.ROOT-SERVERS.NET.     6D  IN      AAAA    2001:7fe::53
J.ROOT-SERVERS.NET.     6D  IN      A       192.58.128.30
J.ROOT-SERVERS.NET.     6D  IN      AAAA    2001:503:c27::2:30
K.ROOT-SERVERS.NET.     6D  IN      A       193.0.14.129
K.ROOT-SERVERS.NET.     6D  IN      AAAA    2001:7fd::1
L.ROOT-SERVERS.NET.     6D  IN      A       199.7.83.42
L.ROOT-SERVERS.NET.     6D  IN      AAAA    2001:500:9f::42
M.ROOT-SERVERS.NET.     6D  IN      A       202.12.27.33
M.ROOT-SERVERS.NET.     6D  IN      AAAA    2001:dc3::35
EOF
```

The <code class="filename">root.hints</code> file is a list of root name servers. This file must be updated periodically with the <span class="command"><strong>dig</strong></span> utility. A current copy of root.hints can be obtained from <a class="ulink" href="https://www.internic.net/domain/named.root">https://www.internic.net/domain/named.root</a>. For details, consult the "BIND 9 Administrator Reference Manual".

Create or modify <code class="filename">resolv.conf</code> to use the new name server with the following commands:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Replace *`<yourdomain.com>`* with your own valid domain name.
</div>

```bash
cp /etc/resolv.conf /etc/resolv.conf.bak &&
cat > /etc/resolv.conf << "EOF"
search <yourdomain.com>
nameserver 127.0.0.1
EOF
```

Set permissions on the <span class="command"><strong>chroot</strong></span> jail with the following command:

```bash
chown -R named:named /srv/named
```
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the DNS server at boot, install the <span class="phrase"><code class="filename">named.service</code> unit</span> included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package:

```bash
make install-named
```

Now start <span class="application">BIND</span> with the following command:

```bash
systemctl start named
```
</div>

<div class="sect3" lang="en">
### Testing BIND {#testing-bind}

Test out the new <span class="application">BIND</span> 9 installation. First query the local host address with <span class="command"><strong>dig</strong></span>:

```bash
dig -x 127.0.0.1
```

Now try an external name lookup, taking note of the speed difference in repeated lookups due to the caching. Run the <span class="command"><strong>dig</strong></span> command twice on the same address:

```bash
dig www.linuxfromscratch.org &&
dig www.linuxfromscratch.org
```

You can see almost instantaneous results with the named caching lookups. Consult the <span class="application">BIND</span> Administrator Reference Manual (see below) for further configuration options.
</div>
</div>

<div class="sect2" lang="en">
## Administrator Reference Manual (ARM) {#administrator-reference-manual-arm}

The ARM documentation (do not confuse with the processor architecture) is included in the source package. The documentation is in .rst format which means that it can be converted in human readable formats if <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> is installed.

When <span class="application">BIND</span> is set up, especially if it is going to be operating in a real live scenario, it is <span class="emphasis"><em>highly</em></span> recommended to consult the ARM documentation. ISC provides an updated set of excellent documentation along with every release so it can be easily viewed and/or downloaded – so there is no excuse to not read the docs. The formats ISC provides are epub and html at <a class="ulink" href="https://downloads.isc.org/isc/bind9/9.20.20/doc/arm/">https://downloads.isc.org/isc/bind9/9.20.20/doc/arm/</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">arpaname, ddns-confgen, delv, dig, dnssec-cds, dnssec-dsfromkey, dnssec-importkey, dnssec-keyfromlabel, dnssec-keygen, dnssec-ksr, dnssec-revoke, dnssec-settime, dnssec-signzone, dnssec-verify, host, mdig, named, named-checkconf, named-checkzone, named-compilezone, named-journalprint, named-nzd2nzf, named-rrchecker, nsec3hash, nslookup, nsupdate, rndc, rndc-confgen, and tsig-keygen (symlink)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libdns.so, libisc.so, libisccc.so, libisccfg.so, and libns.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/{dns,dst,irs,isc,isccc,isccfg,ns}, /usr/lib/bind, and /srv/named</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------
  <a id="arpaname"></a><span class="command"><span class="term"><strong>arpaname</strong></span></span>                         translates IP addresses to the corresponding ARPA names
  <a id="ddns-confgen"></a><span class="command"><span class="term"><strong>ddns-confgen</strong></span></span>                 generates a key for use by nsupdate and named
  <a id="delv"></a><span class="command"><span class="term"><strong>delv</strong></span></span>                                 is a new debugging tool that is a successor to <span class="command"><strong>dig</strong></span>
  <a id="dig"></a><span class="command"><span class="term"><strong>dig</strong></span></span>                                   interrogates DNS servers
  <a id="dnssec-cds"></a><span class="command"><span class="term"><strong>dnssec-cds</strong></span></span>                     changes DS records for a child zone based on CDS/CDNSKEY
  <a id="dnssec-dsfromkey"></a><span class="command"><span class="term"><strong>dnssec-dsfromkey</strong></span></span>         outputs the Delegation Signer (DS) resource record (RR)
  <a id="dnssec-importkey"></a><span class="command"><span class="term"><strong>dnssec-importkey</strong></span></span>         reads a public DNSKEY record and generates a pair of .key/.private files
  <a id="dnssec-keyfromlabel"></a><span class="command"><span class="term"><strong>dnssec-keyfromlabel</strong></span></span>   gets keys with the given label from a cryptography hardware device and builds key files for DNSSEC
  <a id="dnssec-keymgr"></a><span class="command"><span class="term"><strong>dnssec-keymgr</strong></span></span>               ensures correct DNSKEY coverage based on a defined policy
  <a id="dnssec-ksr"></a><span class="command"><span class="term"><strong>dnssec-ksr</strong></span></span>                     creates signed key response (SKR) files for offline KSK setups
  <a id="dnssec-revoke"></a><span class="command"><span class="term"><strong>dnssec-revoke</strong></span></span>               sets the REVOKED bit on a DNSSEC key
  <a id="dnssec-settime"></a><span class="command"><span class="term"><strong>dnssec-settime</strong></span></span>             sets the key timing metadata for a DNSSEC key
  <a id="dnssec-signzone"></a><span class="command"><span class="term"><strong>dnssec-signzone</strong></span></span>           generates signed versions of zone files
  <a id="dnssec-verify"></a><span class="command"><span class="term"><strong>dnssec-verify</strong></span></span>               verifies that a zone is fully signed for each algorithm found in the DNSKEY RRset for the zone, and that the NSEC / NSEC3 chains are complete
  <a id="host"></a><span class="command"><span class="term"><strong>host</strong></span></span>                                 is a utility for DNS lookups
  <a id="mdig"></a><span class="command"><span class="term"><strong>mdig</strong></span></span>                                 is a version of dig that allows multiple queries at once
  <a id="named"></a><span class="command"><span class="term"><strong>named</strong></span></span>                               is the name server daemon
  <a id="named-checkconf"></a><span class="command"><span class="term"><strong>named-checkconf</strong></span></span>           checks the syntax of <code class="filename">named.conf</code> files
  <a id="named-checkzone"></a><span class="command"><span class="term"><strong>named-checkzone</strong></span></span>           checks zone file validity
  <a id="named-compilezone"></a><span class="command"><span class="term"><strong>named-compilezone</strong></span></span>       is similar to <span class="command"><strong>named-checkzone</strong></span>, but it always dumps the zone contents to a specified file in a specified format
  <a id="named-journalprint"></a><span class="command"><span class="term"><strong>named-journalprint</strong></span></span>     prints the zone journal in human-readable form
  <a id="named-rrchecker"></a><span class="command"><span class="term"><strong>named-rrchecker</strong></span></span>           reads an individual DNS resource record from standard input and checks if it is syntactically correct
  <a id="named-nzd2nzf"></a><span class="command"><span class="term"><strong>named-nzd2nzf</strong></span></span>               converts an NZD database to NZF text format
  <a id="nsec3hash"></a><span class="command"><span class="term"><strong>nsec3hash</strong></span></span>                       generates an NSEC3 hash based on a set of NSEC3 parameters
  <a id="nslookup"></a><span class="command"><span class="term"><strong>nslookup</strong></span></span>                         is a program used to query Internet domain nameservers
  <a id="nsupdate"></a><span class="command"><span class="term"><strong>nsupdate</strong></span></span>                         is used to submit DNS update requests
  <a id="rndc"></a><span class="command"><span class="term"><strong>rndc</strong></span></span>                                 controls the operation of <span class="application">BIND</span>
  <a id="rndc-confgen"></a><span class="command"><span class="term"><strong>rndc-confgen</strong></span></span>                 generates <code class="filename">rndc.conf</code> files
  <a id="tsig-keygen"></a><span class="command"><span class="term"><strong>tsig-keygen</strong></span></span>                   is a symlink to <span class="command"><strong>ddns-confgen</strong></span>
  ---------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](apache.md "Apache-2.4.67")

    Apache-2.4.67

-   [Next](kea.md "Kea 3.0.2 DHCP Server")

    Kea 3.0.2 DHCP Server

-   [Up](majorservers.md "Chapter 20. Major Servers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
