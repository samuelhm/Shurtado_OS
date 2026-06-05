<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 20. Major Servers

-   [Prev](bind.md "BIND-9.20.20")

    BIND-9.20.20

-   [Next](proftpd.md "ProFTPD-1.3.9a")

    ProFTPD-1.3.9a

-   [Up](majorservers.md "Chapter 20. Major Servers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Kea 3.0.2 DHCP Server {#kea-3.0.2-dhcp-server}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to ISC Kea DHCP Server {#introduction-to-isc-kea-dhcp-server}

The <span class="application">ISC Kea</span> package contains the server programs for DHCP. This is the successor of the old ISC DHCP server which went out of support in December 2022.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.isc.org/isc/kea/3.0.2/kea-3.0.2.tar.xz">https://downloads.isc.org/isc/kea/3.0.2/kea-3.0.2.tar.xz</a>

-   Download MD5 sum: a673e95637b708b3b1926c696cdf168b

-   Download size: 6.3 MB

-   Estimated disk space required: 231 MB (47 MB installed; add 425 MB for tests)

-   Estimated build time: 6.4 SBU (with parallelism=4; add 17 SBU for tests)
</div>

### Kea Dependencies

#### Required

<a class="xref" href="../general/boost.md" title="boost-1.91.0-1">Boost-1.91.0-1</a> and <a class="xref" href="../general/log4cplus.md" title="log4cplus-2.1.2">log4cplus-2.1.2</a>

#### Optional

<a class="xref" href="bind.md" title="BIND-9.20.20">BIND-9.20.20</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="ulink" href="https://botan.randombit.net/">Botan</a>, <a class="ulink" href="https://cppcheck.sourceforge.io/">cppcheck</a>, <a class="ulink" href="https://github.com/CESNET/libyang">libyang</a>, and <a class="ulink" href="https://plantuml.com/">plantuml</a>

#### Optional (for regenerating documentation)

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../general/graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, <a class="xref" href="../general/python-modules.md#sphinx_rtd_theme" title="Sphinx_rtd_theme-3.1.0">sphinx_rtd_theme-3.1.0</a>, and <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>)

#### Optional database backends

<a class="xref" href="mariadb.md" title="MariaDB-12.3.2">MariaDB-12.3.2</a> or <a class="ulink" href="https://www.mysql.com/">MySQL</a>, and <a class="xref" href="postgresql.md" title="PostgreSQL-18.4">PostgreSQL-18.4</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

You must have Packet Socket support. IPv6 support is optional. Enable the following options in the kernel and reboot if necessary:

```console
[*] Networking support --->                                                [NET]
  Networking options --->
    <*/M> Packet socket                                                 [PACKET]
    [*]   TCP/IP networking                                               [INET]
    <*>     The IPv6 protocol --->                                        [IPV6]
```
</div>

<div class="installation" lang="en">
## Installation of ISC Kea DHCP Server {#installation-of-isc-kea-dhcp-server}

First, apply a few fixes required for boost-1.91.0-1:

```bash
sed -e "/asio_wrapper/a#include <boost/asio/deadline_timer.hpp>" \
    -i src/lib/asiolink/interval_timer.cc                        \
       src/lib/asiodns/io_fetch.cc                               \
       src/lib/asiodns/tests/io_fetch_unittest.cc                &&
sed -e "/lexical_cast.hpp/a #include <boost/static_assert.hpp>"  \
    -i src/lib/log/logger_level_impl.cc
```

Now, install <span class="application">ISC Kea DHCP Server</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..             \
      --prefix=/usr        \
      --sysconfdir=/etc    \
      --localstatedir=/var \
      --buildtype=release  \
      -D crypto=openssl    \
      -D runstatedir=/run  &&

