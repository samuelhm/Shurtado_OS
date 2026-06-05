<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](accountsservice.md "AccountsService-23.13.9")

    AccountsService-23.13.9

-   [Next](at.md "at-3.2.5")

    at-3.2.5

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# acpid-2.0.34 {#acpid-2.0.34}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to acpid {#introduction-to-acpid}

The <span class="application">acpid</span> (Advanced Configuration and Power Interface event daemon) is a completely flexible, totally extensible daemon for delivering ACPI events. It listens on netlink interface and when an event occurs, executes programs to handle the event. The programs it executes are configured through a set of configuration files, which can be dropped into place by packages or by the user.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Some other packages may handle some ACPI events as well and they may conflict with this package. For example, <a class="xref" href="systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a></span> (read the documentation for <code class="option">Handle*=</code> in <a class="ulink" href="https://man.archlinux.org/man/logind.conf.5">logind.conf(5)</a> for details) and <a class="xref" href="upower.md" title="UPower-1.91.2">UPower-1.91.2</a> (used by many desktop environments such as GNOME, KDE, and XFCE for handling ACPI events). If you've installed such a package and it's enough for your use case, this package is probably not needed. If you really need this package, you must be careful configuring it and the other packages handling ACPI events to avoid conflicts. Notably, <a class="xref" href="systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a></span> handles some ACPI events by default, so the handling of these events by <a class="xref" href="systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a></span> should be disabled first if handling these events with acpid (again, read <a class="ulink" href="https://man.archlinux.org/man/logind.conf.5">logind.conf(5)</a> for details).
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/acpid2/acpid-2.0.34.tar.xz">https://downloads.sourceforge.net/acpid2/acpid-2.0.34.tar.xz</a>

-   Download MD5 sum: 988c2e3fd5ba0ea4492d3ba7273af295

-   Download size: 160 KB

-   Estimated disk space required: 1.9 MB

-   Estimated build time: less than 0.1 SBU
</div>
</div>

<div class="installation" lang="en">
## Installation of acpid {#installation-of-acpid}

Install <span class="application">acpid</span> by running the following commands:

```bash
./configure --prefix=/usr \
            --docdir=/usr/share/doc/acpid-2.0.34 &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install                         &&
install -v -m755 -d /etc/acpi/events &&
cp -r samples /usr/share/doc/acpid-2.0.34
```
</div>

<div class="configuration" lang="en">
## Configuring acpid {#configuring-acpid}

<span class="application">acpid</span> is configured by user defined events. Place event files under <code class="filename">/etc/acpi/events</code> directory. If an event occurs, <span class="command"><strong>acpid</strong></span> recurses through the event files in order to see if the regex defined after "event" matches. If they do, action is executed.

The following brief example will suspend the system when the laptop lid is closed. The example also disables the default handling of the lid close event by <a class="xref" href="systemd.md" title="Systemd-260.2"><span class="phrase">Systemd-260.2</a></span> when the system is on battery and not connected to any external monitor, in order to avoid a conflict:

```bash
cat > /etc/acpi/events/lid << "EOF"
event=button/lid
action=/etc/acpi/lid.sh
EOF

cat > /etc/acpi/lid.sh << "EOF"
#!/bin/sh
/bin/grep -q open /proc/acpi/button/lid/LID/state && exit 0
/usr/bin/systemctl suspend
EOF
chmod +x /etc/acpi/lid.sh

mkdir -pv /etc/systemd/logind.conf.d
echo HandleLidSwitch=ignore > /etc/systemd/logind.conf.d/acpi.conf
```

Unfortunately, not every computer labels ACPI events in the same way (for example, the lid may be recognized as <code class="filename">LID0</code> instead of <code class="filename">LID</code>). To determine how your buttons are recognized, use the <span class="command"><strong>acpi_listen</strong></span> tool. Also, look in the <code class="filename">samples</code> directory under <code class="filename">/usr/share/doc/acpid-2.0.34</code> for more examples.

<div class="sect3" lang="en">
### Systemd Socket {#systemd-socket}

To start the <span class="command"><strong>acpid</strong></span> daemon at boot, install the systemd unit from the <a class="xref" href="../introduction/systemd-units.md" title="BLFS Systemd Units">blfs-systemd-units-20251204</a> package by running the following command as the <code class="systemitem">root</code> user:

```bash
make install-acpid
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package uses socket based activation and will be started when something needs it. No standalone unit file is provided for this package.
</div>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">acpid, acpi_listen, and kacpimon</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/acpi and /usr/share/doc/acpid-2.0.34</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="acpid-prog"></a><span class="command"><span class="term"><strong>acpid</strong></span></span>          is a program that listens for ACPI events and executes the rules that match the received event
  <a id="acpi_listen"></a><span class="command"><span class="term"><strong>acpi_listen</strong></span></span>   is a simple tool which connects to <span class="command"><strong>acpid</strong></span> and listens for events
  <a id="kacpimon"></a><span class="command"><span class="term"><strong>kacpimon</strong></span></span>         is a monitor program that connects to three sources of ACPI events (events file, netlink and input layer) and then reports on what it sees while it is connected
  ------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](accountsservice.md "AccountsService-23.13.9")

    AccountsService-23.13.9

-   [Next](at.md "at-3.2.5")

    at-3.2.5

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
