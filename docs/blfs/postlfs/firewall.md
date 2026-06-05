<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](iptables.md "iptables-1.8.13")

    iptables-1.8.13

-   [Next](libcap.md "libcap-2.78 with PAM")

    libcap-2.78 with PAM

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Setting Up a Network Firewall {#setting-up-a-network-firewall}

<div class="sect1" lang="en">
<div class="sect2" lang="en">
## Introduction to Firewall Creation {#introduction-to-firewall-creation}

The purpose of a firewall is to protect a computer or a network against malicious access. In a perfect world every daemon or service, on every machine, is perfectly configured and immune to security flaws, and all users are trusted implicitly to use the equipment as intended. However, this is rarely, if ever, the case. Daemons may be misconfigured, or updates may not have been applied for known exploits against essential services. Additionally, you may wish to choose which services are accessible by certain machines or users, or you may wish to limit which machines or applications are allowed external access. Alternatively, you simply may not trust some of your applications or users. For these reasons, a carefully designed firewall should be an essential part of system security.

While a firewall can greatly limit the scope of the above issues, do not assume that having a firewall makes careful configuration redundant, or that any negligent misconfiguration is harmless. A firewall does not prevent the exploitation of any service you offer outside of it. Despite having a firewall, you need to keep applications and daemons properly configured and up to date.
</div>

<div class="sect2" lang="en">
## Meaning of the Word "Firewall" {#meaning-of-the-word-firewall}

The word firewall can have several different meanings.

<div class="sect3" lang="en">
### Personal Firewall {#personal-firewall}

This is a hardware device or software program, intended to secure a home or desktop computer connected to the Internet. This type of firewall is highly relevant for users who do not know how their computers might be accessed via the Internet or how to disable that access, especially if they are always online and connected via broadband links.

An example configuration for a personal firewall is provided at <a class="xref" href="iptables.md#fw-persFw-ipt" title="Personal Firewall">Creating a Personal Firewall With iptables</a>.
</div>

<div class="sect3" lang="en">
### Masquerading Router {#masquerading-router}

This is a system placed between the Internet and an intranet. To minimize the risk of compromising the firewall itself, it should generally have only one role—that of protecting the intranet. Although not completely risk-free, the tasks of doing the routing and IP masquerading (rewriting IP headers of the packets it routes from clients with private IP addresses onto the Internet so that they seem to come from the firewall itself) are commonly considered relatively secure.

An example configuration for a masquerading firewall is provided at <a class="xref" href="iptables.md#fw-masqRouter-ipt" title="Masquerading Router">Creating a Masquerading Router With iptables</a>.
</div>

<div class="sect3" lang="en">
### BusyBox {#busybox}

This is often an old computer you may have retired and nearly forgotten, performing masquerading or routing functions, but offering non-firewall services such as a web-cache or mail. This may be used for home networks, but is not to be considered as secure as a firewall only machine because the combination of server and router/firewall on one machine raises the complexity of the setup.

An example configuration for a BusyBox is provided at <a class="xref" href="iptables.md#fw-busybox-ipt" title="BusyBox">Creating a BusyBox With iptables</a>.
</div>

<div class="sect3" lang="en">
### Firewall with a Demilitarized Zone {#firewall-with-a-demilitarized-zone}

This type of firewall performs masquerading or routing, but grants public access to some branch of your network that is physically separated from your regular intranet and is essentially a separate network with direct Internet access. The servers on this network are those which must be easily accessible from both the Internet and intranet. The firewall protects both networks. This type of firewall has a minimum of three network interfaces.
</div>

<div class="sect3" lang="en">
### Packetfilter {#packetfilter}

This type of firewall does routing or masquerading but does not maintain a state table of ongoing communication streams. It is fast but quite limited in its ability to block undesired packets without blocking desired packets.
</div>
</div>

<div class="sect2" lang="en">
## Conclusion {#conclusion}

<div class="admon caution">
![\[Caution\]](../images/caution.png)

### Caution

The example configurations provided for <a class="xref" href="iptables.md" title="iptables-1.8.13">iptables-1.8.13</a> are not intended to be a complete guide to securing systems. Firewalling is a complex issue that requires careful configuration. The configurations provided by BLFS are intended only to give examples of how a firewall works. They are not intended to fit any particular configuration and may not provide complete protection from an attack.
</div>

BLFS provides a utility to manage the kernel Netfilter interface, <a class="xref" href="iptables.md" title="iptables-1.8.13">iptables-1.8.13</a>. It has been around since early 2.4 kernels, and has been the standard since. This is likely the set of tools that will be most familiar to existing admins. Other tools have been developed more recently, see the list of further readings below for more details. Here you will find a list of URLs that contain comprehensive information about building firewalls and further securing your system.
</div>

<div class="sect2" lang="en">
## Extra Information {#extra-information}

<div class="sect3" lang="en">
### Further Reading on Firewalls {#further-reading-on-firewalls}

<div class="blockquote">
> ::: literallayout
> \
> <a class="ulink" href="https://www.netfilter.org/">www.netfilter.org - Homepage of the netfilter/iptables/nftables projects</a>\
> <a class="ulink" href="https://www.netfilter.org/documentation/FAQ/netfilter-faq.md">Netfilter related FAQ</a>\
> <a class="ulink" href="https://www.netfilter.org/documentation/index.md#HOWTO">Netfilter related HOWTO's</a>\
> <a class="ulink" href="https://wiki.nftables.org/wiki-nftables/index.php/Main_Page">nftables HOWTO</a>\
> <a class="ulink" href="https://tldp.org/LDP/nag2/x-087-2-firewall.md">tldp.org/LDP/nag2/x-087-2-firewall.html</a>\
> <a class="ulink" href="https://tldp.org/HOWTO/Security-HOWTO.md">tldp.org/HOWTO/Security-HOWTO.html</a>\
> <a class="ulink" href="https://tldp.org/HOWTO/Firewall-HOWTO.md">tldp.org/HOWTO/Firewall-HOWTO.html</a>\
> <a class="ulink" href="https://linuxsecurity.com/howtos">linuxsecurity.com/howtos</a>\
> <a class="ulink" href="https://www.circlemud.org/jelson/writings/security/index.htm">www.circlemud.org/jelson/writings/security/index.htm</a>\
> <a class="ulink" href="https://insecure.org/reading.md">insecure.org/reading.html</a>\
>         
> :::
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](iptables.md "iptables-1.8.13")

    iptables-1.8.13

-   [Next](libcap.md "libcap-2.78 with PAM")

    libcap-2.78 with PAM

-   [Up](security.md "Chapter 4. Security")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
