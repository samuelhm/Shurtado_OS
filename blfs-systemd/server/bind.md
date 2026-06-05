::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 20. Major Servers

-   [Prev](apache.md "Apache-2.4.67"){accesskey="p"}

    Apache-2.4.67

-   [Next](kea.md "Kea 3.0.2 DHCP Server"){accesskey="n"}

    Kea 3.0.2 DHCP Server

-   [Up](majorservers.md "Chapter 20. Major Servers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#bind}BIND-9.20.20 {#bind-9.20.20 .sect1}

:::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to BIND {#introduction-to-bind .sect2}

The [BIND]{.application} package provides a DNS server and client utilities. If you are only interested in the utilities, refer to the [BIND Utilities-9.20.20](../basicnet/bind-utils.md "BIND Utilities-9.20.20"){.xref}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftp.isc.org/isc/bind9/9.20.20/bind-9.20.20.tar.xz](https://ftp.isc.org/isc/bind9/9.20.20/bind-9.20.20.tar.xz){.ulink}

-   Download MD5 sum: f27aa3bf9eac4e2b805b3d1f4aecef90

-   Download size: 5.5 MB

-   Estimated disk space required: 163 MB (23 MB installed)

-   Estimated build time: 0.4 SBU (with parallelism=4; about 40 minutes somewhat processor independent, to run the complete test suite)
:::

### BIND Dependencies

#### Required

[liburcu-0.15.6](../general/liburcu.md "liburcu-0.15.6"){.xref} and [libuv-1.52.1](../general/libuv.md "libuv-1.52.1"){.xref}

#### Recommended

[JSON-C-0.18](../general/json-c.md "JSON-C-0.18"){.xref}, [libcap-2.78 with PAM](../postlfs/libcap.md "libcap-2.78 with PAM"){.xref}, and [nghttp2-1.69.0](../basicnet/nghttp2.md "nghttp2-1.69.0"){.xref}

#### Optional

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [libidn2-2.3.8](../general/libidn2.md "libidn2-2.3.8"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [lmdb-0.9.35](lmdb.md "lmdb-0.9.35"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [pytest-9.0.3](../general/python-modules.md#pytest "Pytest-9.0.3"){.xref}, [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref} (required to build documentation), [cmocka](https://cmocka.org/){.ulink}, [geoip](https://github.com/cjheath/geoip){.ulink}, [jemalloc](https://github.com/jemalloc/jemalloc){.ulink}, [w3m](https://w3m.sourceforge.net/){.ulink}

#### Optional (to run the test suite)

[Net-DNS-1.54](../general/perl-modules.md#perl-net-dns "Net::DNS-1.54"){.xref}, [dnspython](https://www.dnspython.org/){.ulink}, and [hypothesis](https://hypothesis.readthedocs.io/en/latest/){.ulink}

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/bind](https://wiki.linuxfromscratch.org/blfs/wiki/bind){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of BIND {#installation-of-bind .sect2}

Install [BIND]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr           \
            --sysconfdir=/etc       \
            --localstatedir=/var    \
            --mandir=/usr/share/man \
            --disable-static        &&
make
```

Issue the following commands to run the complete suite of tests. First, as the `root`{.systemitem} user, set up some test interfaces:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If IPv6 is not enabled in the kernel, there will be several error messages: "RTNETLINK answers: Operation not permitted". These messages do not affect the tests.
:::

``` root
bin/tests/system/ifconfig.sh up
```

The test suite may indicate some skipped tests depending on what configuration options are used. Some tests are marked [“[UNTESTED]{.quote}”]{.quote} or do even fail if [Net-DNS-1.54](../general/perl-modules.md#perl-net-dns "Net::DNS-1.54"){.xref} is not installed. One test, `dnssec`{.filename}, is known to fail. The tests require the [hypothesis](https://hypothesis.readthedocs.org/){.ulink} and [dnspython](https://www.dnspython.org/){.ulink} Python modules, which are not in BLFS. To work around this, the instructions below create a Python virtual environment and then install the modules in there prior to running the tests. To run the tests, as an unprivileged user, execute:

``` userinput
python3 -m venv --system-site-packages testenv &&
source testenv/bin/activate                    &&
pip3 install dnspython hypothesis              &&
make -k check                                  &&
deactivate
```

Again as `root`{.systemitem}, clean up the test interfaces:

``` root
bin/tests/system/ifconfig.sh down
```

Finally, install the package as the `root`{.systemitem} user:

``` root
make install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--sysconfdir=/etc`*: This parameter forces [BIND]{.application} to look for configuration files in `/etc`{.filename} instead of `/usr/etc`{.filename}.

`--with-libidn2`{.option}: This parameter enables the IDNA2008 (Internationalized Domain Names in Applications) support.

`--enable-fetchlimit`{.option}: Use this option if you want to be able to limit the rate of recursive client queries. This may be useful on servers which receive a large number of queries.

`--disable-doh`{.option}: Use this option if you do not have [nghttp2-1.69.0](../basicnet/nghttp2.md "nghttp2-1.69.0"){.xref} installed and do not need support for DNS over HTTPS.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--system-site-packages`*: Allow the [Python3]{.application} venv module to access the system-installed `/usr/lib/python3.14/site-packages`{.filename} directory.
:::

::::::::: {.configuration lang="en"}
## Configuring BIND {#configuring-bind .sect2}

::: {.sect3 lang="en"}
### []{#bind-config}Config files {#config-files .sect3}

`named.conf`{.filename}, `root.hints`{.filename}, `127.0.0`{.filename}, `rndc.conf`{.filename}, and `resolv.conf`{.filename}
:::

::::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

[BIND]{.application} will be configured to run in a [**chroot**]{.command} jail as an unprivileged user (`named`{.systemitem}). This configuration is more secure in that a DNS compromise can only affect a few files in the `named`{.systemitem} user's `HOME`{.envar} directory.

Create the unprivileged user and group `named`{.systemitem}:

``` root
groupadd -g 20 named &&
useradd -c "BIND Owner" -g named -s /bin/false -u 20 named &&
install -d -m770 -o named -g named /srv/named
```

Set up some files, directories and devices needed by [BIND]{.application}:

``` root
mkdir -p /srv/named &&
cd       /srv/named &&
mkdir -p dev etc/named/{slave,pz} usr/lib/engines var/run/named &&
mknod /srv/named/dev/null c 1 3 &&
mknod /srv/named/dev/urandom c 1 9 &&
chmod 666 /srv/named/dev/{null,urandom} &&
cp /etc/localtime etc
```

The `rndc.conf`{.filename} file contains information for controlling [**named**]{.command} operations with the [**rndc**]{.command} utility. Generate a key for use in the `named.conf`{.filename} and `rndc.conf`{.filename} with the [**rndc-confgen**]{.command} command:

``` root
rndc-confgen -a -b 512 -t /srv/named
```

Create the `named.conf`{.filename} file from which [**named**]{.command} will read the location of zone files, root name servers and secure DNS keys:

``` root
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

``` root
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

Create the `root.hints`{.filename} file with the following commands:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Caution must be used to ensure there are no leading spaces in this file.
:::

``` root
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

The `root.hints`{.filename} file is a list of root name servers. This file must be updated periodically with the [**dig**]{.command} utility. A current copy of root.hints can be obtained from [https://www.internic.net/domain/named.root](https://www.internic.net/domain/named.root){.ulink}. For details, consult the "BIND 9 Administrator Reference Manual".

Create or modify `resolv.conf`{.filename} to use the new name server with the following commands:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Replace *`<yourdomain.com>`* with your own valid domain name.
:::

``` root
cp /etc/resolv.conf /etc/resolv.conf.bak &&
cat > /etc/resolv.conf << "EOF"
search <yourdomain.com>
nameserver 127.0.0.1
EOF
```

Set permissions on the [**chroot**]{.command} jail with the following command:

``` root
chown -R named:named /srv/named
```
:::::

::: {.sect3 lang="en"}
### []{#bind-init} Systemd Unit {#systemd-unit .sect3}

To start the DNS server at boot, install the [`named.service`{.filename} unit]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package:

``` root
make install-named
```

Now start [BIND]{.application} with the following command:

``` root
systemctl start named
```
:::

::: {.sect3 lang="en"}
### Testing BIND {#testing-bind .sect3}

Test out the new [BIND]{.application} 9 installation. First query the local host address with [**dig**]{.command}:

``` userinput
dig -x 127.0.0.1
```

Now try an external name lookup, taking note of the speed difference in repeated lookups due to the caching. Run the [**dig**]{.command} command twice on the same address:

``` userinput
dig www.linuxfromscratch.org &&
dig www.linuxfromscratch.org
```

You can see almost instantaneous results with the named caching lookups. Consult the [BIND]{.application} Administrator Reference Manual (see below) for further configuration options.
:::
:::::::::

::: {.sect2 lang="en"}
## Administrator Reference Manual (ARM) {#administrator-reference-manual-arm .sect2}

The ARM documentation (do not confuse with the processor architecture) is included in the source package. The documentation is in .rst format which means that it can be converted in human readable formats if [sphinx-9.1.0](../general/python-modules.md#sphinx "Sphinx-9.1.0"){.xref} is installed.

When [BIND]{.application} is set up, especially if it is going to be operating in a real live scenario, it is [*highly*]{.emphasis} recommended to consult the ARM documentation. ISC provides an updated set of excellent documentation along with every release so it can be easily viewed and/or downloaded – so there is no excuse to not read the docs. The formats ISC provides are epub and html at [https://downloads.isc.org/isc/bind9/9.20.20/doc/arm/](https://downloads.isc.org/isc/bind9/9.20.20/doc/arm/){.ulink}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [arpaname, ddns-confgen, delv, dig, dnssec-cds, dnssec-dsfromkey, dnssec-importkey, dnssec-keyfromlabel, dnssec-keygen, dnssec-ksr, dnssec-revoke, dnssec-settime, dnssec-signzone, dnssec-verify, host, mdig, named, named-checkconf, named-checkzone, named-compilezone, named-journalprint, named-nzd2nzf, named-rrchecker, nsec3hash, nslookup, nsupdate, rndc, rndc-confgen, and tsig-keygen (symlink)]{.segbody}
:::

::: seg
**Installed Libraries:** [libdns.so, libisc.so, libisccc.so, libisccfg.so, and libns.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/{dns,dst,irs,isc,isccc,isccfg,ns}, /usr/lib/bind, and /srv/named]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------
  []{#arpaname}[[**arpaname**]{.command}]{.term}                         translates IP addresses to the corresponding ARPA names
  []{#ddns-confgen}[[**ddns-confgen**]{.command}]{.term}                 generates a key for use by nsupdate and named
  []{#delv}[[**delv**]{.command}]{.term}                                 is a new debugging tool that is a successor to [**dig**]{.command}
  []{#dig}[[**dig**]{.command}]{.term}                                   interrogates DNS servers
  []{#dnssec-cds}[[**dnssec-cds**]{.command}]{.term}                     changes DS records for a child zone based on CDS/CDNSKEY
  []{#dnssec-dsfromkey}[[**dnssec-dsfromkey**]{.command}]{.term}         outputs the Delegation Signer (DS) resource record (RR)
  []{#dnssec-importkey}[[**dnssec-importkey**]{.command}]{.term}         reads a public DNSKEY record and generates a pair of .key/.private files
  []{#dnssec-keyfromlabel}[[**dnssec-keyfromlabel**]{.command}]{.term}   gets keys with the given label from a cryptography hardware device and builds key files for DNSSEC
  []{#dnssec-keymgr}[[**dnssec-keymgr**]{.command}]{.term}               ensures correct DNSKEY coverage based on a defined policy
  []{#dnssec-ksr}[[**dnssec-ksr**]{.command}]{.term}                     creates signed key response (SKR) files for offline KSK setups
  []{#dnssec-revoke}[[**dnssec-revoke**]{.command}]{.term}               sets the REVOKED bit on a DNSSEC key
  []{#dnssec-settime}[[**dnssec-settime**]{.command}]{.term}             sets the key timing metadata for a DNSSEC key
  []{#dnssec-signzone}[[**dnssec-signzone**]{.command}]{.term}           generates signed versions of zone files
  []{#dnssec-verify}[[**dnssec-verify**]{.command}]{.term}               verifies that a zone is fully signed for each algorithm found in the DNSKEY RRset for the zone, and that the NSEC / NSEC3 chains are complete
  []{#host}[[**host**]{.command}]{.term}                                 is a utility for DNS lookups
  []{#mdig}[[**mdig**]{.command}]{.term}                                 is a version of dig that allows multiple queries at once
  []{#named}[[**named**]{.command}]{.term}                               is the name server daemon
  []{#named-checkconf}[[**named-checkconf**]{.command}]{.term}           checks the syntax of `named.conf`{.filename} files
  []{#named-checkzone}[[**named-checkzone**]{.command}]{.term}           checks zone file validity
  []{#named-compilezone}[[**named-compilezone**]{.command}]{.term}       is similar to [**named-checkzone**]{.command}, but it always dumps the zone contents to a specified file in a specified format
  []{#named-journalprint}[[**named-journalprint**]{.command}]{.term}     prints the zone journal in human-readable form
  []{#named-rrchecker}[[**named-rrchecker**]{.command}]{.term}           reads an individual DNS resource record from standard input and checks if it is syntactically correct
  []{#named-nzd2nzf}[[**named-nzd2nzf**]{.command}]{.term}               converts an NZD database to NZF text format
  []{#nsec3hash}[[**nsec3hash**]{.command}]{.term}                       generates an NSEC3 hash based on a set of NSEC3 parameters
  []{#nslookup}[[**nslookup**]{.command}]{.term}                         is a program used to query Internet domain nameservers
  []{#nsupdate}[[**nsupdate**]{.command}]{.term}                         is used to submit DNS update requests
  []{#rndc}[[**rndc**]{.command}]{.term}                                 controls the operation of [BIND]{.application}
  []{#rndc-confgen}[[**rndc-confgen**]{.command}]{.term}                 generates `rndc.conf`{.filename} files
  []{#tsig-keygen}[[**tsig-keygen**]{.command}]{.term}                   is a symlink to [**ddns-confgen**]{.command}
  ---------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::::

::: navfooter
-   [Prev](apache.md "Apache-2.4.67"){accesskey="p"}

    Apache-2.4.67

-   [Next](kea.md "Kea 3.0.2 DHCP Server"){accesskey="n"}

    Kea 3.0.2 DHCP Server

-   [Up](majorservers.md "Chapter 20. Major Servers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
