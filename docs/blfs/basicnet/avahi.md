<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](netutils.md "Networking Utilities")

    Networking Utilities

-   [Next](bind-utils.md "BIND Utilities-9.20.20")

    BIND Utilities-9.20.20

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Avahi-0.8 {#avahi-0.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Avahi {#introduction-to-avahi}

The <span class="application">Avahi</span> package is a system which facilitates service discovery on a local network.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lathiat/avahi/releases/download/v0.8/avahi-0.8.tar.gz">https://github.com/lathiat/avahi/releases/download/v0.8/avahi-0.8.tar.gz</a>

-   Download MD5 sum: 229c6aa30674fc43c202b22c5f8c2be7

-   Download size: 1.5 MB

-   Estimated disk space required: 32 MB

-   Estimated build time: 0.3 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/avahi-0.8-ipv6_race_condition_fix-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/avahi-0.8-ipv6_race_condition_fix-1.patch</a>
</div>

### Avahi Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended)

#### Recommended

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> and <a class="xref" href="../general/libdaemon.md" title="libdaemon-0.14">libdaemon-0.14</a>

#### Optional

<a class="xref" href="../general/python-modules.md#dbus-python" title="D-Bus Python-1.4.0">D-Bus Python-1.4.0</a>, <a class="xref" href="libevent.md" title="libevent-2.1.12">libevent-2.1.12</a>, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="ulink" href="https://download.gnome.org/sources/gtk+/2.24/">GTK+-2</a> (deprecated), and <a class="ulink" href="https://sourceforge.net/projects/xmltoman/">xmltoman</a> (for generating documentation)
</div>

<div class="installation" lang="en">
## Installation of Avahi {#installation-of-avahi}

There should be a dedicated user and group to take control of the <span class="command"><strong>avahi-daemon</strong></span> daemon after it is started. Issue the following commands as the <code class="systemitem">root</code> user:

```bash
groupadd -fg 84 avahi &&
useradd -c "Avahi Daemon Owner" -d /run/avahi-daemon -u 84 \
        -g avahi -s /bin/false avahi
```

There should also be a dedicated privileged access group for <span class="application">Avahi</span> clients. Issue the following command as the <code class="systemitem">root</code> user:

```bash
groupadd -fg 86 netdev
```

Fix a regression that results in a race condition when IPv6 is in use and multiple network adapters are present on the system:

```bash
patch -Np1 -i ../avahi-0.8-ipv6_race_condition_fix-1.patch
```

Fix a security vulnerability in <span class="command"><strong>avahi-daemon</strong></span>:

```bash
sed -i '426a if (events & AVAHI_WATCH_HUP) { \
client_free(c); \
return; \
}' avahi-daemon/simple-protocol.c
```

Install <span class="application">Avahi</span> by running the following commands:

```bash
./configure \
    --prefix=/usr        \
    --sysconfdir=/etc    \
    --localstatedir=/var \
    --disable-static     \
    --disable-libevent   \
    --disable-mono       \
    --disable-monodoc    \
    --disable-python     \
    --disable-qt3        \
    --disable-qt4        \
    --disable-qt5        \
    --enable-core-docs   \
    --with-distro=none   \
    --with-dbus-system-address='unix:path=/run/dbus/system_bus_socket' &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--disable-libevent`*: This parameter disables the use of <a class="xref" href="libevent.md" title="libevent-2.1.12">libevent-2.1.12</a>. Remove if you have it installed.

*`--disable-mono`*: This parameter disables the <span class="application">Mono</span> bindings.

*`--disable-monodoc`*: This parameter disables documentation for the <span class="application">Mono</span> bindings.

*`--disable-python`*: This parameter disables the scripts that depend on <span class="application">Python</span>. It also allows a regular install to complete successfully.

*`--disable-qt3`*: This parameter disables the attempt to build the obsolete <span class="application">Qt3</span> portions of the package.

*`--disable-qt4`*: This parameter disables the attempt to build the obsolete <span class="application">Qt4Core</span> portions of the package.

*`--disable-qt5`*: This parameter disables the use of <span class="application">Qt5</span>, and allows building without it.

*`--enable-core-docs`*: This parameter enables the building of documentation.

*`--with-distro=none`*: There is an obsolete boot script in the distribution for LFS. This option disables it.

*`--with-dbus-system-address=`*: This option prevents the package from referring to the deprecated <code class="filename">/var/run</code> directory.

<code class="option">--disable-dbus</code>: This parameter disables the use of <span class="application">D-Bus</span>.

<code class="option">--disable-gtk</code>: This parameter disables the use of <span class="application">GTK+2</span>.

<code class="option">--disable-gtk3</code>: This parameter disables the use of <span class="application">GTK+3</span>.

<code class="option">--disable-libdaemon</code>: This parameter disables the use of <span class="application">libdaemon</span>. If you use this option, <span class="command"><strong>avahi-daemon</strong></span> won't be built.

<code class="option">--enable-tests</code>: This option enables the building of tests and examples.

<code class="option">--enable-compat-howl</code>: This option enables the compatibility layer for <span class="application">HOWL</span>.

<code class="option">--enable-compat-libdns_sd</code>: This option enables the compatibility layer for <span class="application">libdns_sd</span>.
</div>

<div class="configuration" lang="en">
## Configuring avahi {#configuring-avahi}

<div class="sect3" lang="en">
### Boot Script {#boot-script}

The <span class="command"><strong>avahi-daemon</strong></span> will conflict with <span class="command"><strong>systemd-resolved</strong></span> under the default configuration if both are running simultaneously on a system because both will act as a Multicast DNS resolver and responder. If you must run the Avahi daemon (the BLFS editors don't recommend to do that unless you really need its functionality), disable the Multicast DNS support of <span class="command"><strong>systemd-resolved</strong></span> and enable the previously installed systemd unit by running the following command as the <code class="systemitem">root</code> user:

```bash
mkdir -pv /etc/systemd/resolved.conf.d &&
cat > /etc/systemd/resolved.conf.d/no-mdns.conf << EOF &&
[Resolve]
MulticastDNS=no
EOF
systemctl enable avahi-daemon
```

To start the <span class="command"><strong>avahi-dnsconfd</strong></span> daemon at boot, enable the previously installed systemd unit by running the following command as the <code class="systemitem">root</code> user (note that the following command will also implicitly enable <span class="command"><strong>avahi-daemon</strong></span>, so if you are running it, you need to make sure you've disabled the <span class="command"><strong>systemd-resolved</strong></span> Multicast DNS support as mentioned above):

```bash
systemctl enable avahi-dnsconfd
```
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">avahi-autoipd, avahi-browse, avahi-browse-domains, avahi-daemon, avahi-discover-standalone, avahi-dnsconfd, avahi-publish, avahi-publish-address, avahi-publish-service, avahi-resolve, avahi-resolve-address, avahi-resolve-host-name, avahi-set-host-name, bshell, bssh, and bvnc</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libavahi-client.so, libavahi-common.so, libavahi-core.so, libavahi-glib.so, libavahi-gobject.so, libavahi-libevent.so libavahi-ui-gtk3.so, libavahi-ui.so, libdns_sd.so, and libhowl.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/avahi/services, /usr/include/{avahi-client,avahi-common, avahi-compat-howl, avahi-compat-libdns_sd, avahi-core, avahi-glib, avahi-gobject, avahi-libevent, avahi-ui}, /usr/lib/avahi, /usr/share/avahi</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------
  <a id="avahi-autoipd"></a><span class="command"><span class="term"><strong>avahi-autoipd</strong></span></span>                           is a IPv4LL network address configuration daemon
  <a id="avahi-browse"></a><span class="command"><span class="term"><strong>avahi-browse</strong></span></span>                             browses for mDNS/DNS-SD services using the <span class="application">Avahi</span> daemon
  <a id="avahi-browse-domains"></a><span class="command"><span class="term"><strong>avahi-browse-domains</strong></span></span>             browses for mDNS/DNS-SD services using the <span class="application">Avahi</span> daemon
  <a id="avahi-daemon"></a><span class="command"><span class="term"><strong>avahi-daemon</strong></span></span>                             is the <span class="application">Avahi</span> mDNS/DNS-SD daemon
  <a id="avahi-discover-standalone"></a><span class="command"><span class="term"><strong>avahi-discover-standalone</strong></span></span>   browses for mDNS/DNS-SD services using the <span class="application">Avahi</span> daemon
  <a id="avahi-dnsconfd"></a><span class="command"><span class="term"><strong>avahi-dnsconfd</strong></span></span>                         is a Unicast DNS server from mDNS/DNS-SD configuration daemon
  <a id="avahi-publish"></a><span class="command"><span class="term"><strong>avahi-publish</strong></span></span>                           registers a mDNS/DNS-SD service or host name or address mapping using the <span class="application">Avahi</span> daemon
  <a id="avahi-publish-address"></a><span class="command"><span class="term"><strong>avahi-publish-address</strong></span></span>           registers a mDNS/DNS-SD service or host name or address mapping using the <span class="application">Avahi</span> daemon
  <a id="avahi-publish-service"></a><span class="command"><span class="term"><strong>avahi-publish-service</strong></span></span>           registers a mDNS/DNS-SD service or host name or address mapping using the <span class="application">Avahi</span> daemon
  <a id="avahi-resolve"></a><span class="command"><span class="term"><strong>avahi-resolve</strong></span></span>                           resolves one or more mDNS/DNS host name(s) to IP address(es) (and vice versa) using the <span class="application">Avahi</span> daemon
  <a id="avahi-resolve-address"></a><span class="command"><span class="term"><strong>avahi-resolve-address</strong></span></span>           resolves one or more mDNS/DNS host name(s) to IP address(es) (and vice versa) using the <span class="application">Avahi</span> daemon
  <a id="avahi-resolve-host-name"></a><span class="command"><span class="term"><strong>avahi-resolve-host-name</strong></span></span>       resolves one or more mDNS/DNS host name(s) to IP address(es) (and vice versa) using the <span class="application">Avahi</span> daemon
  <a id="avahi-set-host-name"></a><span class="command"><span class="term"><strong>avahi-set-host-name</strong></span></span>               changes the mDNS host name
  <a id="bssh"></a><span class="command"><span class="term"><strong>bssh</strong></span></span>                                             browses for SSH servers on the local network
  <a id="bvnc"></a><span class="command"><span class="term"><strong>bvnc</strong></span></span>                                             browses for VNC servers on the local network
  ---------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](netutils.md "Networking Utilities")

    Networking Utilities

-   [Next](bind-utils.md "BIND Utilities-9.20.20")

    BIND Utilities-9.20.20

-   [Up](netutils.md "Chapter 16. Networking Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
