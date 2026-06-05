<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](bind-utils.md "BIND Utilities-9.20.20")

    BIND Utilities-9.20.20

-   [Next](network-manager-applet.md "network-manager-applet-1.34.0")

    network-manager-applet-1.34.0

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# NetworkManager-1.56.1 {#networkmanager-1.56.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to NetworkManager {#introduction-to-networkmanager}

<span class="application">NetworkManager</span> is a set of co-operative tools that make networking simple and straightforward. Whether you use WiFi, wired, 3G, or Bluetooth, NetworkManager allows you to quickly move from one network to another: Once a network has been configured and joined once, it can be detected and re-joined automatically the next time it's available.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Make sure that you disable the <span class="command"><strong>systemd-networkd</strong></span> service or configure it not to manage the interfaces you want to manage with <span class="application">NetworkManager</span>.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/NetworkManager/NetworkManager/-/releases/1.56.1/downloads/NetworkManager-1.56.1.tar.xz">https://gitlab.freedesktop.org/NetworkManager/NetworkManager/-/releases/1.56.1/downloads/NetworkManager-1.56.1.tar.xz</a>

-   Download MD5 sum: e21ec74b24f72a044e75c0ae92a9bb62

-   Download size: 6.0 MB

-   Estimated disk space required: 365 MB (with tests and documentation)

-   Estimated build time: 0.8 SBU (with tests, using parallelism=4)
</div>

### NetworkManager Dependencies

#### Required

<a class="xref" href="libndp.md" title="libndp-1.9">libndp-1.9</a>

#### Recommended

<a class="xref" href="curl.md" title="cURL-8.20.0">cURL-8.20.0</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../postlfs/iptables.md" title="iptables-1.8.13">iptables-1.8.13</a>, <a class="xref" href="libpsl.md" title="libpsl-0.21.5">libpsl-0.21.5</a>, <a class="xref" href="../general/newt.md" title="newt-0.52.25">newt-0.52.25</a> (for <span class="command"><strong>nmtui</strong></span>), <a class="xref" href="../postlfs/nss.md" title="NSS-3.124">nss-3.124</a>, <a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a> (runtime), <a class="xref" href="../general/python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>, <a class="xref" href="../general/systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a>,</span> <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>, and <a class="xref" href="wpa_supplicant.md" title="wpa_supplicant-2.11">wpa_supplicant-2.11</a> (runtime, built with D-Bus support)

#### Optional

<a class="xref" href="../general/bluez.md" title="BlueZ-5.86">BlueZ-5.86</a>, <a class="xref" href="../general/python-modules.md#dbus-python" title="D-Bus Python-1.4.0">D-Bus Python-1.4.0</a> (for the test suite), <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a> (can be used instead of <a class="xref" href="../postlfs/nss.md" title="NSS-3.124">nss-3.124</a>), <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="../general/jansson.md" title="Jansson-2.15.0">jansson-2.15.0</a>, <a class="xref" href="../general/libnvme.md" title="libnvme-1.16.1">libnvme-1.16.1</a>, <a class="xref" href="../general/ModemManager.md" title="ModemManager-1.24.2">ModemManager-1.24.2</a>, <a class="xref" href="../general/upower.md" title="UPower-1.91.2">UPower-1.91.2</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="ulink" href="https://thekelleys.org.uk/dnsmasq/doc.md">dnsmasq</a>, <a class="ulink" href="https://firewalld.org/">firewalld</a>, <a class="ulink" href="https://github.com/Distrotech/libaudit">libaudit</a>, <a class="ulink" href="https://github.com/jpirko/libteam">libteam</a>, <a class="ulink" href="https://gitlab.gnome.org/GNOME/mobile-broadband-provider-info/">mobile-broadband-provider-info</a>, <a class="ulink" href="https://www.samba.org/ftp/ppp/">PPP</a>, and <a class="ulink" href="https://dianne.skoll.ca/projects/rp-pppoe/">RP-PPPoE</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

If you wish to run the tests, check that at least the following options are enabled in the kernel configuration. Those options have been determined to be necessary, but may not be sufficient. Recompile the kernel if necessary:

