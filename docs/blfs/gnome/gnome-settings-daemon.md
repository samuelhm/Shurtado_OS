<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gnome-keyring.md "gnome-keyring-50.0")

    gnome-keyring-50.0

-   [Next](tecla.md "Tecla-50.0")

    Tecla-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-settings-daemon-50.1 {#gnome-settings-daemon-50.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Settings Daemon {#introduction-to-gnome-settings-daemon}

The <span class="application">GNOME Settings Daemon</span> is responsible for setting various parameters of a <span class="application">GNOME Session</span> and the applications that run under it.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-settings-daemon/50/gnome-settings-daemon-50.1.tar.xz">https://download.gnome.org/sources/gnome-settings-daemon/50/gnome-settings-daemon-50.1.tar.xz</a>

-   Download MD5 sum: 76c9f7b0a9ef25a3ade1afc77b32e04b

-   Download size: 1.4 MB

-   Estimated disk space required: 29 MB

-   Estimated build time: 0.1 SBU (using parallelism=4, add 1.7 SBU for tests)
</div>

### GNOME Settings Daemon Dependencies

#### Required

<a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../general/fontconfig.md" title="Fontconfig-2.18.1">Fontconfig-2.18.1</a>, <a class="xref" href="gcr4.md" title="Gcr-4.4.0.1">Gcr-4.4.0.1</a>, <a class="xref" href="../basicnet/geoclue2.md" title="GeoClue-2.8.1">GeoClue-2.8.1</a>, <a class="xref" href="geocode-glib.md" title="geocode-glib-3.26.4">geocode-glib-3.26.4</a>, <a class="xref" href="gnome-desktop.md" title="gnome-desktop-44.5">gnome-desktop-44.5</a>, <a class="xref" href="../multimedia/libcanberra.md" title="libcanberra-0.30">libcanberra-0.30</a>, <a class="xref" href="libgweather.md" title="libgweather-4.6.0">libgweather-4.6.0</a>, <a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>, <a class="xref" href="../general/libwacom.md" title="libwacom-2.19.0">libwacom-2.19.0</a>, <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>, and <a class="xref" href="../general/upower.md" title="UPower-1.91.2">UPower-1.91.2</a>

#### Recommended

<a class="xref" href="../general/colord.md" title="Colord-1.4.8">colord-1.4.8</a>, <a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="../basicnet/networkmanager.md" title="NetworkManager-1.56.1">NetworkManager-1.56.1</a>, <a class="xref" href="../general/ModemManager.md" title="ModemManager-1.24.2">ModemManager-1.24.2</a>, <a class="xref" href="../postlfs/nss.md" title="NSS-3.124">nss-3.124</a>, and <a class="xref" href="../general/wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Recommended dependencies are not strictly required for this package to build and function, but you may not get expected results at runtime if you don't install them.
</div>
</div>

<div class="installation" lang="en">
## Installation of GNOME Settings Daemon {#installation-of-gnome-settings-daemon}

Install <span class="application">GNOME Settings Daemon</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To check the results, execute: <span class="command"><strong>ninja test</strong></span>. Note that you must have <span class="application">python-dbusmock</span> installed in order for the tests to complete successfully.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgsd.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/xdg/Xwayland-session.d, /usr/include/gnome-settings-daemon-48, /usr/lib/gnome-settings-daemon-48, and /usr/share/gnome-settings-daemon</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-keyring.md "gnome-keyring-50.0")

    gnome-keyring-50.0

-   [Next](tecla.md "Tecla-50.0")

    Tecla-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
