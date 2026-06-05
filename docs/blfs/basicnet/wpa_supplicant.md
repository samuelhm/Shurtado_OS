<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](wireless_tools.md "Wireless Tools-29")

    Wireless Tools-29

-   [Next](netutils.md "Networking Utilities")

    Networking Utilities

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# wpa_supplicant-2.11 {#wpa_supplicant-2.11}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to WPA Supplicant {#introduction-to-wpa-supplicant}

<span class="application">WPA Supplicant</span> is a Wi-Fi Protected Access (WPA) client and IEEE 802.1X supplicant. It implements WPA key negotiation with a WPA Authenticator and Extensible Authentication Protocol (EAP) authentication with an Authentication Server. In addition, it controls the roaming and IEEE 802.11 authentication/association of the wireless LAN driver. This is useful for connecting to a password protected wireless access point.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://w1.fi/releases/wpa_supplicant-2.11.tar.gz">https://w1.fi/releases/wpa_supplicant-2.11.tar.gz</a>

-   Download MD5 sum: 72a4a00eddb7a499a58113c3361ab094

-   Download size: 3.7 MB

-   Estimated disk space required: 35 MB

-   Estimated build time: 0.3 SBU
</div>

### Additional Downloads

<div class="itemizedlist">
-   Required patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/wpa_supplicant-2.11-openssl_4_fixes-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/wpa_supplicant-2.11-openssl_4_fixes-1.patch</a>
</div>

### WPA Supplicant Dependencies

#### Required (Runtime)

<a class="xref" href="wireless-kernel.md" title="Configuring the Linux Kernel for Wireless">Configuring the Linux Kernel for Wireless</a>

#### Recommended

<a class="xref" href="libnl.md" title="libnl-3.12.0">libnl-3.12.0</a>

#### Optional

<a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

To use <span class="application">wpa_supplicant</span>, the kernel must have the appropriate drivers and other support available. Read <a class="xref" href="wireless-kernel.md" title="Configuring the Linux Kernel for Wireless">Configuring the Linux Kernel for Wireless</a> for details.
</div>

<div class="installation" lang="en">
## Installation of WPA Supplicant {#installation-of-wpa-supplicant}

First you will need to create an initial configuration file for the build process. You can read <code class="filename">wpa_supplicant/README</code> and <code class="filename">wpa_supplicant/defconfig</code> for the explanation of the following options as well as other options that can be used. Create a build configuration file that should work for standard WiFi setups by running the following command:

```bash
cat > wpa_supplicant/.config << "EOF"
CONFIG_BACKEND=file
CONFIG_CTRL_IFACE=y
CONFIG_DEBUG_FILE=y
CONFIG_DEBUG_SYSLOG=y
CONFIG_DEBUG_SYSLOG_FACILITY=LOG_DAEMON
CONFIG_DRIVER_NL80211=y
CONFIG_DRIVER_WEXT=y
CONFIG_DRIVER_WIRED=y
CONFIG_EAP_GTC=y
CONFIG_EAP_LEAP=y
CONFIG_EAP_MD5=y
CONFIG_EAP_MSCHAPV2=y
CONFIG_EAP_OTP=y
CONFIG_EAP_PEAP=y
CONFIG_EAP_TLS=y
CONFIG_EAP_TTLS=y
CONFIG_IEEE8021X_EAPOL=y
CONFIG_IPV6=y
CONFIG_LIBNL32=y
CONFIG_PEERKEY=y
CONFIG_PKCS12=y
CONFIG_READLINE=y
CONFIG_SMARTCARD=y
CONFIG_WPS=y
CFLAGS += -I/usr/include/libnl3
EOF
```

If you wish to use <span class="application">WPA Supplicant</span> with <a class="xref" href="networkmanager.md" title="NetworkManager-1.56.1">NetworkManager-1.56.1</a>, add the following options to the <span class="application">WPA Supplicant</span> build configuration file by running the following command:

```bash
cat >> wpa_supplicant/.config << "EOF"
CONFIG_CTRL_IFACE_DBUS=y
CONFIG_CTRL_IFACE_DBUS_NEW=y
CONFIG_CTRL_IFACE_DBUS_INTRO=y
EOF
```

Next, fix building with OpenSSL-4:

```bash
patch -Np1 -i ../wpa_supplicant-2.11-openssl_4_fixes-1.patch
```

Install <span class="application">WPA Supplicant</span> by running the following commands:

```bash
cd wpa_supplicant &&
make BINDIR=/usr/sbin LIBDIR=/usr/lib
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
install -v -m755 wpa_{cli,passphrase,supplicant} /usr/sbin/ &&
install -v -m644 doc/docbook/wpa_supplicant.conf.5 /usr/share/man/man5/ &&
install -v -m644 doc/docbook/wpa_{cli,passphrase,supplicant}.8 /usr/share/man/man8/
```

Install the <span class="application">systemd</span> support files by running the following command as the <code class="systemitem">root</code> user:

```bash
install -v -m644 systemd/*.service /usr/lib/systemd/system/
```

If you have built <span class="application">WPA Supplicant</span> with <span class="application">D-Bus</span> support, you will need to install <span class="application">D-Bus</span> configuration files. Install them by running the following commands as the <code class="systemitem">root</code> user:

