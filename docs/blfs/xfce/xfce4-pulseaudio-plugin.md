<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 36. Xfce Applications

-   [Prev](xfce4-notifyd.md "xfce4-notifyd-0.9.7")

    xfce4-notifyd-0.9.7

-   [Next](../lxqt/lxqt.md "LXQt")

    LXQt

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# xfce4-pulseaudio-plugin-0.5.1 {#xfce4-pulseaudio-plugin-0.5.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to the Xfce4 Pulseaudio Plugin {#introduction-to-the-xfce4-pulseaudio-plugin}

The <span class="application">Xfce4 Pulseaudio Plugin</span> is a plugin for the Xfce panel which provides a convenient way to adjust the audio volume of the PulseAudio sound system and to an auto mixer tool like pavucontrol. It can optionally handle multimedia keys for controlling the audio volume.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.xfce.org/src/panel-plugins/xfce4-pulseaudio-plugin/0.5/xfce4-pulseaudio-plugin-0.5.1.tar.xz">https://archive.xfce.org/src/panel-plugins/xfce4-pulseaudio-plugin/0.5/xfce4-pulseaudio-plugin-0.5.1.tar.xz</a>

-   Download MD5 sum: 186a097794ced3612713c2098ec0b51c

-   Download size: 120 KB

-   Estimated disk space required: 3.4 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Xfce4 Pulseaudio Plugin Dependencies

#### Required

<a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>, <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, and <a class="xref" href="xfce4-panel.md" title="xfce4-panel-4.20.7">xfce4-panel-4.20.7</a>

#### Recommended

<a class="xref" href="../x/keybinder-3.md" title="keybinder-3.0-0.3.2">keybinder-3.0-0.3.2</a>, <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>, <a class="xref" href="libxfce4windowing.md" title="libxfce4windowing-4.20.6">libxfce4windowing-4.20.6</a>, and <a class="xref" href="../multimedia/pavucontrol.md" title="pavucontrol-6.2">pavucontrol-6.2</a> (runtime)

#### Optional

<a class="ulink" href="https://github.com/hugosenari/mpris2">mpris2</a>
</div>

<div class="installation" lang="en">
## Installation of the Xfce4 Pulseaudio Plugin {#installation-of-the-xfce4-pulseaudio-plugin}

Install the <span class="application">Xfce4 Pulseaudio Plugin</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup  --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpulseaudio-plugin.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xfce4-notifyd.md "xfce4-notifyd-0.9.7")

    xfce4-notifyd-0.9.7

-   [Next](../lxqt/lxqt.md "LXQt")

    LXQt

-   [Up](xfce-apps.md "Chapter 36. Xfce Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
