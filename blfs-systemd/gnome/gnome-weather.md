<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](gnome-terminal.md "gnome-terminal-3.60.0")

    gnome-terminal-3.60.0

-   [Next](gucharmap.md "Gucharmap-17.0.2")

    Gucharmap-17.0.2

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-weather-48.0 {#gnome-weather-48.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Weather {#introduction-to-gnome-weather}

<span class="application">GNOME Weather</span> is a small application that allows you to monitor the current weather conditions for your city, or anywhere in the world, and to access updated forecasts provided by various internet services.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-weather/48/gnome-weather-48.0.tar.xz">https://download.gnome.org/sources/gnome-weather/48/gnome-weather-48.0.tar.xz</a>

-   Download MD5 sum: 35858b4f07ede013a835033b0b258d19

-   Download size: 252 KB

-   Estimated disk space required: 4.7 MB

-   Estimated build time: less than 0.1 SBU
</div>

### GNOME Weather Dependencies

#### Required

<a class="xref" href="../basicnet/geoclue2.md" title="GeoClue-2.8.1">GeoClue-2.8.1</a>, <a class="xref" href="gjs.md" title="Gjs-1.88.0">Gjs-1.88.0</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, and <a class="xref" href="libgweather.md" title="libgweather-4.6.0">libgweather-4.6.0</a>

#### Optional

<a class="xref" href="../general/appstream-glib.md" title="appstream-glib-0.8.3">appstream-glib-0.8.3</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Weather {#installation-of-gnome-weather}

Install <span class="application">GNOME Weather</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

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
**Installed Programs:** <span class="segbody">gnome-weather</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/org.gnome.Weather</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------------------------- --------------------------------------------------------------------------------------------------------
  <a id="gnome-weather-prog"></a><span class="command"><span class="term"><strong>gnome-weather</strong></span></span>   is a small application that allows you to monitor the current weather conditions anywhere in the world
  --------------------------------------------------------------- --------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-terminal.md "gnome-terminal-3.60.0")

    gnome-terminal-3.60.0

-   [Next](gucharmap.md "Gucharmap-17.0.2")

    Gucharmap-17.0.2

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