```bash
install -v -m644 dbus/fi.w1.wpa_supplicant1.service \
                 /usr/share/dbus-1/system-services/ &&
install -v -d -m755 /etc/dbus-1/system.d &&
install -v -m644 dbus/dbus-wpa_supplicant.conf \
                 /etc/dbus-1/system.d/wpa_supplicant.conf
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

You will need to restart the system <span class="application">D-Bus</span> daemon before you can use the <span class="application">WPA Supplicant</span> <span class="application">D-Bus</span> interface.
</div>
</div>

<div class="configuration" lang="en">
## Configuring wpa_supplicant {#configuring-wpa_supplicant}

<div class="admon important">
![\[Important\]](../images/important.png)

### Important

If you are using WPA Supplicant with <a class="xref" href="networkmanager.md" title="NetworkManager-1.56.1">NetworkManager-1.56.1</a> (or anything communicating with WPA Supplicant via D-Bus), this section should be skipped. Running a D-Bus connected WPA Supplicant instance and another WPA supplicant instance configured following this section simultaneously can cause subtle issues.
</div>

<div class="sect3" lang="en">
### Config File {#config-file}

<code class="filename">/etc/wpa_supplicant/wpa_supplicant-*.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

To connect to an access point that uses a password, you need to put the pre-shared key in <span class="phrase"><code class="filename">/etc/wpa_supplicant/wpa_supplicant-</code><em>`wifi0`</em><code class="filename">.conf</code>.</span> SSID is the string that the access point/router transmits to identify itself. Run the following command as the <code class="systemitem">root</code> user:

```bash
install -v -dm755 /etc/wpa_supplicant &&
wpa_passphrase SSID | sed '/^\t#/d' > /etc/wpa_supplicant/wpa_supplicant-wifi0.conf
```

The <span class="command"><strong>wpa_supplicant</strong></span> command will ask you to input the password of the access point.

<span class="phrase"><code class="filename">/etc/wpa_supplicant/wpa_supplicant-</code><em>`wifi0`</em><code class="filename">.conf</code></span> can hold the details of several access points. When <span class="command"><strong>wpa_supplicant</strong></span> is started, it will scan for the SSIDs it can see and choose the appropriate password to connect.

If you want to connect to an access point that isn't password protected, put an entry like this in <span class="phrase"><code class="filename">/etc/wpa_supplicant/wpa_supplicant-</code><em>`wifi0`</em><code class="filename">.conf</code>.</span> Replace "Some-SSID" with the SSID of the access point/router.

```console
network={
  ssid="Some-SSID"
  key_mgmt=NONE
}
```

Connecting to a new access point that is not in the configuration file can be accomplished manually via the command line, but it must be done via a privileged user. To do that, add the following to the configuration file:

```console
ctrl_interface=DIR=/run/wpa_supplicant GROUP=<privileged group>
update_config=1
```

Replace the \<privileged group\> above with a system group where members have the ability to connect to a wireless access point.

There are many options that you could use to tweak how you connect to each access point. They are described in some detail in the <code class="filename">wpa_supplicant/wpa_supplicant.conf</code> file in the source tree.
</div>

<div class="sect3" lang="en">
### Connecting to an Access Point {#connecting-to-an-access-point}

There are 3 types of <span class="application">systemd</span> units that were installed:

<div class="itemizedlist">
-   wpa_supplicant@.service

-   wpa_supplicant-nl80211@.service

-   wpa_supplicant-wired@.service
</div>

The only difference between 3 of them is what driver is used for connecting (-D option). The first one uses the default driver, the second one uses the nl80211 driver and the third one uses the wired driver.

You can connect to the wireless access point by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl start wpa_supplicant@wlan0
```

To connect to the wireless access point at boot, simply enable the appropriate <span class="command"><strong>wpa_supplicant</strong></span> service by running the following command as the <code class="systemitem">root</code> user:

```bash
systemctl enable wpa_supplicant@wlan0
```

Depending on your setup, you can replace the <code class="filename">wpa_supplicant@.service</code> with any other listed above.

To assign a network address to your wireless interface, consult the <a class="ulink" href="../../../../lfs/view/systemd/chapter09/network.md">General Network Configuration</a> page in LFS.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Ensure that the <code class="literal">systemd-networkd</code> service is enabled so that the system can reach the internet.
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">wpa_supplicant, wpa_passphrase and wpa_cli</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------
  <a id="wpa_supplicant-prog"></a><span class="command"><span class="term"><strong>wpa_supplicant</strong></span></span>   is a daemon that can connect to a password protected wireless access point
  <a id="wpa_passphrase"></a><span class="command"><span class="term"><strong>wpa_passphrase</strong></span></span>        takes an SSID and a password and generates a simple configuration that <span class="command"><strong>wpa_supplicant</strong></span> can understand
  <a id="wpa_cli"></a><span class="command"><span class="term"><strong>wpa_cli</strong></span></span>                      is a command line interface used to control a running <span class="command"><strong>wpa_supplicant</strong></span> daemon
  ----------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](wireless_tools.md "Wireless Tools-29")

    Wireless Tools-29

-   [Next](netutils.md "Networking Utilities")

    Networking Utilities

-   [Up](netprogs.md "Chapter 15. Networking Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