ninja
```

If tests were enabled, run <span class="command"><strong>ninja test</strong></span> to test the results. There are tests which require a live database when any of the database hooks are built. Some tests may fail if IPv6 support is not functional.

To install the <span class="application">ISC Kea DHCP Server</span> suite, issue the following commands as the <code class="systemitem">root</code> user:

```bash
ninja install
```

Fix some hard coded paths in the <span class="command"><strong>keactrl</strong></span> script and in it's configuration file:

```bash
sed -e "s:\${prefix}/::" -i /usr/sbin/keactrl             &&
sed -e "s:\${prefix}//etc:/etc:" -i /etc/kea/keactrl.conf
```

Create some directories and fix their permission settings as the <code class="systemitem">root</code> user:

```bash
install -dm0750 /var/lib/kea
install -dm0750 /var/log/kea
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D crypto=openssl`*: Allows using OpenSSL for communicating with the control-agent and for DNS updates. Use <code class="option">-D crypto=botan</code> if you want to use Botan. The default provider is OpenSSL.

<code class="option">-D postgresql=enabled</code> or <code class="option">-D mysql=enabled</code>: <span class="application">ISC Kea</span> can store the leases inside of a database. This might be useful in large environments running a cluster of DHCP servers. Using the <span class="emphasis"><em>memfile</em></span> backend (which is a CSV file stored locally) is possible, and this method is what the default configuration presented here uses.

<code class="option">-D tests=enabled</code>: This option is required to build the test suite. Using this option causes the build size to increase significantly, so it should only be enabled if you are going to run the test suite.

<code class="option">-D krb5=enabled</code>: This switch enables integration with Kerberos for authenticating client computers in an enterprise environment.
</div>

<div class="configuration" lang="en">
## Configuring ISC Kea DHCP Server {#configuring-isc-kea-dhcp-server}

The support of IPv4, IPv6 and DDNS has been split into separate servers which run independently from each other. Each of them has its own configuration file.

Note that the Kea Control Agent is deprecated since version 3.0.0. Do not confuse <span class="application">kea-ctrl-agent</span> with <span class="application">keactrl</span>.

Consult the <a class="ulink" href="https://kea.readthedocs.io/en/kea-3.0.2/">Kea Administrator Reference Manual</a> for detailed information about the configuration of <span class="application">ISC Kea</span> as it is a quite capable system. The configuration shown below is a bare minimum to get a DHCP server running but it already includes configuration for DDNS (Dynamic DNS). That setup is best for small networks with a few clients and low amounts of network traffic. For larger installations with thousands of clients, <span class="application">ISC Kea</span> can be configured to use databases such as (mariadb or postgresql) to store the leases and build a cluster with multiple nodes. It can be integrated with <a class="ulink" href="https://www.isc.org/categories/stork/">ISC Stork</a>, which is a management dashboard to <span class="application">ISC Kea</span>.

If you want to start the DHCP Server at boot, install the <span class="phrase"><code class="filename">kea-dhcpd.service</code> unit</span> included in the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package:

```bash
make install-kea-dhcpd
```

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/kea/kea-ctrl-agent.conf</code>, <code class="filename">/etc/kea/kea-dhcp4.conf</code>, <code class="filename">/etc/kea/kea-dhcp6.conf</code>, and <code class="filename">/etc/kea/kea-dhcp-ddns.conf</code>
</div>

<div class="sect3" lang="en">
### Kea Configuration Using Systemd Units {#kea-configuration-using-systemd-units}

Four service units are used to start various daemons provided by Kea:

<div class="itemizedlist">
-   Control Agent

    The Control Agent is a daemon which allows the (re)configuration of the Kea DHCP service via REST API. Run <span class="command"><strong>systemctl enable kea-ctrl-agent</strong></span> if this daemon is needed.

-   IPv4 DHCP server

    This daemon handles requests for IPv4 addresses. Run <span class="command"><strong>systemctl enable kea-dhcp4-server</strong></span> to have it started by systemd.

-   IPv6 DHCP server

    This daemon handles requests for IPv6 addresses. Run <span class="command"><strong>systemctl enable kea-dhcp6-server</strong></span> to have it started by systemd.

-   Dynamic DNS

    This daemon is used to update a DNS server dynamically when Kea assigns an IP address to a device. Run <span class="command"><strong>systemctl enable kea-ddns-server</strong></span> to have it started by systemd.
</div>

The Netconf service is not installed because the required dependencies are not installed by BLFS, and configuring it correctly is complicated.
</div>

<div class="sect3" lang="en">
### Control Agent Configuration {#control-agent-configuration}

The provided configuration could be used without changes. However, in BLFS, objects like sockets are stored in <code class="filename">/run</code> rather than in <code class="filename">/tmp</code>.

```bash
cat > /etc/kea/kea-ctrl-agent.conf << "EOF"
// Begin /etc/kea/kea-ctrl-agent.conf
{
  // This is a basic configuration for the Kea Control Agent.
  // The RESTful interface will be available at http://127.0.0.1:8000/
  "Control-agent": {
    "http-host": "127.0.0.1",
    "http-port": 8000,
    "control-sockets": {
      "dhcp4": {
        "socket-type": "unix",
        "socket-name": "/run/kea/kea4-ctrl-socket"
      },
      "dhcp6": {
        "socket-type": "unix",
        "socket-name": "/run/kea/kea6-ctrl-socket"
      },
      "d2": {
        "socket-type": "unix",
        "socket-name": "/run/kea/kea-ddns-ctrl-socket"
      }
    },

    "loggers": [
      {
        "name": "kea-ctrl-agent",
        "output_options": [
          {
            "output": "/var/log/kea/kea-ctrl-agent.log",
            "pattern": "%D{%Y-%m-%d %H:%M:%S.%q} %-5p %m\n"
          }
        ],
        "severity": "INFO",
        "debuglevel": 0
      }
    ]
  }
}
// End /etc/kea/kea-ctrl-agent.conf
EOF
```
</div>

<div class="sect3" lang="en">
### IPv4 DHCP Server Configuration {#ipv4-dhcp-server-configuration}

A sample configuration file is created in <code class="filename">/etc/kea/kea-dhcp4.conf</code>. Adjust the file to suit your needs or overwrite it by running the following command as the <code class="systemitem">root</code> user (you'll need to edit this file anyway: at least the <span class="emphasis"><em>interfaces</em></span> field, the <span class="emphasis"><em>ddns-qualifying-suffix</em></span> field, and almost all the fields in <span class="emphasis"><em>Subnet4</em></span>):

```bash
cat > /etc/kea/kea-dhcp4.conf << "EOF"
// Begin /etc/kea/kea-dhcp4.conf
{
  "Dhcp4": {
    // Add names of your network interfaces to listen on.
    "interfaces-config": {
      "interfaces": [ "eth0", "eth2" ]
    },

    "control-socket": {
      "socket-type": "unix",
      "socket-name": "/run/kea/kea4-ctrl-socket"
    },

    "lease-database": {
      "type": "memfile",
      "lfc-interval": 3600,
      "name": "/var/lib/kea/kea-leases4.csv"
    },

    "expired-leases-processing": {
      "reclaim-timer-wait-time": 10,
      "flush-reclaimed-timer-wait-time": 25,
      "hold-reclaimed-time": 3600,
      "max-reclaim-leases": 100,
      "max-reclaim-time": 250,
      "unwarned-reclaim-cycles": 5
    },

    "renew-timer": 900,
    "rebind-timer": 1800,
    "valid-lifetime": 3600,

    // Enable DDNS - Kea will dynamically update the BIND DNS server
    "ddns-send-updates" : true,
    "ddns-qualifying-suffix": "your.domain.tld",
    "dhcp-ddns" : {
      "enable-updates": true
    },

    "subnet4": [
      {
        "id": 1001,   // Each subnet requires a unique numeric id
        "subnet": "192.168.56.0/24",
        "pools": [ { "pool": "192.168.56.16 - 192.168.56.254" } ],
        "option-data": [
          {
            "name": "domain-name",
            "data": "your.domain.tld"
          },
          {
            "name": "domain-name-servers",
            "data": "192.168.56.2, 192.168.3.7"
          },
          {
            "name": "domain-search",
            "data": "your.domain.tld"
          },
          {
            "name": "routers",
            "data": "192.168.56.2"
          }
        ]
      }
    ],

    "loggers": [
      {
        "name": "kea-dhcp4",
        "output_options": [
          {
            "output": "/var/log/kea/kea-dhcp4.log",
            "pattern": "%D{%Y-%m-%d %H:%M:%S.%q} %-5p %m\n"
          }
        ],
        "severity": "INFO",
        "debuglevel": 0
      }
    ]
  }
}
// End /etc/kea/kea-dhcp4.conf
EOF
```
</div>

<div class="sect3" lang="en">
### IPv6 DHCP Server Configuration {#ipv6-dhcp-server-configuration}

The configuration for IPv6 is similar to the configuration of IPv4. The configuration file is <code class="filename">/etc/kea/kea-dhcp6.conf</code>.
</div>

<div class="sect3" lang="en">
### Dynamic DNS Configuration {#dynamic-dns-configuration}

If there is a <a class="xref" href="bind.md" title="BIND-9.20.20">BIND-9.20.20</a> server running, <span class="application">ISC Kea</span> can update the DNS records when it gives an IP address to a client. A sample configuration file is created in <code class="filename">/etc/kea/kea-dhcp-ddns.conf</code>. Adjust the file to suit your needs or overwrite it by running the following command as the <code class="systemitem">root</code> user:

```bash
cat > /etc/kea/kea-dhcp-ddns.conf << "EOF"
// Begin /etc/kea/kea-dhcp-ddns.conf
{
  "DhcpDdns": {
    "ip-address": "127.0.0.1",
    "port": 53001,
    "control-socket": {
      "socket-type": "unix",
      "socket-name": "/run/kea/kea-ddns-ctrl-socket"
    },

    "tsig-keys": [
      {
        "name"      : "rndc-key",
        "algorithm" : "hmac-sha256",
        "secret"    : "1FU5hD7faYaajQCjSdA54JkTPQxbbPrRnzOKqHcD9cM="
      }
    ],

    "forward-ddns" : {
      "ddns-domains" : [
        {
          "name" : "your.domain.tld.",
          "key-name": "rndc-key",
          "dns-servers" : [
            {
              "ip-address" : "127.0.0.1",
              "port" : 53
            }
          ]
        }
      ]
    },

    "reverse-ddns" : {
      "ddns-domains" : [
        {
          "name" : "56.168.192.in-addr.arpa.",
          "key-name": "rndc-key",
          "dns-servers" : [
            {
              "ip-address" : "127.0.0.1",
              "port" : 53
            }
          ]
        }
      ]
    },

    "loggers": [
      {
        "name": "kea-dhcp-ddns",
        "output_options": [
          {
            "output": "/var/log/kea/kea-ddns.log",
            "pattern": "%D{%Y-%m-%d %H:%M:%S.%q} %-5p %m\n"
          }
        ],
        "severity": "INFO",
        "debuglevel": 0
      }
    ]
  }
}
// End /etc/kea/kea-dhcp-ddns.conf
EOF
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The value of <code class="literal">secret</code> is just an example. Generate the key for your installation by using the <span class="command"><strong>rndc-confgen -a</strong></span> command or the <span class="command"><strong>tsig-keygen</strong></span> command which both are provided by <a class="xref" href="bind.md" title="BIND-9.20.20">BIND-9.20.20</a>.

