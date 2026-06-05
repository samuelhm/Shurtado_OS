::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](gzip.md "Gzip-1.14"){accesskey="p"}

    Gzip-1.14

-   [Next](kbd.md "Kbd-2.10.0"){accesskey="n"}

    Kbd-2.10.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-iproute2}8.66. IPRoute2-7.0.0 {#iproute2-7.0.0 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The IPRoute2 package contains programs for basic and advanced IPV4-based networking.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [17 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.66.1. Installation of IPRoute2 {#installation-of-iproute2 .sect2}

The [**arpd**]{.command} program included in this package will not be built since it depends on Berkeley DB, which is not installed in LFS. However, a directory and a man page for [**arpd**]{.command} will still be installed. Prevent this by running the commands shown below.

``` userinput
sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8
```

Compile the package:

``` userinput
make NETNS_RUN_DIR=/run/netns
```

This package does not have a working test suite.

Install the package:

``` userinput
make SBINDIR=/usr/sbin install
```

If desired, install the documentation:

``` userinput
install -vDm644 COPYING README* -t /usr/share/doc/iproute2-7.0.0
```
:::

:::::::: {.content lang="en"}
## []{#contents-iproute2}8.66.2. Contents of IPRoute2 {#contents-of-iproute2 .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [bridge, ctstat (link to lnstat), genl, ifstat, ip, lnstat, nstat, routel, rtacct, rtmon, rtpr, rtstat (link to lnstat), ss, and tc]{.segbody}
:::

::: seg
**Installed directories:** [/etc/iproute2, /usr/lib/tc, and /usr/share/doc/iproute2-7.0.0]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#bridge}[[**bridge**]{.command}]{.term} | Configures network bridges                                                                                                                |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#ctstat}[[**ctstat**]{.command}]{.term} | Connection status utility                                                                                                                 |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#genl}[[**genl**]{.command}]{.term}     | Generic netlink utility front end                                                                                                         |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#ifstat}[[**ifstat**]{.command}]{.term} | Shows interface statistics, including the number of packets transmitted and received, by interface                                        |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#ip}[[**ip**]{.command}]{.term}         | The main executable. It has several different functions, including these:                                                                 |
|                                            |                                                                                                                                           |
|                                            | [**ip link *`<device>`***]{.command} allows users to look at the state of devices and to make changes                                     |
|                                            |                                                                                                                                           |
|                                            | [**ip addr**]{.command} allows users to look at addresses and their properties, add new addresses, and delete old ones                    |
|                                            |                                                                                                                                           |
|                                            | [**ip neighbor**]{.command} allows users to look at neighbor bindings and their properties, add new neighbor entries, and delete old ones |
|                                            |                                                                                                                                           |
|                                            | [**ip rule**]{.command} allows users to look at the routing policies and change them                                                      |
|                                            |                                                                                                                                           |
|                                            | [**ip route**]{.command} allows users to look at the routing table and change routing table rules                                         |
|                                            |                                                                                                                                           |
|                                            | [**ip tunnel**]{.command} allows users to look at the IP tunnels and their properties, and change them                                    |
|                                            |                                                                                                                                           |
|                                            | [**ip maddr**]{.command} allows users to look at the multicast addresses and their properties, and change them                            |
|                                            |                                                                                                                                           |
|                                            | [**ip mroute**]{.command} allows users to set, change, or delete the multicast routing                                                    |
|                                            |                                                                                                                                           |
|                                            | [**ip monitor**]{.command} allows users to continuously monitor the state of devices, addresses and routes                                |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#lnstat}[[**lnstat**]{.command}]{.term} | Provides Linux network statistics; it is a generalized and more feature-complete replacement for the old [**rtstat**]{.command} program   |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#nstat}[[**nstat**]{.command}]{.term}   | Displays network statistics                                                                                                               |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#routel}[[**routel**]{.command}]{.term} | A component of [**ip route**]{.command}, for listing the routing tables                                                                   |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#rtacct}[[**rtacct**]{.command}]{.term} | Displays the contents of `/proc/net/rt_acct`{.filename}                                                                                   |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#rtmon}[[**rtmon**]{.command}]{.term}   | Route monitoring utility                                                                                                                  |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#rtpr}[[**rtpr**]{.command}]{.term}     | Converts the output of [**ip -o**]{.command} into a readable form                                                                         |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#rtstat}[[**rtstat**]{.command}]{.term} | Route status utility                                                                                                                      |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#ss}[[**ss**]{.command}]{.term}         | Similar to the [**netstat**]{.command} command; shows active connections                                                                  |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
| []{#tc}[[**tc**]{.command}]{.term}         | Traffic control for Quality of Service (QoS) and Class of Service (CoS) implementations                                                   |
|                                            |                                                                                                                                           |
|                                            | [**tc qdisc**]{.command} allows users to set up the queueing discipline                                                                   |
|                                            |                                                                                                                                           |
|                                            | [**tc class**]{.command} allows users to set up classes based on the queueing discipline scheduling                                       |
|                                            |                                                                                                                                           |
|                                            | [**tc filter**]{.command} allows users to set up the QoS/CoS packet filtering                                                             |
|                                            |                                                                                                                                           |
|                                            | [**tc monitor**]{.command} can be used to view changes made to Traffic Control in the kernel.                                             |
+--------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](gzip.md "Gzip-1.14"){accesskey="p"}

    Gzip-1.14

-   [Next](kbd.md "Kbd-2.10.0"){accesskey="n"}

    Kbd-2.10.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
