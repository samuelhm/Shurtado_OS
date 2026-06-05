::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libndp.md "libndp-1.9"){accesskey="p"}

    libndp-1.9

-   [Next](libnma.md "libnma-1.10.6"){accesskey="n"}

    libnma-1.10.6

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libnl}libnl-3.12.0 {#libnl-3.12.0 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libnl {#introduction-to-libnl .sect2}

The [libnl]{.application} suite is a collection of libraries providing APIs to netlink protocol based Linux kernel interfaces.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/thom311/libnl/releases/download/libnl3_12_0/libnl-3.12.0.tar.gz](https://github.com/thom311/libnl/releases/download/libnl3_12_0/libnl-3.12.0.tar.gz){.ulink}

-   Download MD5 sum: f9112ca215807fe65eecd583d8f180cc

-   Download size: 1.1 MB

-   Estimated disk space required: 32 MB (with API documentation)

-   Estimated build time: 0.2 SBU (with API documentation)
:::

### Optional Download

::: itemizedlist
-   Download (HTTP): [https://github.com/thom311/libnl/releases/download/libnl3_12_0/libnl-doc-3.12.0.tar.gz](https://github.com/thom311/libnl/releases/download/libnl3_12_0/libnl-doc-3.12.0.tar.gz){.ulink}

-   Download MD5 sum: befe7b001c82640f8e937c603afc7edc

-   Download size: 4.3 MB
:::
::::::

:::: {.installation lang="en"}
## Installation of libnl {#installation-of-libnl .sect2}

Install [libnl]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  &&
make
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If the [**make**]{.command} command was executed with multiple parallel jobs enabled, it might disrupt the terminal mode and cause some [“[amusing]{.quote}”]{.quote} visual effects. In the worst case, this issue may cause keyboard inputs not displayed on the screen at all (but you can still run any command if you can type it correctly). Run the [**reset**]{.command} command to fix such an issue.
:::

If you wish to run the tests, check that the following options are enabled in the kernel configuration and recompile the kernel if necessary. Some of them may not be strictly needed, but they should support a complete test coverage.

``` screen
General setup --->
  -*- Namespaces support --->                                       [NAMESPACES]
    [*] User namespace                                                 [USER_NS]
    [*] Network namespace                                               [NET_NS]

[*] Networking support --->                                                [NET]
  Networking options --->
    [*]   TCP/IP networking                                               [INET]
    [*]     IP: advanced router                             [IP_ADVANCED_ROUTER]
    [*]       IP: policy routing                            [IP_MULTIPLE_TABLES]
    <*/M>   IP: tunneling                                             [NET_IPIP]
    <*/M>   IP: GRE demultiplexer                              [NET_IPGRE_DEMUX]
    <*/M>   IP: GRE tunnels over IP                                  [NET_IPGRE]
    <*/M>   Virtual (secure) IP: tunneling                           [NET_IPVTI]
    <*>     The IPv6 protocol --->                                        [IPV6]
      <*/M>   IPv6: IPv6-in-IPv4 tunnel (SIT driver)                  [IPV6_SIT]
      <*/M>   IPv6: IP-in-IPv6 tunnel (RFC2473)                    [IPV6_TUNNEL]
      [*]     IPv6: Multiple Routing Tables               [IPV6_MULTIPLE_TABLES]
    [*]   Network packet filtering framework (Netfilter) --->        [NETFILTER]
      Core Netfilter Configuration --->
        <*/M> Netfilter nf_tables support                            [NF_TABLES]
        [*]     Netfilter nf_tables netdev tables support     [NF_TABLES_NETDEV]
        {*/M}   Netfilter packet duplication support             [NF_DUP_NETDEV]
        <*/M>   Netfilter nf_tables netdev packet forwarding support
                                                           ...  [NFT_FWD_NETDEV]
    <*/M> 802.1d Ethernet Bridging                                      [BRIDGE]
    <*/M> 802.1Q/802.1ad VLAN Support                               [VLAN_8021Q]
    -*-   L3 Master device support                           [NET_L3_MASTER_DEV]

Device Drivers --->
  [*] Network device support --->                                   [NETDEVICES]
    [*]   Network core driver support                                 [NET_CORE]
    <*/M>   Bonding driver support                                     [BONDING]
    <*/M>   Dummy net driver support                                     [DUMMY]
    <*/M>   Intermediate Functional Block support                          [IFB]
    <*/M>   MAC-VLAN support                                           [MACVLAN]
    <*/M>     MAC-VLAN based tap driver                                [MACVTAP]
    <*/M>   IP-VLAN support                                             [IPVLAN]
    <*/M>   Virtual eXtensible Local Area Network (VXLAN)                [VXLAN]
    <*/M>   IEEE 802.1AE MAC-level encryption (MACsec)                  [MACSEC]
    <*/M>   Virtual ethernet pair device                                  [VETH]
    <*/M>   Virtual Routing and Forwarding (Lite)                      [NET_VRF]
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you wish to install the API documentation, as the `root`{.systemitem} user:

``` root
mkdir -vp /usr/share/doc/libnl-3.12.0 &&
tar -xf ../libnl-doc-3.12.0.tar.gz --strip-components=1 --no-same-owner \
    -C  /usr/share/doc/libnl-3.12.0
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--disable-cli`{.option}: Use this parameter if you don't want to install cli tools provided by the package.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [genl-ctrl-list, idiag-socket-details, nl-class-add, nl-class-delete, nl-classid-lookup, nl-class-list, nl-cls-add, nl-cls-delete, nl-cls-list, nl-link-list, nl-pktloc-lookup, nl-qdisc-add, nl-qdisc-delete, nl-qdisc-list, and 48 other helper programs with nl- and nf- prefixes]{.segbody}
:::

::: seg
**Installed Libraries:** [libnl-3.so, libnl-cli-3.so, libnl-genl-3.so, libnl-idiag-3.so, libnl-nf-3.so, libnl-route-3.so, libnl-xfrm-3.so, and cli modules under /usr/lib/libnl/cli tree]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/libnl, /usr/include/libnl3, /usr/lib/libnl, and /usr/share/doc/libnl-3.12.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#genl-ctrl-list}[[**genl-ctrl-list**]{.command}]{.term}         queries the Generic Netlink controller in the kernel and prints a list of all registered Generic Netlink families including the version of the interface that has been registered
  []{#nl-class-add}[[**nl-class-add**]{.command}]{.term}             adds, updates, or replaces Traffic Classes
  []{#nl-class-delete}[[**nl-class-delete**]{.command}]{.term}       deletes Traffic Classes
  []{#nl-classid-lookup}[[**nl-classid-lookup**]{.command}]{.term}   is used to resolve qdisc/class names to classid values and vice versa
  []{#nl-class-list}[[**nl-class-list**]{.command}]{.term}           lists Traffic Classes
  []{#nl-cls-add}[[**nl-cls-add**]{.command}]{.term}                 adds a classifier
  []{#nl-cls-delete}[[**nl-cls-delete**]{.command}]{.term}           deletes a classifier
  []{#nl-cls-list}[[**nl-cls-list**]{.command}]{.term}               lists classifiers
  []{#nl-link-list}[[**nl-link-list**]{.command}]{.term}             dumps link attributes
  []{#nl-pktloc-lookup}[[**nl-pktloc-lookup**]{.command}]{.term}     allows the lookup of packet location definitions
  []{#nl-qdisc-add}[[**nl-qdisc-add**]{.command}]{.term}             adds queueing disciplines (qdiscs) in the kernel
  []{#nl-qdisc-delete}[[**nl-qdisc-delete**]{.command}]{.term}       deletes queueing disciplines (qdiscs) in the kernel
  []{#nl-qdisc-list}[[**nl-qdisc-list**]{.command}]{.term}           lists queueing disciplines (qdiscs) in the kernel
  []{#libnl-lib}[`libnl*-3.so`{.filename}]{.term}                    These libraries contain API functions used to access Netlink interfaces in Linux kernel
  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](libndp.md "libndp-1.9"){accesskey="p"}

    libndp-1.9

-   [Next](libnma.md "libnma-1.10.6"){accesskey="n"}

    libnma-1.10.6

-   [Up](netlibs.md "Chapter 17. Networking Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
