::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 14. Connecting to a Network

-   [Prev](connect.md "Connecting to a Network"){accesskey="p"}

    Connecting to a Network

-   [Next](netprogs.md "Networking Programs"){accesskey="n"}

    Networking Programs

-   [Up](connect.md "Chapter 14. Connecting to a Network"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#advanced-network}Advanced Network Setup {#advanced-network-setup .sect1}

:::::: {.sect1 lang="en"}
::::: {.sect2 lang="en"}
## []{#network-bridge}Network Bridge {#network-bridge .sect2}

::: {.kernel lang="en"}
### []{#advanced-network-bridge-kernel}Kernel Configuration {#kernel-configuration .sect3}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

``` screen
Networking support: Y
  Networking options:
    802.1d Ethernet Bridging: M or Y
```
:::

::: {.sect3 lang="en"}
### Setting up a Network Bridge {#setting-up-a-network-bridge .sect3}

In this section we are going to discuss how to set up a network bridge using [**systemd-networkd**]{.command}. In the examples below, *`eth0`* represents the external interface that is being bridged, while *`br0`* represents the bridge interface.

To create a bridge interface, create the following configuration file by running the following command as the `root`{.systemitem} user:

``` root
cat > /etc/systemd/network/50-br0.netdev << EOF
[NetDev]
Name=br0
Kind=bridge
EOF
```

To assign a network interface to a bridge, create the following configuration file by running the following command as the `root`{.systemitem} user:

``` root
cat > /etc/systemd/network/51-eth0.network << EOF
[Match]
Name=eth0

[Network]
Bridge=br0
EOF
```

Repeat the process for any other interfaces that need to be bridged. Note that it is important that nothing assigns any addresses to the bridged interfaces. If you are using [NetworkManager-1.56.1](networkmanager.md "NetworkManager-1.56.1"){.xref}, make sure you configure them to ignore the bridged interfaces, as well as the bridge interface itself.

If you are on a network which uses DHCP for assigning ip addresses, create the following configuration file by running the following command as the `root`{.systemitem} user:

``` root
cat > /etc/systemd/network/60-br0.network << EOF
[Match]
Name=br0

[Network]
DHCP=yes
EOF
```

Alternatively, if using a static ip setup, create the following configuration file by running the following command as the `root`{.systemitem} user:

``` root
cat > /etc/systemd/network/60-br0.network << EOF
[Match]
Name=br0

[Network]
Address=192.168.0.2/24
Gateway=192.168.0.1
DNS=192.168.0.1
EOF
```

If you want to contact another system connected to the bridge, for example a qemu instance, then you also need to enable IP forwarding. Again as the `root`{.systemitem} user, do:

``` root
echo 'IPForward=ipv4' >> /etc/systemd/network/60-br0.network
```

To bring up the bridge interface, simply restart the [**systemd-networkd**]{.command} daemon by running the following command as the `root`{.systemitem} user:

``` root
systemctl restart systemd-networkd
```
:::
:::::
::::::

::: navfooter
-   [Prev](connect.md "Connecting to a Network"){accesskey="p"}

    Connecting to a Network

-   [Next](netprogs.md "Networking Programs"){accesskey="n"}

    Networking Programs

-   [Up](connect.md "Chapter 14. Connecting to a Network"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
