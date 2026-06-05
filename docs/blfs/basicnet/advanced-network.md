<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 14. Connecting to a Network

-   [Prev](connect.md "Connecting to a Network")

    Connecting to a Network

-   [Next](netprogs.md "Networking Programs")

    Networking Programs

-   [Up](connect.md "Chapter 14. Connecting to a Network")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Advanced Network Setup {#advanced-network-setup}

<div class="sect1" lang="en">
<div class="sect2" lang="en">
## Network Bridge {#network-bridge}

<div class="kernel" lang="en">
### Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

```console
Networking support: Y
  Networking options:
    802.1d Ethernet Bridging: M or Y
```
</div>

<div class="sect3" lang="en">
### Setting up a Network Bridge {#setting-up-a-network-bridge}

In this section we are going to discuss how to set up a network bridge using <span class="command"><strong>systemd-networkd</strong></span>. In the examples below, *`eth0`* represents the external interface that is being bridged, while *`br0`* represents the bridge interface.

To create a bridge interface, create the following configuration file by running the following command as the <code class="systemitem">root</code> user:

```bash
cat > /etc/systemd/network/50-br0.netdev << EOF
[NetDev]
Name=br0
Kind=bridge
EOF
```

To assign a network interface to a bridge, create the following configuration file by running the following command as the <code class="systemitem">root</code> user:

```bash
cat > /etc/systemd/network/51-eth0.network << EOF
[Match]
Name=eth0

[Network]
Bridge=br0
EOF
```

Repeat the process for any other interfaces that need to be bridged. Note that it is important that nothing assigns any addresses to the bridged interfaces. If you are using <a class="xref" href="networkmanager.md" title="NetworkManager-1.56.1">NetworkManager-1.56.1</a>, make sure you configure them to ignore the bridged interfaces, as well as the bridge interface itself.

If you are on a network which uses DHCP for assigning ip addresses, create the following configuration file by running the following command as the <code class="systemitem">root</code> user:

```bash
cat > /etc/systemd/network/60-br0.network << EOF
[Match]
Name=br0

[Network]
DHCP=yes
EOF
```

Alternatively, if using a static ip setup, create the following configuration file by running the following command as the <code class="systemitem">root</code> user:

```bash
cat > /etc/systemd/network/60-br0.network << EOF
[Match]
Name=br0

[Network]
Address=192.168.0.2/24
Gateway=192.168.0.1
DNS=192.168.0.1
EOF
```

If you want to contact another system connected to the bridge, for example a qemu instance, then you also need to enable IP forwarding. Again as the <code class="systemitem">root</code> user, do:

```bash
echo 'IPForward=ipv4' >> /etc/systemd/network/60-br0.network
```

To bring up the bridge interface, simply restart the <span class="command"><strong>systemd-networkd</strong></span> daemon by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl restart systemd-networkd
```
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](connect.md "Connecting to a Network")

    Connecting to a Network

-   [Next](netprogs.md "Networking Programs")

    Networking Programs

-   [Up](connect.md "Chapter 14. Connecting to a Network")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