```console
[*] Networking support --->                                                [NET]
  Networking options --->
    [*]   TCP/IP networking                                               [INET]
    <*/M>   IP: tunneling                                             [NET_IPIP]
    <*/M>   IP: GRE demultiplexer                              [NET_IPGRE_DEMUX]
    <*/M>   IP: GRE tunnels over IP                                  [NET_IPGRE]
    <*>     The IPv6 protocol --->                                        [IPV6]
      <*/M>   IPv6: IPv6-in-IPv4 tunnel (SIT driver)                  [IPV6_SIT]
      <*/M>   IPv6: GRE tunnel                                        [IPV6_GRE]
      [*]     IPv6: Multiple Routing Tables               [IPV6_MULTIPLE_TABLES]
    [*]     MPTCP: Multipath TCP                                         [MPTCP]
    [*]       MPTCP: IPv6 support for Multipath TCP                 [MPTCP_IPV6]
    <*/M> 802.1Q/802.1ad VLAN Support                               [VLAN_8021Q]
    [*]   QoS and/or fair queueing --->                              [NET_SCHED]
      <*> Stochastic Fairness Queueing (SFQ)                       [NET_SCH_SFQ]
      <*> Token Bucket Filter (TBF)                                [NET_SCH_TBF]
      <*> Fair Queue Controlled Delay AQM (FQ_CODEL)          [NET_SCH_FQ_CODEL]
      <*> Ingress/classifier-action Qdisc                      [NET_SCH_INGRESS]

Device Drivers --->
  [*] Network device support --->                                   [NETDEVICES]
    [*]   Network core driver support                                 [NET_CORE]
    <*/M>   Bonding driver support                                     [BONDING]
    <*/M>   Dummy net driver support                                     [DUMMY]
    <*/M>   Ethernet team driver support --->                         [NET_TEAM]
    <*/M>   MAC-VLAN support                                           [MACVLAN]
    <*/M>     MAC-VLAN based tap driver                                [MACVTAP]
    <*/M>   IP-VLAN support                                             [IPVLAN]
    <*/M>   Virtual eXtensible Local Area Network (VXLAN)                [VXLAN]
    <*/M>   Virtual ethernet pair device                                  [VETH]
    <*/M>   Virtual Routing and Forwarding (Lite)                      [NET_VRF]
```
</div>

<div class="installation" lang="en">
## Installation of NetworkManager {#installation-of-networkmanager}

Fix the python scripts so that they use <span class="application">Python 3</span>:

```bash
grep -rl '^#!.*python$' | xargs sed -i '1s/python/&3/'
```

Install <span class="application">NetworkManager</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                    \
      --prefix=/usr               \
      --buildtype=release         \
      -D libaudit=no              \
      -D nmtui=true               \
      -D ovs=false                \
      -D ppp=false                \
      -D nbft=false               \
      -D selinux=false            \
      -D qt=false                 \
      -D session_tracking=systemd \
      -D nm_cloud_setup=false     \
      -D modem_manager=false      &&
ninja
```

An already active graphical session with a bus address is necessary to run the tests. To test the results, issue <span class="command"><strong>ninja test</strong></span>.

A few tests may fail, depending on enabled kernel options.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&
rm -rf /usr/share/doc/NetworkManager-1.56.1 &&
mv -v /usr/share/doc/NetworkManager{,-1.56.1}
```

If you have not passed the <code class="option">-D docs=true</code> option to <span class="command"><strong>meson</strong></span>, you can install the pregenerated manual pages with (as the <code class="systemitem">root</code> user):

```bash
for file in $(echo ../man/*.[1578]); do
    section=${file##*.} &&
    install -vdm 755 /usr/share/man/man$section
    install -vm 644 $file /usr/share/man/man$section/
done
```

If you have not used <code class="option">-D docs=true</code>, the pregenerated HTML documentation can also be installed with (as the <code class="systemitem">root</code> user):

```bash
cp -Rv ../docs/{api,libnm} /usr/share/doc/NetworkManager-1.56.1
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D docs=true</code>: Use this switch to enable building man pages and documentation if <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> is installed.

*`-D nmtui=true`*: This switch enables building <span class="command"><strong>nmtui</strong></span>.

*`-D ovs=false`*: This switch disable the Open vSwitch integration because it needs <a class="xref" href="../general/jansson.md" title="Jansson-2.15.0">jansson-2.15.0</a>. Remove it if you have <a class="xref" href="../general/jansson.md" title="Jansson-2.15.0">jansson-2.15.0</a> installed on your system.

*`-D modem_manager=false`*: This switch is required if <span class="application">ModemManager</span> is not installed. Omit this switch if you have built <span class="application">ModemManager</span> and <span class="application">mobile-broadband-provider-info</span>.

*`-D nbft=false`*: This switch is required if <a class="xref" href="../general/libnvme.md" title="libnvme-1.16.1">libnvme-1.16.1</a> is not installed, and disabled NBFT support in the initrd generator. Note that BLFS does not use the initrd generator provided from NetworkManager by default.

*`-D session_tracking=systemd`*: This switch is used to set <span class="command"><strong>systemd-logind</strong></span> as the default program for session tracking.

*`-D ppp=false`*: This switch disables <span class="application">PPP</span> support in <span class="application">NetworkManager</span> since the programs necessary for it are not installed. Remove this switch if you need PPP support and have <span class="application">PPP</span> installed.

*`-D libaudit=no`* and *`-D selinux=false`*: This switch disables support for libaudit and SELinux since they are not used in BLFS.

*`-D qt=false`*: This switch disables the <span class="application">Qt 5</span> examples.

*`-D nm_cloud_setup=false`*: Use this switch if you have not installed <a class="xref" href="../general/jansson.md" title="Jansson-2.15.0">jansson-2.15.0</a>. This disables nm-cloud-setup which is used to automatically configure the network in a public cloud environment within a VM.

<code class="option">-D crypto=gnutls</code>: Use this switch if you have GnuTLS installed and want to use it for certificate and key operations in NetworkManager, instead of using NSS (the default).

<code class="option">-D crypto=null</code>: Use this switch if neither NSS nor GnuTLS is installed but you want to build NetworkManager anyway. This switch will make NetworkManager lack some features (for example 802.1X).
</div>

<div class="configuration" lang="en">
## Configuring NetworkManager {#configuring-networkmanager}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/NetworkManager/NetworkManager.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

For <span class="application">NetworkManager</span> to work, at least a minimal configuration file must be present. Such a file is not installed with <span class="command"><strong>make install</strong></span>. Issue the following command as the <code class="systemitem">root</code> user to create a minimal <code class="filename">NetworkManager.conf</code> file:

```bash
cat >> /etc/NetworkManager/NetworkManager.conf << "EOF"
[main]
plugins=keyfile
EOF
```

This file should not be modified directly by users of the system. Instead, system specific changes should be made using configuration files in the <code class="filename">/etc/NetworkManager/conf.d</code> directory.

To allow polkit to manage authorizations, add the following configuration file:

```bash
cat > /etc/NetworkManager/conf.d/polkit.conf << "EOF"
[main]
auth-polkit=true
EOF
```

To prevent <span class="application">NetworkManager</span> from updating the <code class="filename">/etc/resolv.conf</code> file, add the following configuration file:

```bash
cat > /etc/NetworkManager/conf.d/no-dns-update.conf << "EOF"
[main]
dns=none
EOF
```

For additional configuration options, see <span class="command"><strong>man 5 NetworkManager.conf</strong></span>.

To allow regular users to configure network connections, you should add them to the <code class="systemitem">netdev</code> group, and create a <span class="application">polkit</span> rule that grants access. Run the following commands as the <code class="systemitem">root</code> user:

```bash
groupadd -fg 86 netdev &&
/usr/sbin/usermod -a -G netdev <username>

