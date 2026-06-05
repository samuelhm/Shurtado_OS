<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](wget.md "Wget-1.25.0")

    Wget-1.25.0

-   [Next](iw.md "iw-6.17")

    iw-6.17

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Configuring the Linux Kernel for Wireless {#configuring-the-linux-kernel-for-wireless}

<div class="sect1" lang="en">
Before using any userspace tools for connecting to a wireless AP, the Linux kernel must be configured to drive the wireless NIC properly. Enable the following options in the kernel configuration as well as specific device drivers for your hardware and recompile the kernel if necessary:

```console
[*] Networking support --->                                                [NET]
  [*] Wireless --->                                                   [WIRELESS]
    <*/M>   cfg80211 - wireless configuration API                     [CFG80211]
    < /*/M>   Generic IEEE 802.11 Networking Stack (mac80211)         [MAC80211]

Device Drivers --->
  [*] Network device support --->                                   [NETDEVICES]
    [*] Wireless LAN --->                                                 [WLAN]
```

Open the <span class="quote">“<span class="quote">Wireless LAN</span>”</span> submenu and select the options that support your hardware. <span class="command"><strong>lspci</strong></span> from <a class="xref" href="../general/pciutils.md" title="pciutils-3.15.0">pciutils-3.15.0</a> or <span class="command"><strong>lsusb</strong></span> from <a class="xref" href="../general/usbutils.md" title="usbutils-019">usbutils-019</a> can be used to view your hardware configuration. Note that many (though not all) options for the wireless NICs depend on *`CONFIG_MAC80211`*. After the correct drivers are loaded, the interface will appear in <code class="filename">/sys/class/net</code>, or in the output of the <span class="command"><strong>ip link</strong></span> command.

Many wireless NIC drivers require firmware. If you've enabled the correct driver in the kernel configuration but it fails to load (with messages like <code class="computeroutput">Direct firmware load for </code>*`<filename`*<code class="computeroutput">> failed with error -2</code>, it means that you need to install the firmware or the wireless NIC won't work. Read <a class="xref" href="../postlfs/firmware.md" title="About Firmware">About Firmware</a> for more details.
</div>

<div class="navfooter">
-   [Prev](wget.md "Wget-1.25.0")

    Wget-1.25.0

-   [Next](iw.md "iw-6.17")

    iw-6.17

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
