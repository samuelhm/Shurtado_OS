::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 16. Networking Utilities

-   [Prev](netutils.md "Networking Utilities"){accesskey="p"}

    Networking Utilities

-   [Next](bind-utils.md "BIND Utilities-9.20.20"){accesskey="n"}

    BIND Utilities-9.20.20

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#avahi}Avahi-0.8 {#avahi-0.8 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Avahi {#introduction-to-avahi .sect2}

The [Avahi]{.application} package is a system which facilitates service discovery on a local network.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lathiat/avahi/releases/download/v0.8/avahi-0.8.tar.gz](https://github.com/lathiat/avahi/releases/download/v0.8/avahi-0.8.tar.gz){.ulink}

-   Download MD5 sum: 229c6aa30674fc43c202b22c5f8c2be7

-   Download size: 1.5 MB

-   Estimated disk space required: 32 MB

-   Estimated build time: 0.3 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/avahi-0.8-ipv6_race_condition_fix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/avahi-0.8-ipv6_race_condition_fix-1.patch){.ulink}
:::

### Avahi Dependencies

#### Required

[GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (GObject Introspection recommended)

#### Recommended

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} and [libdaemon-0.14](../general/libdaemon.md "libdaemon-0.14"){.xref}

#### Optional

[D-Bus Python-1.4.0](../general/python-modules.md#dbus-python "D-Bus Python-1.4.0"){.xref}, [libevent-2.1.12](libevent.md "libevent-2.1.12"){.xref}, [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [GTK+-2](https://download.gnome.org/sources/gtk+/2.24/){.ulink} (deprecated), and [xmltoman](https://sourceforge.net/projects/xmltoman/){.ulink} (for generating documentation)
::::::

::: {.installation lang="en"}
## Installation of Avahi {#installation-of-avahi .sect2}

There should be a dedicated user and group to take control of the [**avahi-daemon**]{.command} daemon after it is started. Issue the following commands as the `root`{.systemitem} user:

``` root
groupadd -fg 84 avahi &&
useradd -c "Avahi Daemon Owner" -d /run/avahi-daemon -u 84 \
        -g avahi -s /bin/false avahi
```

There should also be a dedicated privileged access group for [Avahi]{.application} clients. Issue the following command as the `root`{.systemitem} user:

``` root
groupadd -fg 86 netdev
```

Fix a regression that results in a race condition when IPv6 is in use and multiple network adapters are present on the system:

``` userinput
patch -Np1 -i ../avahi-0.8-ipv6_race_condition_fix-1.patch
```

Fix a security vulnerability in [**avahi-daemon**]{.command}:

``` userinput
sed -i '426a if (events & AVAHI_WATCH_HUP) { \
client_free(c); \
return; \
}' avahi-daemon/simple-protocol.c
```

Install [Avahi]{.application} by running the following commands:

``` userinput
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

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--disable-libevent`*: This parameter disables the use of [libevent-2.1.12](libevent.md "libevent-2.1.12"){.xref}. Remove if you have it installed.

*`--disable-mono`*: This parameter disables the [Mono]{.application} bindings.

*`--disable-monodoc`*: This parameter disables documentation for the [Mono]{.application} bindings.

*`--disable-python`*: This parameter disables the scripts that depend on [Python]{.application}. It also allows a regular install to complete successfully.

*`--disable-qt3`*: This parameter disables the attempt to build the obsolete [Qt3]{.application} portions of the package.

*`--disable-qt4`*: This parameter disables the attempt to build the obsolete [Qt4Core]{.application} portions of the package.

*`--disable-qt5`*: This parameter disables the use of [Qt5]{.application}, and allows building without it.

*`--enable-core-docs`*: This parameter enables the building of documentation.

*`--with-distro=none`*: There is an obsolete boot script in the distribution for LFS. This option disables it.

*`--with-dbus-system-address=`*: This option prevents the package from referring to the deprecated `/var/run`{.filename} directory.

`--disable-dbus`{.option}: This parameter disables the use of [D-Bus]{.application}.

`--disable-gtk`{.option}: This parameter disables the use of [GTK+2]{.application}.

`--disable-gtk3`{.option}: This parameter disables the use of [GTK+3]{.application}.

`--disable-libdaemon`{.option}: This parameter disables the use of [libdaemon]{.application}. If you use this option, [**avahi-daemon**]{.command} won't be built.

`--enable-tests`{.option}: This option enables the building of tests and examples.

`--enable-compat-howl`{.option}: This option enables the compatibility layer for [HOWL]{.application}.

`--enable-compat-libdns_sd`{.option}: This option enables the compatibility layer for [libdns_sd]{.application}.
:::

:::: {.configuration lang="en"}
## Configuring avahi {#configuring-avahi .sect2}

::: {.sect3 lang="en"}
### []{#avahi-init}Boot Script {#boot-script .sect3}

The [**avahi-daemon**]{.command} will conflict with [**systemd-resolved**]{.command} under the default configuration if both are running simultaneously on a system because both will act as a Multicast DNS resolver and responder. If you must run the Avahi daemon (the BLFS editors don't recommend to do that unless you really need its functionality), disable the Multicast DNS support of [**systemd-resolved**]{.command} and enable the previously installed systemd unit by running the following command as the `root`{.systemitem} user:

``` userinput
mkdir -pv /etc/systemd/resolved.conf.d &&
cat > /etc/systemd/resolved.conf.d/no-mdns.conf << EOF &&
[Resolve]
MulticastDNS=no
EOF
systemctl enable avahi-daemon
```

To start the [**avahi-dnsconfd**]{.command} daemon at boot, enable the previously installed systemd unit by running the following command as the `root`{.systemitem} user (note that the following command will also implicitly enable [**avahi-daemon**]{.command}, so if you are running it, you need to make sure you've disabled the [**systemd-resolved**]{.command} Multicast DNS support as mentioned above):

``` userinput
systemctl enable avahi-dnsconfd
```
:::
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [avahi-autoipd, avahi-browse, avahi-browse-domains, avahi-daemon, avahi-discover-standalone, avahi-dnsconfd, avahi-publish, avahi-publish-address, avahi-publish-service, avahi-resolve, avahi-resolve-address, avahi-resolve-host-name, avahi-set-host-name, bshell, bssh, and bvnc]{.segbody}
:::

::: seg
**Installed Libraries:** [libavahi-client.so, libavahi-common.so, libavahi-core.so, libavahi-glib.so, libavahi-gobject.so, libavahi-libevent.so libavahi-ui-gtk3.so, libavahi-ui.so, libdns_sd.so, and libhowl.so]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/avahi/services, /usr/include/{avahi-client,avahi-common, avahi-compat-howl, avahi-compat-libdns_sd, avahi-core, avahi-glib, avahi-gobject, avahi-libevent, avahi-ui}, /usr/lib/avahi, /usr/share/avahi]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------
  []{#avahi-autoipd}[[**avahi-autoipd**]{.command}]{.term}                           is a IPv4LL network address configuration daemon
  []{#avahi-browse}[[**avahi-browse**]{.command}]{.term}                             browses for mDNS/DNS-SD services using the [Avahi]{.application} daemon
  []{#avahi-browse-domains}[[**avahi-browse-domains**]{.command}]{.term}             browses for mDNS/DNS-SD services using the [Avahi]{.application} daemon
  []{#avahi-daemon}[[**avahi-daemon**]{.command}]{.term}                             is the [Avahi]{.application} mDNS/DNS-SD daemon
  []{#avahi-discover-standalone}[[**avahi-discover-standalone**]{.command}]{.term}   browses for mDNS/DNS-SD services using the [Avahi]{.application} daemon
  []{#avahi-dnsconfd}[[**avahi-dnsconfd**]{.command}]{.term}                         is a Unicast DNS server from mDNS/DNS-SD configuration daemon
  []{#avahi-publish}[[**avahi-publish**]{.command}]{.term}                           registers a mDNS/DNS-SD service or host name or address mapping using the [Avahi]{.application} daemon
  []{#avahi-publish-address}[[**avahi-publish-address**]{.command}]{.term}           registers a mDNS/DNS-SD service or host name or address mapping using the [Avahi]{.application} daemon
  []{#avahi-publish-service}[[**avahi-publish-service**]{.command}]{.term}           registers a mDNS/DNS-SD service or host name or address mapping using the [Avahi]{.application} daemon
  []{#avahi-resolve}[[**avahi-resolve**]{.command}]{.term}                           resolves one or more mDNS/DNS host name(s) to IP address(es) (and vice versa) using the [Avahi]{.application} daemon
  []{#avahi-resolve-address}[[**avahi-resolve-address**]{.command}]{.term}           resolves one or more mDNS/DNS host name(s) to IP address(es) (and vice versa) using the [Avahi]{.application} daemon
  []{#avahi-resolve-host-name}[[**avahi-resolve-host-name**]{.command}]{.term}       resolves one or more mDNS/DNS host name(s) to IP address(es) (and vice versa) using the [Avahi]{.application} daemon
  []{#avahi-set-host-name}[[**avahi-set-host-name**]{.command}]{.term}               changes the mDNS host name
  []{#bssh}[[**bssh**]{.command}]{.term}                                             browses for SSH servers on the local network
  []{#bvnc}[[**bvnc**]{.command}]{.term}                                             browses for VNC servers on the local network
  ---------------------------------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::::

::: navfooter
-   [Prev](netutils.md "Networking Utilities"){accesskey="p"}

    Networking Utilities

-   [Next](bind-utils.md "BIND Utilities-9.20.20"){accesskey="n"}

    BIND Utilities-9.20.20

-   [Up](netutils.md "Chapter 16. Networking Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
