<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 12. System Utilities

-   [Prev](ModemManager.md "ModemManager-1.24.2")

    ModemManager-1.24.2

-   [Next](pax.md "Pax-20240817")

    Pax-20240817

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# notification-daemon-3.20.0 {#notification-daemon-3.20.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Notification Daemon {#introduction-to-notification-daemon}

The <span class="application">Notification Daemon</span> package contains a daemon that displays passive pop-up notifications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/notification-daemon/3.20/notification-daemon-3.20.0.tar.xz">https://download.gnome.org/sources/notification-daemon/3.20/notification-daemon-3.20.0.tar.xz</a>

-   Download MD5 sum: 2de7f4075352831f1d98d8851b642124

-   Download size: 336 KB

-   Estimated disk space required: 4.1 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Notification Daemon Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> and <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a> (Built with <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> support).
</div>

<div class="installation" lang="en">
## Installation of Notification Daemon {#installation-of-notification-daemon}

Install <span class="application">Notification Daemon</span> by running the following commands:

```bash
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

You can test the notification daemon with the command <span class="command"><strong>notify-send</strong></span>:

```bash
pgrep -l notification-da &&
notify-send -i info Information "Hi ${USER}, This is a Test"
```

The command <span class="command"><strong>pgrep -l notification-da</strong></span> is added to assure that it is the daemon of this package that is running, not another one, e.g. the daemon from <a class="xref" href="../xfce/xfce4-notifyd.md" title="xfce4-notifyd-0.9.7">xfce4-notifyd-0.9.7</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">none</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">none</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">none</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ModemManager.md "ModemManager-1.24.2")

    ModemManager-1.24.2

-   [Next](pax.md "Pax-20240817")

    Pax-20240817

-   [Up](sysutils.md "Chapter 12. System Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
