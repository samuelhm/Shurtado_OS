::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](bind-utils.md "BIND Utilities-9.20.20"){accesskey="p"}

    BIND Utilities-9.20.20

-   [Next](network-manager-applet.md "network-manager-applet-1.34.0"){accesskey="n"}

    network-manager-applet-1.34.0

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#NetworkManager}NetworkManager-1.56.1 {#networkmanager-1.56.1 .sect1}

:::::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to NetworkManager {#introduction-to-networkmanager .sect2}

[NetworkManager]{.application} is a set of co-operative tools that make networking simple and straightforward. Whether you use WiFi, wired, 3G, or Bluetooth, NetworkManager allows you to quickly move from one network to another: Once a network has been configured and joined once, it can be detected and re-joined automatically the next time it's available.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Make sure that you disable the [**systemd-networkd**]{.command} service or configure it not to manage the interfaces you want to manage with [NetworkManager]{.application}.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/NetworkManager/NetworkManager/-/releases/1.56.1/downloads/NetworkManager-1.56.1.tar.xz](https://gitlab.freedesktop.org/NetworkManager/NetworkManager/-/releases/1.56.1/downloads/NetworkManager-1.56.1.tar.xz){.ulink}

-   Download MD5 sum: e21ec74b24f72a044e75c0ae92a9bb62

-   Download size: 6.0 MB

-   Estimated disk space required: 365 MB (with tests and documentation)

-   Estimated build time: 0.8 SBU (with tests, using parallelism=4)
:::

### NetworkManager Dependencies

#### Required

[libndp-1.9](libndp.md "libndp-1.9"){.xref}

#### Recommended

[cURL-8.20.0](curl.md "cURL-8.20.0"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [iptables-1.8.13](../postlfs/iptables.md "iptables-1.8.13"){.xref}, [libpsl-0.21.5](libpsl.md "libpsl-0.21.5"){.xref}, [newt-0.52.25](../general/newt.md "newt-0.52.25"){.xref} (for [**nmtui**]{.command}), [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}, [Polkit-127](../postlfs/polkit.md "Polkit-127"){.xref} (runtime), [PyGObject-3.56.3](../general/python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}, [[Systemd-260.2](../general/systemd.md "Systemd-260.2"){.xref},]{.phrase} [Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}, and [wpa_supplicant-2.11](wpa_supplicant.md "wpa_supplicant-2.11"){.xref} (runtime, built with D-Bus support)

#### Optional

[BlueZ-5.86](../general/bluez.md "BlueZ-5.86"){.xref}, [D-Bus Python-1.4.0](../general/python-modules.md#dbus-python "D-Bus Python-1.4.0"){.xref} (for the test suite), [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref} (can be used instead of [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}), [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref}, [jansson-2.15.0](../general/jansson.md "Jansson-2.15.0"){.xref}, [libnvme-1.16.1](../general/libnvme.md "libnvme-1.16.1"){.xref}, [ModemManager-1.24.2](../general/ModemManager.md "ModemManager-1.24.2"){.xref}, [UPower-1.91.2](../general/upower.md "UPower-1.91.2"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [dnsmasq](https://thekelleys.org.uk/dnsmasq/doc.md){.ulink}, [firewalld](https://firewalld.org/){.ulink}, [libaudit](https://github.com/Distrotech/libaudit){.ulink}, [libteam](https://github.com/jpirko/libteam){.ulink}, [mobile-broadband-provider-info](https://gitlab.gnome.org/GNOME/mobile-broadband-provider-info/){.ulink}, [PPP](https://www.samba.org/ftp/ppp/){.ulink}, and [RP-PPPoE](https://dianne.skoll.ca/projects/rp-pppoe/){.ulink}
::::::

::: {.kernel lang="en"}
## []{#NetworkManager-kernel}Kernel Configuration {#kernel-configuration .sect2}

If you wish to run the tests, check that at least the following options are enabled in the kernel configuration. Those options have been determined to be necessary, but may not be sufficient. Recompile the kernel if necessary:

``` screen
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
:::

::: {.installation lang="en"}
## Installation of NetworkManager {#installation-of-networkmanager .sect2}

Fix the python scripts so that they use [Python 3]{.application}:

``` userinput
grep -rl '^#!.*python$' | xargs sed -i '1s/python/&3/'
```

Install [NetworkManager]{.application} by running the following commands:

``` userinput
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

An already active graphical session with a bus address is necessary to run the tests. To test the results, issue [**ninja test**]{.command}.

A few tests may fail, depending on enabled kernel options.

Now, as the `root`{.systemitem} user:

``` root
ninja install &&
rm -rf /usr/share/doc/NetworkManager-1.56.1 &&
mv -v /usr/share/doc/NetworkManager{,-1.56.1}
```

If you have not passed the `-D docs=true`{.option} option to [**meson**]{.command}, you can install the pregenerated manual pages with (as the `root`{.systemitem} user):

``` root
for file in $(echo ../man/*.[1578]); do
    section=${file##*.} &&
    install -vdm 755 /usr/share/man/man$section
    install -vm 644 $file /usr/share/man/man$section/
done
```

If you have not used `-D docs=true`{.option}, the pregenerated HTML documentation can also be installed with (as the `root`{.systemitem} user):

``` root
cp -Rv ../docs/{api,libnm} /usr/share/doc/NetworkManager-1.56.1
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D docs=true`{.option}: Use this switch to enable building man pages and documentation if [GTK-Doc-1.36.1](../general/gtk-doc.md "GTK-Doc-1.36.1"){.xref} is installed.

*`-D nmtui=true`*: This switch enables building [**nmtui**]{.command}.

*`-D ovs=false`*: This switch disable the Open vSwitch integration because it needs [jansson-2.15.0](../general/jansson.md "Jansson-2.15.0"){.xref}. Remove it if you have [jansson-2.15.0](../general/jansson.md "Jansson-2.15.0"){.xref} installed on your system.

*`-D modem_manager=false`*: This switch is required if [ModemManager]{.application} is not installed. Omit this switch if you have built [ModemManager]{.application} and [mobile-broadband-provider-info]{.application}.

*`-D nbft=false`*: This switch is required if [libnvme-1.16.1](../general/libnvme.md "libnvme-1.16.1"){.xref} is not installed, and disabled NBFT support in the initrd generator. Note that BLFS does not use the initrd generator provided from NetworkManager by default.

*`-D session_tracking=systemd`*: This switch is used to set [**systemd-logind**]{.command} as the default program for session tracking.

*`-D ppp=false`*: This switch disables [PPP]{.application} support in [NetworkManager]{.application} since the programs necessary for it are not installed. Remove this switch if you need PPP support and have [PPP]{.application} installed.

*`-D libaudit=no`* and *`-D selinux=false`*: This switch disables support for libaudit and SELinux since they are not used in BLFS.

*`-D qt=false`*: This switch disables the [Qt 5]{.application} examples.

*`-D nm_cloud_setup=false`*: Use this switch if you have not installed [jansson-2.15.0](../general/jansson.md "Jansson-2.15.0"){.xref}. This disables nm-cloud-setup which is used to automatically configure the network in a public cloud environment within a VM.

`-D crypto=gnutls`{.option}: Use this switch if you have GnuTLS installed and want to use it for certificate and key operations in NetworkManager, instead of using NSS (the default).

`-D crypto=null`{.option}: Use this switch if neither NSS nor GnuTLS is installed but you want to build NetworkManager anyway. This switch will make NetworkManager lack some features (for example 802.1X).
:::

::::::: {.configuration lang="en"}
## Configuring NetworkManager {#configuring-networkmanager .sect2}

::: {.sect3 lang="en"}
### []{#NetworkManager-config}Config Files {#config-files .sect3}

`/etc/NetworkManager/NetworkManager.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

For [NetworkManager]{.application} to work, at least a minimal configuration file must be present. Such a file is not installed with [**make install**]{.command}. Issue the following command as the `root`{.systemitem} user to create a minimal `NetworkManager.conf`{.filename} file:

``` root
cat >> /etc/NetworkManager/NetworkManager.conf << "EOF"
[main]
plugins=keyfile
EOF
```

This file should not be modified directly by users of the system. Instead, system specific changes should be made using configuration files in the `/etc/NetworkManager/conf.d`{.filename} directory.

To allow polkit to manage authorizations, add the following configuration file:

``` root
cat > /etc/NetworkManager/conf.d/polkit.conf << "EOF"
[main]
auth-polkit=true
EOF
```

To prevent [NetworkManager]{.application} from updating the `/etc/resolv.conf`{.filename} file, add the following configuration file:

``` userinput
cat > /etc/NetworkManager/conf.d/no-dns-update.conf << "EOF"
[main]
dns=none
EOF
```

For additional configuration options, see [**man 5 NetworkManager.conf**]{.command}.

To allow regular users to configure network connections, you should add them to the `netdev`{.systemitem} group, and create a [polkit]{.application} rule that grants access. Run the following commands as the `root`{.systemitem} user:

``` root
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
:::

:::: {.sect3 lang="en"}
### []{#NetworkManager-init} Systemd Unit {#systemd-unit .sect3}

To start the [**NetworkManager**]{.command} daemon at boot, enable the previously installed systemd unit by running the following command as the `root`{.systemitem} user:

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If using [Network Manager]{.application} to manage an interface, any previous configuration for that interface should be removed, and the interface brought down prior to starting [Network Manager]{.application}.
:::

``` root
systemctl enable NetworkManager
```

Starting in version 1.11.2 of [NetworkManager]{.application}, a systemd unit named `NetworkManager-wait-online.service`{.filename} is enabled, which is used to prevent services that require network connectivity from starting until [NetworkManager]{.application} establishes a connection. To disable this behavior, run the following command as the `root`{.systemitem} user:

``` root
systemctl disable NetworkManager-wait-online
```
::::
:::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [NetworkManager, nmcli, nm-online, nmtui, and, symlinked to nmtui: nmtui-connect, nmtui-edit, and nmtui-hostname]{.segbody}
:::

::: seg
**Installed Libraries:** [libnm.so and several modules under /usr/lib/NetworkManager]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/NetworkManager, /usr/include/libnm, /usr/lib/NetworkManager, /usr/share/doc/NetworkManager-1.56.1, /usr/share/gtk-doc/html/{libnm,NetworkManager} (if the documentation is built), and /var/lib/NetworkManager]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------- ----------------------------------------------------------------------------------------------
  []{#nmcli}[[**nmcli**]{.command}]{.term}                          is a command-line tool for controlling [NetworkManager]{.application} and getting its status
  []{#nm-online}[[**nm-online**]{.command}]{.term}                  is a utility to determine whether you are online
  []{#nmtui}[[**nmtui**]{.command}]{.term}                          is an interactive ncurses-based user interface for [nmcli]{.application}
  []{#nmtui-connect}[[**nmtui-connect**]{.command}]{.term}          is an interactive ncurses-based user interface to activate/deactivate connections
  []{#nmtui-edit}[[**nmtui-edit**]{.command}]{.term}                is an interactive ncurses-based user interface to edit connections
  []{#nmtui-hostname}[[**nmtui-hostname**]{.command}]{.term}        is an interactive ncurses-based user interface to edit the hostname
  []{#NetworkManager-prog}[[**NetworkManager**]{.command}]{.term}   is the network management daemon
  []{#libnm}[`libnm.so`{.filename}]{.term}                          contains functions used by [NetworkManager]{.application}
  ----------------------------------------------------------------- ----------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::

::: navfooter
-   [Prev](bind-utils.md "BIND Utilities-9.20.20"){accesskey="p"}

    BIND Utilities-9.20.20

-   [Next](network-manager-applet.md "network-manager-applet-1.34.0"){accesskey="n"}

    network-manager-applet-1.34.0

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
