<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 36. Xfce Applications

-   [Prev](ristretto.md "ristretto-0.14.0")

    ristretto-0.14.0

-   [Next](xfce4-pulseaudio-plugin.md "xfce4-pulseaudio-plugin-0.5.1")

    xfce4-pulseaudio-plugin-0.5.1

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xfce4-notifyd-0.9.7 {#xfce4-notifyd-0.9.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to the Xfce4 Notification Daemon {#introduction-to-the-xfce4-notification-daemon}

The <span class="application">Xfce4 Notification Daemon</span> is a small program that implements the "server-side" portion of the Freedesktop desktop notifications specification. Applications that wish to pop up a notification bubble in a standard way can use <span class="application">Xfce4-Notifyd</span> to do so by sending standard messages over <span class="application">D-Bus</span> using the org.freedesktop.Notifications interface.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/apps/xfce4-notifyd/0.9/xfce4-notifyd-0.9.7.tar.bz2">https://archive.xfce.org/src/apps/xfce4-notifyd/0.9/xfce4-notifyd-0.9.7.tar.bz2</a>

-   Download MD5 sum: d5bfe1fd8e8da9d64367a1f520d88633

-   Download size: 752 KB

-   Estimated disk space required: 12 MB

-   Estimated build time: 0.1 SBU
</div>

### The Xfce4 Notification Daemon Dependencies

#### Required

<a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>, <a class="xref" href="libxfce4ui.md" title="libxfce4ui-4.20.2">libxfce4ui-4.20.2</a>, <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>, <a class="xref" href="xfce4-dev-tools.md" title="xfce4-dev-tools-4.20.0">xfce4-dev-tools-4.20.0</a>, and <a class="xref" href="xfce4-panel.md" title="xfce4-panel-4.20.7">xfce4-panel-4.20.7</a>
</div>

<div class="installation" lang="en">
## Installation of the Xfce4 Notification Daemon {#installation-of-the-xfce4-notification-daemon}

Install the <span class="application">Xfce4 Notification Daemon</span> by running the following commands:

```bash
./configure --prefix=/usr --sysconfdir=/etc &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

You can test the notification daemon with the command <span class="command"><strong>notify-send</strong></span>, to be run in a graphical environment. But first, the daemon should be started:

```bash
/usr/lib/xfce4/notifyd/xfce4-notifyd &
notify-send -i info Information "Hi ${USER}, This is a Test"
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">xfce4-notifyd-config</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libnotification-plugin.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/themes/Bright/xfce-notify-4.0, /usr/share/themes/Default/xfce-notify-4.0, /usr/share/themes/Retro/xfce-notify-4.0, /usr/share/themes/Smoke/xfce-notify-4.0 and /usr/share/themes/ZOMG-PONIES!/xfce-notify-4.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="xfce4-notifyd-config"></a><span class="command"><span class="term"><strong>xfce4-notifyd-config</strong></span></span>   is a <span class="application">GTK+</span> GUI that allows you to change some of your preferences (theme and screen position) for the notifications that the <span class="application">Xfce4 Notification Daemon</span> displays
  ------------------------------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](ristretto.md "ristretto-0.14.0")

    ristretto-0.14.0

-   [Next](xfce4-pulseaudio-plugin.md "xfce4-pulseaudio-plugin-0.5.1")

    xfce4-pulseaudio-plugin-0.5.1

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