In this example configuration, it is assumed that the DNS server runs on the same machine as Kea does (accessible via <code class="literal">127.0.0.1</code>) and that this machine has the IP <code class="literal">192.168.56.2</code>.
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">keactrl, kea-admin, kea-ctrl-agent, kea-dhcp4, kea-dhcp6, kea-dhcp-ddns, kea-lfc, kea-msg-compiler, and kea-shell</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libkea-asiodns.so, libkea-asiolink.so, libkea-cc.so, libkea-cfgrpt.so, libkea-config.so, libkea-cryptolink.so, libkea-d2srv.so, libkea-database.so, libkea-dhcp_ddns.so, libkea-dhcp.so, libkea-dhcpsrv.so, libkea-dns.so, libkea-eval.so, libkea-exceptions.so, libkea-hooks.so, libkea-http.so, libkea-log.so, libkea-log-interprocess.so, libkea-mysql.so, libkea-pgsql.so, libkea-process.so, libkea-stats.so, libkea-tcp.so, libkea-util.so, and libkea-util-io.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/kea, /run/kea, /usr/include/kea, /usr/lib/kea, /usr/lib/python3.14/site-packages/kea, /usr/share/kea, /usr/share/doc/kea-3.0.2, /var/lib/kea, and /var/log/kea</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="keactrl"></a><span class="command"><span class="term"><strong>keactrl</strong></span></span>                 is a tool to control (start/stop) the server processes
  <a id="kea-admin"></a><span class="command"><span class="term"><strong>kea-admin</strong></span></span>             is a shell script which performs DHCP database maintenance
  <a id="kea-ctrl-agent"></a><span class="command"><span class="term"><strong>kea-ctrl-agent</strong></span></span>   is a daemon which exposes a RESTful control interface for managing Kea servers
  <a id="kea-dhcp4"></a><span class="command"><span class="term"><strong>kea-dhcp4</strong></span></span>             is the DHCP server daemon providing IPv4 addresses
  <a id="kea-dhcp6"></a><span class="command"><span class="term"><strong>kea-dhcp6</strong></span></span>             is the DHCP server daemon providing IPv6 addresses
  <a id="kea-dhcp-ddns"></a><span class="command"><span class="term"><strong>kea-dhcp-ddns</strong></span></span>     is the DHCP server daemon that performs Dynamic DNS updates
  <a id="kea-lfc"></a><span class="command"><span class="term"><strong>kea-lfc</strong></span></span>                 is the service process that removes redundant information from the files used to provide persistent storage for the memfile database backend. It is run by the Kea DHCP server
  <a id="keashell"></a><span class="command"><span class="term"><strong>keashell</strong></span></span>               is a RESTful client to the <span class="application">ISC Kea</span> DHCP services
  ------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](bind.md "BIND-9.20.20")

    BIND-9.20.20

-   [Next](proftpd.md "ProFTPD-1.3.9a")

    ProFTPD-1.3.9a

-   [Up](majorservers.md "Chapter 20. Major Servers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