cat > /usr/share/polkit-1/rules.d/org.freedesktop.NetworkManager.rules << "EOF"
polkit.addRule(function(action, subject) {
    if (action.id.indexOf("org.freedesktop.NetworkManager.") == 0 && subject.isInGroup("netdev")) {
        return polkit.Result.YES;
    }
});
EOF
```
</div>

<div class="sect3" lang="en">
### Systemd Unit {#systemd-unit}

To start the <span class="command"><strong>NetworkManager</strong></span> daemon at boot, enable the previously installed systemd unit by running the following command as the <code class="systemitem">root</code> user:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If using <span class="application">Network Manager</span> to manage an interface, any previous configuration for that interface should be removed, and the interface brought down prior to starting <span class="application">Network Manager</span>.
</div>

```bash
systemctl enable NetworkManager
```

Starting in version 1.11.2 of <span class="application">NetworkManager</span>, a systemd unit named <code class="filename">NetworkManager-wait-online.service</code> is enabled, which is used to prevent services that require network connectivity from starting until <span class="application">NetworkManager</span> establishes a connection. To disable this behavior, run the following command as the <code class="systemitem">root</code> user:

```bash
systemctl disable NetworkManager-wait-online
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">NetworkManager, nmcli, nm-online, nmtui, and, symlinked to nmtui: nmtui-connect, nmtui-edit, and nmtui-hostname</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libnm.so and several modules under /usr/lib/NetworkManager</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/NetworkManager, /usr/include/libnm, /usr/lib/NetworkManager, /usr/share/doc/NetworkManager-1.56.1, /usr/share/gtk-doc/html/{libnm,NetworkManager} (if the documentation is built), and /var/lib/NetworkManager</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------- ----------------------------------------------------------------------------------------------
  <a id="nmcli"></a><span class="command"><span class="term"><strong>nmcli</strong></span></span>                          is a command-line tool for controlling <span class="application">NetworkManager</span> and getting its status
  <a id="nm-online"></a><span class="command"><span class="term"><strong>nm-online</strong></span></span>                  is a utility to determine whether you are online
  <a id="nmtui"></a><span class="command"><span class="term"><strong>nmtui</strong></span></span>                          is an interactive ncurses-based user interface for <span class="application">nmcli</span>
  <a id="nmtui-connect"></a><span class="command"><span class="term"><strong>nmtui-connect</strong></span></span>          is an interactive ncurses-based user interface to activate/deactivate connections
  <a id="nmtui-edit"></a><span class="command"><span class="term"><strong>nmtui-edit</strong></span></span>                is an interactive ncurses-based user interface to edit connections
  <a id="nmtui-hostname"></a><span class="command"><span class="term"><strong>nmtui-hostname</strong></span></span>        is an interactive ncurses-based user interface to edit the hostname
  <a id="NetworkManager-prog"></a><span class="command"><span class="term"><strong>NetworkManager</strong></span></span>   is the network management daemon
  <a id="libnm"></a><span class="term"><code class="filename">libnm.so</code></span>                          contains functions used by <span class="application">NetworkManager</span>
  ----------------------------------------------------------------- ----------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](bind-utils.md "BIND Utilities-9.20.20")

    BIND Utilities-9.20.20

-   [Next](network-manager-applet.md "network-manager-applet-1.34.0")

    network-manager-applet-1.34.0

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
