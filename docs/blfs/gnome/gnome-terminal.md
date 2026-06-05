<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 34. <span class="phrase">GNOME Applications</span>

-   [Prev](gnome-system-monitor.md "gnome-system-monitor-50.0")

    gnome-system-monitor-50.0

-   [Next](gnome-weather.md "gnome-weather-48.0")

    gnome-weather-48.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-terminal-3.60.0 {#gnome-terminal-3.60.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Terminal {#introduction-to-gnome-terminal}

The <span class="application">GNOME Terminal</span> package contains the terminal emulator for <span class="application">GNOME</span> Desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.gnome.org/GNOME/gnome-terminal/-/archive/3.60.0/gnome-terminal-3.60.0.tar.gz">https://gitlab.gnome.org/GNOME/gnome-terminal/-/archive/3.60.0/gnome-terminal-3.60.0.tar.gz</a>

-   Download MD5 sum: fed6d01626aa09f320e806d4347d4fe6

-   Download size: 2.9 MB

-   Estimated disk space required: 33 MB

-   Estimated build time: 0.2 SBU (With tests)
</div>

### GNOME Terminal Dependencies

#### Required

<a class="xref" href="dconf.md" title="DConf-0.49.0 / DConf-Editor-49.0">DConf-0.49.0</a>, <a class="xref" href="gnome-shell.md" title="gnome-shell-50.2"><span class="phrase">gnome-shell-50.2</a>,</span> <a class="xref" href="gsettings-desktop-schemas.md" title="gsettings-desktop-schemas-50.1">gsettings-desktop-schemas-50.1</a>, <a class="xref" href="../pst/itstool.md" title="itstool-2.0.7">itstool-2.0.7</a>, <a class="xref" href="../x/libhandy1.md" title="libhandy-1.8.3">libhandy-1.8.3</a>, and <a class="xref" href="vte.md" title="VTE-0.84.0">VTE-0.84.0</a>

#### Recommended

<a class="xref" href="nautilus.md" title="Nautilus-50.2.2">Nautilus-50.2.2</a>

#### Optional

<a class="xref" href="../general/appstream-glib.md" title="appstream-glib-0.8.3">appstream-glib-0.8.3</a> and <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Terminal {#installation-of-gnome-terminal}

First, fix some deprecated schema entries:

```bash
sed -i -r 's:"(/system):"/org/gnome\1:g' src/external.gschema.xml
```

Install <span class="application">GNOME Terminal</span> by running the following commands:

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

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

To run <span class="application">GNOME Terminal</span>, the environment variable <code class="envar">LANG</code> must be set to a UTF-8 locale <span class="emphasis"><em>prior</em></span> to starting the graphical environment.
</div>
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D search_provider=false</code>: This switch disables the <span class="application">“<span class="quote">search <span class="quote">gnome-shell</span></span>”</span> provider. Use this option if you do not have gnome-shell installed.

<code class="option">-D nautilus_extension=false</code>: This switch disables a dependency on the <span class="application">nautilus</span> file manager. Use this option if you do not have Nautilus installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">gnome-terminal</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">/usr/lib/nautilus/extensions-4/libterminal-nautilus.so (Nautilus Extension)</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{lib,share/help/\*}/gnome-terminal and /usr/share/xdg-terminals</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------- ------------------------------------------------
  <a id="gnome-terminal-prog"></a><span class="command"><span class="term"><strong>gnome-terminal</strong></span></span>   is the <span class="application">GNOME</span> Terminal Emulator
  ----------------------------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gnome-system-monitor.md "gnome-system-monitor-50.0")

    gnome-system-monitor-50.0

-   [Next](gnome-weather.md "gnome-weather-48.0")

    gnome-weather-48.0

-   [Up](applications.md "Chapter 34. GNOME Applications")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
