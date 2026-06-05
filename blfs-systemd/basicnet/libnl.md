<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](libndp.md "libndp-1.9")

    libndp-1.9

-   [Next](libnma.md "libnma-1.10.6")

    libnma-1.10.6

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libnl-3.12.0 {#libnl-3.12.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libnl {#introduction-to-libnl}

The <span class="application">libnl</span> suite is a collection of libraries providing APIs to netlink protocol based Linux kernel interfaces.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/thom311/libnl/releases/download/libnl3_12_0/libnl-3.12.0.tar.gz">https://github.com/thom311/libnl/releases/download/libnl3_12_0/libnl-3.12.0.tar.gz</a>

-   Download MD5 sum: f9112ca215807fe65eecd583d8f180cc

-   Download size: 1.1 MB

-   Estimated disk space required: 32 MB (with API documentation)

-   Estimated build time: 0.2 SBU (with API documentation)
</div>

### Optional Download

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/thom311/libnl/releases/download/libnl3_12_0/libnl-doc-3.12.0.tar.gz">https://github.com/thom311/libnl/releases/download/libnl3_12_0/libnl-doc-3.12.0.tar.gz</a>

-   Download MD5 sum: befe7b001c82640f8e937c603afc7edc

-   Download size: 4.3 MB
</div>
</div>

<div class="installation" lang="en">
## Installation of libnl {#installation-of-libnl}

Install <span class="application">libnl</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  &&
make
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If the <span class="command"><strong>make</strong></span> command was executed with multiple parallel jobs enabled, it might disrupt the terminal mode and cause some <span class="quote">“<span class="quote">amusing</span>”</span> visual effects. In the worst case, this issue may cause keyboard inputs not displayed on the screen at all (but you can still run any command if you can type it correctly). Run the <span class="command"><strong>reset</strong></span> command to fix such an issue.
</div>

If you wish to run the tests, check that the following options are enabled in the kernel configuration and recompile the kernel if necessary. Some of them may not be strictly needed, but they should support a complete test coverage.

```console
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

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you wish to install the API documentation, as the <code class="systemitem">root</code> user:

```bash
mkdir -vp /usr/share/doc/libnl-3.12.0 &&
tar -xf ../libnl-doc-3.12.0.tar.gz --strip-components=1 --no-same-owner \
    -C  /usr/share/doc/libnl-3.12.0
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--disable-cli</code>: Use this parameter if you don't want to install cli tools provided by the package.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">genl-ctrl-list, idiag-socket-details, nl-class-add, nl-class-delete, nl-classid-lookup, nl-class-list, nl-cls-add, nl-cls-delete, nl-cls-list, nl-link-list, nl-pktloc-lookup, nl-qdisc-add, nl-qdisc-delete, nl-qdisc-list, and 48 other helper programs with nl- and nf- prefixes</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libnl-3.so, libnl-cli-3.so, libnl-genl-3.so, libnl-idiag-3.so, libnl-nf-3.so, libnl-route-3.so, libnl-xfrm-3.so, and cli modules under /usr/lib/libnl/cli tree</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/libnl, /usr/include/libnl3, /usr/lib/libnl, and /usr/share/doc/libnl-3.12.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="genl-ctrl-list"></a><span class="command"><span class="term"><strong>genl-ctrl-list</strong></span></span>         queries the Generic Netlink controller in the kernel and prints a list of all registered Generic Netlink families including the version of the interface that has been registered
  <a id="nl-class-add"></a><span class="command"><span class="term"><strong>nl-class-add</strong></span></span>             adds, updates, or replaces Traffic Classes
  <a id="nl-class-delete"></a><span class="command"><span class="term"><strong>nl-class-delete</strong></span></span>       deletes Traffic Classes
  <a id="nl-classid-lookup"></a><span class="command"><span class="term"><strong>nl-classid-lookup</strong></span></span>   is used to resolve qdisc/class names to classid values and vice versa
  <a id="nl-class-list"></a><span class="command"><span class="term"><strong>nl-class-list</strong></span></span>           lists Traffic Classes
  <a id="nl-cls-add"></a><span class="command"><span class="term"><strong>nl-cls-add</strong></span></span>                 adds a classifier
  <a id="nl-cls-delete"></a><span class="command"><span class="term"><strong>nl-cls-delete</strong></span></span>           deletes a classifier
  <a id="nl-cls-list"></a><span class="command"><span class="term"><strong>nl-cls-list</strong></span></span>               lists classifiers
  <a id="nl-link-list"></a><span class="command"><span class="term"><strong>nl-link-list</strong></span></span>             dumps link attributes
  <a id="nl-pktloc-lookup"></a><span class="command"><span class="term"><strong>nl-pktloc-lookup</strong></span></span>     allows the lookup of packet location definitions
  <a id="nl-qdisc-add"></a><span class="command"><span class="term"><strong>nl-qdisc-add</strong></span></span>             adds queueing disciplines (qdiscs) in the kernel
  <a id="nl-qdisc-delete"></a><span class="command"><span class="term"><strong>nl-qdisc-delete</strong></span></span>       deletes queueing disciplines (qdiscs) in the kernel
  <a id="nl-qdisc-list"></a><span class="command"><span class="term"><strong>nl-qdisc-list</strong></span></span>           lists queueing disciplines (qdiscs) in the kernel
  <a id="libnl-lib"></a><span class="term"><code class="filename">libnl*-3.so</code></span>                    These libraries contain API functions used to access Netlink interfaces in Linux kernel
  ------------------------------------------------------------------ -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libndp.md "libndp-1.9")

    libndp-1.9

-   [Next](libnma.md "libnma-1.10.6")

    libnma-1.10.6

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
