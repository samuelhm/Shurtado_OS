::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 4. Security

-   [Prev](iptables.md "iptables-1.8.13"){accesskey="p"}

    iptables-1.8.13

-   [Next](libcap.md "libcap-2.78 with PAM"){accesskey="n"}

    libcap-2.78 with PAM

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fw-firewall}Setting Up a Network Firewall {#setting-up-a-network-firewall .sect1}

::::::::::::::: {.sect1 lang="en"}
::: {.sect2 lang="en"}
## []{#fw-intro}Introduction to Firewall Creation {#introduction-to-firewall-creation .sect2}

The purpose of a firewall is to protect a computer or a network against malicious access. In a perfect world every daemon or service, on every machine, is perfectly configured and immune to security flaws, and all users are trusted implicitly to use the equipment as intended. However, this is rarely, if ever, the case. Daemons may be misconfigured, or updates may not have been applied for known exploits against essential services. Additionally, you may wish to choose which services are accessible by certain machines or users, or you may wish to limit which machines or applications are allowed external access. Alternatively, you simply may not trust some of your applications or users. For these reasons, a carefully designed firewall should be an essential part of system security.

While a firewall can greatly limit the scope of the above issues, do not assume that having a firewall makes careful configuration redundant, or that any negligent misconfiguration is harmless. A firewall does not prevent the exploitation of any service you offer outside of it. Despite having a firewall, you need to keep applications and daemons properly configured and up to date.
:::

:::::::: {.sect2 lang="en"}
## Meaning of the Word "Firewall" {#meaning-of-the-word-firewall .sect2}

The word firewall can have several different meanings.

::: {.sect3 lang="en"}
### Personal Firewall {#personal-firewall .sect3}

This is a hardware device or software program, intended to secure a home or desktop computer connected to the Internet. This type of firewall is highly relevant for users who do not know how their computers might be accessed via the Internet or how to disable that access, especially if they are always online and connected via broadband links.

An example configuration for a personal firewall is provided at [Creating a Personal Firewall With iptables](iptables.md#fw-persFw-ipt "Personal Firewall"){.xref}.
:::

::: {.sect3 lang="en"}
### Masquerading Router {#masquerading-router .sect3}

This is a system placed between the Internet and an intranet. To minimize the risk of compromising the firewall itself, it should generally have only one role—that of protecting the intranet. Although not completely risk-free, the tasks of doing the routing and IP masquerading (rewriting IP headers of the packets it routes from clients with private IP addresses onto the Internet so that they seem to come from the firewall itself) are commonly considered relatively secure.

An example configuration for a masquerading firewall is provided at [Creating a Masquerading Router With iptables](iptables.md#fw-masqRouter-ipt "Masquerading Router"){.xref}.
:::

::: {.sect3 lang="en"}
### BusyBox {#busybox .sect3}

This is often an old computer you may have retired and nearly forgotten, performing masquerading or routing functions, but offering non-firewall services such as a web-cache or mail. This may be used for home networks, but is not to be considered as secure as a firewall only machine because the combination of server and router/firewall on one machine raises the complexity of the setup.

An example configuration for a BusyBox is provided at [Creating a BusyBox With iptables](iptables.md#fw-busybox-ipt "BusyBox"){.xref}.
:::

::: {.sect3 lang="en"}
### Firewall with a Demilitarized Zone {#firewall-with-a-demilitarized-zone .sect3}

This type of firewall performs masquerading or routing, but grants public access to some branch of your network that is physically separated from your regular intranet and is essentially a separate network with direct Internet access. The servers on this network are those which must be easily accessible from both the Internet and intranet. The firewall protects both networks. This type of firewall has a minimum of three network interfaces.
:::

::: {.sect3 lang="en"}
### Packetfilter {#packetfilter .sect3}

This type of firewall does routing or masquerading but does not maintain a state table of ongoing communication streams. It is fast but quite limited in its ability to block undesired packets without blocking desired packets.
:::
::::::::

:::: {.sect2 lang="en"}
## Conclusion {#conclusion .sect2}

::: {.admon .caution}
![\[Caution\]](../images/caution.png)

### Caution

The example configurations provided for [iptables-1.8.13](iptables.md "iptables-1.8.13"){.xref} are not intended to be a complete guide to securing systems. Firewalling is a complex issue that requires careful configuration. The configurations provided by BLFS are intended only to give examples of how a firewall works. They are not intended to fit any particular configuration and may not provide complete protection from an attack.
:::

BLFS provides a utility to manage the kernel Netfilter interface, [iptables-1.8.13](iptables.md "iptables-1.8.13"){.xref}. It has been around since early 2.4 kernels, and has been the standard since. This is likely the set of tools that will be most familiar to existing admins. Other tools have been developed more recently, see the list of further readings below for more details. Here you will find a list of URLs that contain comprehensive information about building firewalls and further securing your system.
::::

::::: {.sect2 lang="en"}
## []{#fw-extra-info}Extra Information {#extra-information .sect2}

:::: {.sect3 lang="en"}
### Further Reading on Firewalls {#further-reading-on-firewalls .sect3}

::: blockquote
> ::: literallayout
> \
> [www.netfilter.org - Homepage of the netfilter/iptables/nftables projects](https://www.netfilter.org/){.ulink}\
> [Netfilter related FAQ](https://www.netfilter.org/documentation/FAQ/netfilter-faq.md){.ulink}\
> [Netfilter related HOWTO's](https://www.netfilter.org/documentation/index.md#HOWTO){.ulink}\
> [nftables HOWTO](https://wiki.nftables.org/wiki-nftables/index.php/Main_Page){.ulink}\
> [tldp.org/LDP/nag2/x-087-2-firewall.html](https://tldp.org/LDP/nag2/x-087-2-firewall.md){.ulink}\
> [tldp.org/HOWTO/Security-HOWTO.html](https://tldp.org/HOWTO/Security-HOWTO.md){.ulink}\
> [tldp.org/HOWTO/Firewall-HOWTO.html](https://tldp.org/HOWTO/Firewall-HOWTO.md){.ulink}\
> [linuxsecurity.com/howtos](https://linuxsecurity.com/howtos){.ulink}\
> [www.circlemud.org/jelson/writings/security/index.htm](https://www.circlemud.org/jelson/writings/security/index.htm){.ulink}\
> [insecure.org/reading.html](https://insecure.org/reading.md){.ulink}\
>         
> :::
:::
::::
:::::
:::::::::::::::

::: navfooter
-   [Prev](iptables.md "iptables-1.8.13"){accesskey="p"}

    iptables-1.8.13

-   [Next](libcap.md "libcap-2.78 with PAM"){accesskey="n"}

    libcap-2.78 with PAM

-   [Up](security.md "Chapter 4. Security"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
