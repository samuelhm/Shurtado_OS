<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 17. Networking Libraries

-   [Prev](curl.md "cURL-8.20.0")

    cURL-8.20.0

-   [Next](glib-networking.md "glib-networking-2.80.1")

    glib-networking-2.80.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GeoClue-2.8.1 {#geoclue-2.8.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GeoClue {#introduction-to-geoclue}

<span class="application">GeoClue</span> is a modular geoinformation service built on top of the <span class="application">D-Bus</span> messaging system. The goal of the <span class="application">GeoClue</span> project is to make creating location-aware applications as simple as possible.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.freedesktop.org/geoclue/geoclue/-/archive/2.8.1/geoclue-2.8.1.tar.bz2">https://gitlab.freedesktop.org/geoclue/geoclue/-/archive/2.8.1/geoclue-2.8.1.tar.bz2</a>

-   Download MD5 sum: a195d5300540209afb728d057fb1dea7

-   Download size: 112 KB

-   Estimated disk space required: 6.9 MB

-   Estimated build time: 0.1 SBU
</div>

### GeoClue Dependencies

#### Required

<a class="xref" href="../general/json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a> and <a class="xref" href="libsoup3.md" title="libsoup-3.6.6">libsoup-3.6.6</a>

#### Recommended

<a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>, <a class="xref" href="../general/ModemManager.md" title="ModemManager-1.24.2">ModemManager-1.24.2</a>, and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="avahi.md" title="Avahi-0.8">Avahi-0.8</a> and <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of GeoClue {#installation-of-geoclue}

Install <span class="application">GeoClue</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr        \
            --buildtype=release  \
            -D gtk-doc=false     \
            -D nmea-source=false \
            ..                   &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D nmea-source=false`*: This switch disables the NMEA source. Remove it if you have installed the <span class="application">Avahi</span> package and your local network has a NMEA server.

<code class="option">-D 3g-source=false</code>: This switch disables the 3G backend. Use it if you have not installed the <span class="application">ModemManager</span> package.

<code class="option">-D modem-gps-source=false</code>: This switch disables the modem GPS backend. Use it if you have not installed the <span class="application">ModemManager</span> package.

<code class="option">-D cdma-source=false</code>: This switch disables the CDMA source backend. Use it if you have not installed the <span class="application">ModemManager</span> package.

<code class="option">-D demo-agent=false</code>: This switch disables the demo. Use it if you have not installed the <span class="application">libnotify</span> package.
</div>

<div class="configuration" lang="en">
## Configuring GeoClue {#configuring-geoclue}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/geoclue/conf.d/90-lfs-google.conf</code>
</div>

<div class="sect3" lang="en">
### Configuration Information {#configuration-information}

In March of 2024, Mozilla announced the shutdown of the Mozilla Location Service. Geoclue uses this service for determining a user's location when requested by other applications. The only supported alternative by upstream is to use Google's Geolocation Service.

To use Google's Geolocation Service, an API key must be used, and a configuration file must be created. <a class="ulink" href="https://www.chromium.org/developers/how-tos/api-keys">**This API key is only intended for use with LFS. Please do not use this API key if you are building for another distro or distributing binary copies. If you need an API key, you can request one at <span class="bold">https://www.chromium.org/developers/how-tos/api-keys</a>.**</span>

Create the configuration needed for using Google's Geolocation Service as the <code class="systemitem">root</code> user:

```bash
cat > /etc/geoclue/conf.d/90-lfs-google.conf << "EOF"
# Begin /etc/geoclue/conf.d/90-lfs-google.conf

# This configuration applies for the WiFi source.
[wifi]

# Set the URL to Google's Geolocation Service.
url=https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyDxKL42zsPjbke5O8_rPVpVrLrJ8aeE9rQ

# End /etc/geoclue/conf.d/90-lfs-google.conf
EOF
```

If you do not wish to request your location from a Geolocation service, you can hardcode your location in <code class="filename">/etc/geolocation</code> using the format described in <a class="ulink" href="https://man.archlinux.org/man/geoclue">geoclue(5)</a>.
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgeoclue-2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/geoclue, /usr/include/libgeoclue-2.0, /usr/libexec/geoclue-2.0, and /usr/share/gtk-doc/html/{geoclue,libgeoclue}</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](curl.md "cURL-8.20.0")

    cURL-8.20.0

-   [Next](glib-networking.md "glib-networking-2.80.1")

    glib-networking-2.80.1

-   [Up](netlibs.md "Chapter 17. Networking Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
