::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 15. Networking Programs

-   [Prev](wireless_tools.md "Wireless Tools-29"){accesskey="p"}

    Wireless Tools-29

-   [Next](netutils.md "Networking Utilities"){accesskey="n"}

    Networking Utilities

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#wpa_supplicant}wpa_supplicant-2.11 {#wpa_supplicant-2.11 .sect1}

:::::::::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to WPA Supplicant {#introduction-to-wpa-supplicant .sect2}

[WPA Supplicant]{.application} is a Wi-Fi Protected Access (WPA) client and IEEE 802.1X supplicant. It implements WPA key negotiation with a WPA Authenticator and Extensible Authentication Protocol (EAP) authentication with an Authentication Server. In addition, it controls the roaming and IEEE 802.11 authentication/association of the wireless LAN driver. This is useful for connecting to a password protected wireless access point.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://w1.fi/releases/wpa_supplicant-2.11.tar.gz](https://w1.fi/releases/wpa_supplicant-2.11.tar.gz){.ulink}

-   Download MD5 sum: 72a4a00eddb7a499a58113c3361ab094

-   Download size: 3.7 MB

-   Estimated disk space required: 35 MB

-   Estimated build time: 0.3 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/wpa_supplicant-2.11-openssl_4_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/wpa_supplicant-2.11-openssl_4_fixes-1.patch){.ulink}
:::

### WPA Supplicant Dependencies

#### Required (Runtime)

[Configuring the Linux Kernel for Wireless](wireless-kernel.md "Configuring the Linux Kernel for Wireless"){.xref}

#### Recommended

[libnl-3.12.0](libnl.md "libnl-3.12.0"){.xref}

#### Optional

[libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}
::::::

::: {.kernel lang="en"}
## []{#wpa_supplicant-kernel}Kernel Configuration {#kernel-configuration .sect2}

To use [wpa_supplicant]{.application}, the kernel must have the appropriate drivers and other support available. Read [Configuring the Linux Kernel for Wireless](wireless-kernel.md "Configuring the Linux Kernel for Wireless"){.xref} for details.
:::

:::: {.installation lang="en"}
## Installation of WPA Supplicant {#installation-of-wpa-supplicant .sect2}

First you will need to create an initial configuration file for the build process. You can read `wpa_supplicant/README`{.filename} and `wpa_supplicant/defconfig`{.filename} for the explanation of the following options as well as other options that can be used. Create a build configuration file that should work for standard WiFi setups by running the following command:

