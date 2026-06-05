::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](wget.md "Wget-1.25.0"){accesskey="p"}

    Wget-1.25.0

-   [Next](iw.md "iw-6.17"){accesskey="n"}

    iw-6.17

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#wireless-kernel}Configuring the Linux Kernel for Wireless {#configuring-the-linux-kernel-for-wireless .sect1}

::: {.sect1 lang="en"}
Before using any userspace tools for connecting to a wireless AP, the Linux kernel must be configured to drive the wireless NIC properly. Enable the following options in the kernel configuration as well as specific device drivers for your hardware and recompile the kernel if necessary:

``` screen
[*] Networking support --->                                                [NET]
  [*] Wireless --->                                                   [WIRELESS]
    <*/M>   cfg80211 - wireless configuration API                     [CFG80211]
    < /*/M>   Generic IEEE 802.11 Networking Stack (mac80211)         [MAC80211]

Device Drivers --->
  [*] Network device support --->                                   [NETDEVICES]
    [*] Wireless LAN --->                                                 [WLAN]
```

Open the [“[Wireless LAN]{.quote}”]{.quote} submenu and select the options that support your hardware. [**lspci**]{.command} from [pciutils-3.15.0](../general/pciutils.md "pciutils-3.15.0"){.xref} or [**lsusb**]{.command} from [usbutils-019](../general/usbutils.md "usbutils-019"){.xref} can be used to view your hardware configuration. Note that many (though not all) options for the wireless NICs depend on *`CONFIG_MAC80211`*. After the correct drivers are loaded, the interface will appear in `/sys/class/net`{.filename}, or in the output of the [**ip link**]{.command} command.

Many wireless NIC drivers require firmware. If you've enabled the correct driver in the kernel configuration but it fails to load (with messages like `Direct firmware load for `{.computeroutput}*`<filename`*`> failed with error -2`{.computeroutput}, it means that you need to install the firmware or the wireless NIC won't work. Read [About Firmware](../postlfs/firmware.md "About Firmware"){.xref} for more details.
:::

::: navfooter
-   [Prev](wget.md "Wget-1.25.0"){accesskey="p"}

    Wget-1.25.0

-   [Next](iw.md "iw-6.17"){accesskey="n"}

    iw-6.17

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
