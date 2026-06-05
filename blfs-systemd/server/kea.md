::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 20. Major Servers

-   [Prev](bind.md "BIND-9.20.20"){accesskey="p"}

    BIND-9.20.20

-   [Next](proftpd.md "ProFTPD-1.3.9a"){accesskey="n"}

    ProFTPD-1.3.9a

-   [Up](majorservers.md "Chapter 20. Major Servers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#kea}Kea 3.0.2 DHCP Server {#kea-3.0.2-dhcp-server .sect1}

::::::::::::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to ISC Kea DHCP Server {#introduction-to-isc-kea-dhcp-server .sect2}

The [ISC Kea]{.application} package contains the server programs for DHCP. This is the successor of the old ISC DHCP server which went out of support in December 2022.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.isc.org/isc/kea/3.0.2/kea-3.0.2.tar.xz](https://downloads.isc.org/isc/kea/3.0.2/kea-3.0.2.tar.xz){.ulink}

-   Download MD5 sum: a673e95637b708b3b1926c696cdf168b

-   Download size: 6.3 MB

-   Estimated disk space required: 231 MB (47 MB installed; add 425 MB for tests)

-   Estimated build time: 6.4 SBU (with parallelism=4; add 17 SBU for tests)
:::

### Kea Dependencies

#### Required

[Boost-1.91.0-1](../general/boost.md "boost-1.91.0-1"){.xref} and [log4cplus-2.1.2](../general/log4cplus.md "log4cplus-2.1.2"){.xref}

#### Optional

[BIND-9.20.20](bind.md "BIND-9.20.20"){.xref}, [MIT Kerberos V5-1.22.2](../postlfs/mitkrb.md "MIT Kerberos V5-1.22.2"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [Botan](https://botan.randombit.net/){.ulink}, [cppcheck](https://cppcheck.sourceforge.io/){.ulink}, [libyang](https://github.com/CESNET/libyang){.ulink}, and [plantuml](https://plantuml.com/){.ulink}

#### Optional (for regenerating documentation)

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [Graphviz-15.0.0](../general/graphviz.md "Graphviz-15.0.0"){.xref}, [sphinx_rtd_theme-3.1.0](../general/python-modules.md#sphinx_rtd_theme "Sphinx_rtd_theme-3.1.0"){.xref}, and [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref})

#### Optional database backends

[MariaDB-12.3.2](mariadb.md "MariaDB-12.3.2"){.xref} or [MySQL](https://www.mysql.com/){.ulink}, and [PostgreSQL-18.4](postgresql.md "PostgreSQL-18.4"){.xref}
:::::

::: {.kernel lang="en"}
## []{#kea-dhcp-kernel}Kernel Configuration {#kernel-configuration .sect2}

You must have Packet Socket support. IPv6 support is optional. Enable the following options in the kernel and reboot if necessary:

``` screen
[*] Networking support --->                                                [NET]
  Networking options --->
    <*/M> Packet socket                                                 [PACKET]
    [*]   TCP/IP networking                                               [INET]
    <*>     The IPv6 protocol --->                                        [IPV6]
```
:::

::: {.installation lang="en"}
## Installation of ISC Kea DHCP Server {#installation-of-isc-kea-dhcp-server .sect2}

First, apply a few fixes required for boost-1.91.0-1:

``` userinput
sed -e "/asio_wrapper/a#include <boost/asio/deadline_timer.hpp>" \
    -i src/lib/asiolink/interval_timer.cc                        \
       src/lib/asiodns/io_fetch.cc                               \
       src/lib/asiodns/tests/io_fetch_unittest.cc                &&
sed -e "/lexical_cast.hpp/a #include <boost/static_assert.hpp>"  \
    -i src/lib/log/logger_level_impl.cc
```

Now, install [ISC Kea DHCP Server]{.application} by running the following commands:

``` userinput
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

If tests were enabled, run [**ninja test**]{.command} to test the results. There are tests which require a live database when any of the database hooks are built. Some tests may fail if IPv6 support is not functional.

To install the [ISC Kea DHCP Server]{.application} suite, issue the following commands as the `root`{.systemitem} user:

``` root
ninja install
```

Fix some hard coded paths in the [**keactrl**]{.command} script and in it's configuration file:

``` root
sed -e "s:\${prefix}/::" -i /usr/sbin/keactrl             &&
sed -e "s:\${prefix}//etc:/etc:" -i /etc/kea/keactrl.conf
```

Create some directories and fix their permission settings as the `root`{.systemitem} user:

``` root
install -dm0750 /var/lib/kea
install -dm0750 /var/log/kea
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D crypto=openssl`*: Allows using OpenSSL for communicating with the control-agent and for DNS updates. Use `-D crypto=botan`{.option} if you want to use Botan. The default provider is OpenSSL.

`-D postgresql=enabled`{.option} or `-D mysql=enabled`{.option}: [ISC Kea]{.application} can store the leases inside of a database. This might be useful in large environments running a cluster of DHCP servers. Using the [*memfile*]{.emphasis} backend (which is a CSV file stored locally) is possible, and this method is what the default configuration presented here uses.

`-D tests=enabled`{.option}: This option is required to build the test suite. Using this option causes the build size to increase significantly, so it should only be enabled if you are going to run the test suite.

`-D krb5=enabled`{.option}: This switch enables integration with Kerberos for authenticating client computers in an enterprise environment.
:::

::::::::::: {.configuration lang="en"}
## Configuring ISC Kea DHCP Server {#configuring-isc-kea-dhcp-server .sect2}

The support of IPv4, IPv6 and DDNS has been split into separate servers which run independently from each other. Each of them has its own configuration file.

Note that the Kea Control Agent is deprecated since version 3.0.0. Do not confuse [kea-ctrl-agent]{.application} with [keactrl]{.application}.

Consult the [Kea Administrator Reference Manual](https://kea.readthedocs.io/en/kea-3.0.2/){.ulink} for detailed information about the configuration of [ISC Kea]{.application} as it is a quite capable system. The configuration shown below is a bare minimum to get a DHCP server running but it already includes configuration for DDNS (Dynamic DNS). That setup is best for small networks with a few clients and low amounts of network traffic. For larger installations with thousands of clients, [ISC Kea]{.application} can be configured to use databases such as (mariadb or postgresql) to store the leases and build a cluster with multiple nodes. It can be integrated with [ISC Stork](https://www.isc.org/categories/stork/){.ulink}, which is a management dashboard to [ISC Kea]{.application}.

If you want to start the DHCP Server at boot, install the [`kea-dhcpd.service`{.filename} unit]{.phrase} included in the [blfs-systemd-units-20251204](../introduction/systemd-units.md "BLFS Systemd Units"){.xref} package:

``` root
make install-kea-dhcpd
```

::: {.sect3 lang="en"}
### []{#kea-dhcp-config}Config Files {#config-files .sect3}

`/etc/kea/kea-ctrl-agent.conf`{.filename}, `/etc/kea/kea-dhcp4.conf`{.filename}, `/etc/kea/kea-dhcp6.conf`{.filename}, and `/etc/kea/kea-dhcp-ddns.conf`{.filename}
:::

:::: {.sect3 lang="en"}
### []{#kea-sysd-config}Kea Configuration Using Systemd Units {#kea-configuration-using-systemd-units .sect3}

Four service units are used to start various daemons provided by Kea:

::: itemizedlist
-   Control Agent

    The Control Agent is a daemon which allows the (re)configuration of the Kea DHCP service via REST API. Run [**systemctl enable kea-ctrl-agent**]{.command} if this daemon is needed.

-   IPv4 DHCP server

    This daemon handles requests for IPv4 addresses. Run [**systemctl enable kea-dhcp4-server**]{.command} to have it started by systemd.

-   IPv6 DHCP server

    This daemon handles requests for IPv6 addresses. Run [**systemctl enable kea-dhcp6-server**]{.command} to have it started by systemd.

-   Dynamic DNS

    This daemon is used to update a DNS server dynamically when Kea assigns an IP address to a device. Run [**systemctl enable kea-ddns-server**]{.command} to have it started by systemd.
:::

The Netconf service is not installed because the required dependencies are not installed by BLFS, and configuring it correctly is complicated.
::::

::: {.sect3 lang="en"}
### []{#kea-ctrl-agent-config}Control Agent Configuration {#control-agent-configuration .sect3}

The provided configuration could be used without changes. However, in BLFS, objects like sockets are stored in `/run`{.filename} rather than in `/tmp`{.filename}.

``` root
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
:::

::: {.sect3 lang="en"}
### []{#kea-dhcp4-config}IPv4 DHCP Server Configuration {#ipv4-dhcp-server-configuration .sect3}

A sample configuration file is created in `/etc/kea/kea-dhcp4.conf`{.filename}. Adjust the file to suit your needs or overwrite it by running the following command as the `root`{.systemitem} user (you'll need to edit this file anyway: at least the [*interfaces*]{.emphasis} field, the [*ddns-qualifying-suffix*]{.emphasis} field, and almost all the fields in [*Subnet4*]{.emphasis}):

``` root
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
:::

::: {.sect3 lang="en"}
### []{#kea-dhcp6-config}IPv6 DHCP Server Configuration {#ipv6-dhcp-server-configuration .sect3}

The configuration for IPv6 is similar to the configuration of IPv4. The configuration file is `/etc/kea/kea-dhcp6.conf`{.filename}.
:::

:::: {.sect3 lang="en"}
### []{#kea-dhcp-ddns-config}Dynamic DNS Configuration {#dynamic-dns-configuration .sect3}

If there is a [BIND-9.20.20](bind.md "BIND-9.20.20"){.xref} server running, [ISC Kea]{.application} can update the DNS records when it gives an IP address to a client. A sample configuration file is created in `/etc/kea/kea-dhcp-ddns.conf`{.filename}. Adjust the file to suit your needs or overwrite it by running the following command as the `root`{.systemitem} user:

``` userinput
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

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The value of `secret`{.literal} is just an example. Generate the key for your installation by using the [**rndc-confgen -a**]{.command} command or the [**tsig-keygen**]{.command} command which both are provided by [BIND-9.20.20](bind.md "BIND-9.20.20"){.xref}.

In this example configuration, it is assumed that the DNS server runs on the same machine as Kea does (accessible via `127.0.0.1`{.literal}) and that this machine has the IP `192.168.56.2`{.literal}.
:::
::::
:::::::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [keactrl, kea-admin, kea-ctrl-agent, kea-dhcp4, kea-dhcp6, kea-dhcp-ddns, kea-lfc, kea-msg-compiler, and kea-shell]{.segbody}
:::

::: seg
**Installed Libraries:** [libkea-asiodns.so, libkea-asiolink.so, libkea-cc.so, libkea-cfgrpt.so, libkea-config.so, libkea-cryptolink.so, libkea-d2srv.so, libkea-database.so, libkea-dhcp_ddns.so, libkea-dhcp.so, libkea-dhcpsrv.so, libkea-dns.so, libkea-eval.so, libkea-exceptions.so, libkea-hooks.so, libkea-http.so, libkea-log.so, libkea-log-interprocess.so, libkea-mysql.so, libkea-pgsql.so, libkea-process.so, libkea-stats.so, libkea-tcp.so, libkea-util.so, and libkea-util-io.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/kea, /run/kea, /usr/include/kea, /usr/lib/kea, /usr/lib/python3.14/site-packages/kea, /usr/share/kea, /usr/share/doc/kea-3.0.2, /var/lib/kea, and /var/log/kea]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#keactrl}[[**keactrl**]{.command}]{.term}                 is a tool to control (start/stop) the server processes
  []{#kea-admin}[[**kea-admin**]{.command}]{.term}             is a shell script which performs DHCP database maintenance
  []{#kea-ctrl-agent}[[**kea-ctrl-agent**]{.command}]{.term}   is a daemon which exposes a RESTful control interface for managing Kea servers
  []{#kea-dhcp4}[[**kea-dhcp4**]{.command}]{.term}             is the DHCP server daemon providing IPv4 addresses
  []{#kea-dhcp6}[[**kea-dhcp6**]{.command}]{.term}             is the DHCP server daemon providing IPv6 addresses
  []{#kea-dhcp-ddns}[[**kea-dhcp-ddns**]{.command}]{.term}     is the DHCP server daemon that performs Dynamic DNS updates
  []{#kea-lfc}[[**kea-lfc**]{.command}]{.term}                 is the service process that removes redundant information from the files used to provide persistent storage for the memfile database backend. It is run by the Kea DHCP server
  []{#keashell}[[**keashell**]{.command}]{.term}               is a RESTful client to the [ISC Kea]{.application} DHCP services
  ------------------------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::::::::::

::: navfooter
-   [Prev](bind.md "BIND-9.20.20"){accesskey="p"}

    BIND-9.20.20

-   [Next](proftpd.md "ProFTPD-1.3.9a"){accesskey="n"}

    ProFTPD-1.3.9a

-   [Up](majorservers.md "Chapter 20. Major Servers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