``` userinput
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

If you wish to use [WPA Supplicant]{.application} with [NetworkManager-1.56.1](networkmanager.md "NetworkManager-1.56.1"){.xref}, add the following options to the [WPA Supplicant]{.application} build configuration file by running the following command:

``` userinput
cat >> wpa_supplicant/.config << "EOF"
CONFIG_CTRL_IFACE_DBUS=y
CONFIG_CTRL_IFACE_DBUS_NEW=y
CONFIG_CTRL_IFACE_DBUS_INTRO=y
EOF
```

Next, fix building with OpenSSL-4:

``` userinput
patch -Np1 -i ../wpa_supplicant-2.11-openssl_4_fixes-1.patch
```

Install [WPA Supplicant]{.application} by running the following commands:

``` userinput
cd wpa_supplicant &&
make BINDIR=/usr/sbin LIBDIR=/usr/lib
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
install -v -m755 wpa_{cli,passphrase,supplicant} /usr/sbin/ &&
install -v -m644 doc/docbook/wpa_supplicant.conf.5 /usr/share/man/man5/ &&
install -v -m644 doc/docbook/wpa_{cli,passphrase,supplicant}.8 /usr/share/man/man8/
```

Install the [systemd]{.application} support files by running the following command as the `root`{.systemitem} user:

``` root
install -v -m644 systemd/*.service /usr/lib/systemd/system/
```

If you have built [WPA Supplicant]{.application} with [D-Bus]{.application} support, you will need to install [D-Bus]{.application} configuration files. Install them by running the following commands as the `root`{.systemitem} user:

``` root
install -v -m644 dbus/fi.w1.wpa_supplicant1.service \
                 /usr/share/dbus-1/system-services/ &&
install -v -d -m755 /etc/dbus-1/system.d &&
install -v -m644 dbus/dbus-wpa_supplicant.conf \
                 /etc/dbus-1/system.d/wpa_supplicant.conf
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

You will need to restart the system [D-Bus]{.application} daemon before you can use the [WPA Supplicant]{.application} [D-Bus]{.application} interface.
:::
::::

::::::::: {.configuration lang="en"}
## Configuring wpa_supplicant {#configuring-wpa_supplicant .sect2}

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

If you are using WPA Supplicant with [NetworkManager-1.56.1](networkmanager.md "NetworkManager-1.56.1"){.xref} (or anything communicating with WPA Supplicant via D-Bus), this section should be skipped. Running a D-Bus connected WPA Supplicant instance and another WPA supplicant instance configured following this section simultaneously can cause subtle issues.
:::

::: {.sect3 lang="en"}
### []{#wpa_supplicant-config}Config File {#config-file .sect3}

`/etc/wpa_supplicant/wpa_supplicant-*.conf`{.filename}
:::

::: {.sect3 lang="en"}
### Configuration Information {#configuration-information .sect3}

To connect to an access point that uses a password, you need to put the pre-shared key in [`/etc/wpa_supplicant/wpa_supplicant-`{.filename}*`wifi0`*`.conf`{.filename}.]{.phrase} SSID is the string that the access point/router transmits to identify itself. Run the following command as the `root`{.systemitem} user:

``` userinput
install -v -dm755 /etc/wpa_supplicant &&
wpa_passphrase SSID | sed '/^\t#/d' > /etc/wpa_supplicant/wpa_supplicant-wifi0.conf
```

The [**wpa_supplicant**]{.command} command will ask you to input the password of the access point.

[`/etc/wpa_supplicant/wpa_supplicant-`{.filename}*`wifi0`*`.conf`{.filename}]{.phrase} can hold the details of several access points. When [**wpa_supplicant**]{.command} is started, it will scan for the SSIDs it can see and choose the appropriate password to connect.

If you want to connect to an access point that isn't password protected, put an entry like this in [`/etc/wpa_supplicant/wpa_supplicant-`{.filename}*`wifi0`*`.conf`{.filename}.]{.phrase} Replace "Some-SSID" with the SSID of the access point/router.

``` screen
network={
  ssid="Some-SSID"
  key_mgmt=NONE
}
```

Connecting to a new access point that is not in the configuration file can be accomplished manually via the command line, but it must be done via a privileged user. To do that, add the following to the configuration file:

``` screen
ctrl_interface=DIR=/run/wpa_supplicant GROUP=<privileged group>
update_config=1
```

Replace the \<privileged group\> above with a system group where members have the ability to connect to a wireless access point.

There are many options that you could use to tweak how you connect to each access point. They are described in some detail in the `wpa_supplicant/wpa_supplicant.conf`{.filename} file in the source tree.
:::

::::: {.sect3 lang="en"}
### Connecting to an Access Point {#connecting-to-an-access-point .sect3}

There are 3 types of [systemd]{.application} units that were installed:

::: itemizedlist
-   wpa_supplicant@.service

-   wpa_supplicant-nl80211@.service

-   wpa_supplicant-wired@.service
:::

The only difference between 3 of them is what driver is used for connecting (-D option). The first one uses the default driver, the second one uses the nl80211 driver and the third one uses the wired driver.

You can connect to the wireless access point by running the following command as the `root`{.systemitem} user:

``` root
systemctl start wpa_supplicant@wlan0
```

To connect to the wireless access point at boot, simply enable the appropriate [**wpa_supplicant**]{.command} service by running the following command as the `root`{.systemitem} user:

``` root
systemctl enable wpa_supplicant@wlan0
```

Depending on your setup, you can replace the `wpa_supplicant@.service`{.filename} with any other listed above.

To assign a network address to your wireless interface, consult the [General Network Configuration](../../../../lfs/view/systemd/chapter09/network.md){.ulink} page in LFS.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Ensure that the `systemd-networkd`{.literal} service is enabled so that the system can reach the internet.
:::
:::::
:::::::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [wpa_supplicant, wpa_passphrase and wpa_cli]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------
  []{#wpa_supplicant-prog}[[**wpa_supplicant**]{.command}]{.term}   is a daemon that can connect to a password protected wireless access point
  []{#wpa_passphrase}[[**wpa_passphrase**]{.command}]{.term}        takes an SSID and a password and generates a simple configuration that [**wpa_supplicant**]{.command} can understand
  []{#wpa_cli}[[**wpa_cli**]{.command}]{.term}                      is a command line interface used to control a running [**wpa_supplicant**]{.command} daemon
  ----------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::::::::

::: navfooter
-   [Prev](wireless_tools.md "Wireless Tools-29"){accesskey="p"}

    Wireless Tools-29

-   [Next](netutils.md "Networking Utilities"){accesskey="n"}

    Networking Utilities

-   [Up](netprogs.md "Chapter 15. Networking Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
