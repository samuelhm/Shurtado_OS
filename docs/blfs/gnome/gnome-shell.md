<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](mutter.md "Mutter-50.1")

    Mutter-50.1

-   [Next](gnome-shell-extensions.md "gnome-shell-extensions-50.2")

    gnome-shell-extensions-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-shell-50.2 {#gnome-shell-50.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Shell {#introduction-to-gnome-shell}

The <span class="application">GNOME Shell</span> is the core user interface of the <span class="application">GNOME</span> Desktop environment.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-shell/50/gnome-shell-50.2.tar.xz">https://download.gnome.org/sources/gnome-shell/50/gnome-shell-50.2.tar.xz</a>

-   Download MD5 sum: 96a19a2157b5bbcbda447888bb6f2f30

-   Download size: 2.2 MB

-   Estimated disk space required: 64 MB (with tests)

-   Estimated build time: 0.5 SBU (Using parallelism=4; with tests)
</div>

### GNOME Shell Dependencies

#### Required

<a class="xref" href="evolution-data-server.md" title="evolution-data-server-3.60.2">evolution-data-server-3.60.2</a>, <a class="xref" href="gcr4.md" title="Gcr-4.4.0.1">Gcr-4.4.0.1</a>, <a class="xref" href="gjs.md" title="Gjs-1.88.0">Gjs-1.88.0</a>, <a class="xref" href="gnome-desktop.md" title="gnome-desktop-44.5">gnome-desktop-44.5</a>, <a class="xref" href="../general/ibus.md" title="ibus-1.5.34">ibus-1.5.34</a>, <a class="xref" href="mutter.md" title="Mutter-50.1">Mutter-50.1</a>, <a class="xref" href="../postlfs/polkit.md" title="Polkit-127">Polkit-127</a>, and <a class="xref" href="../x/startup-notification.md" title="startup-notification-0.12">startup-notification-0.12</a>

#### Recommended

<a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, <a class="xref" href="gnome-autoar.md" title="gnome-autoar-0.4.5">gnome-autoar-0.4.5</a>, <a class="xref" href="gnome-bluetooth.md" title="gnome-bluetooth-47.2">gnome-bluetooth-47.2</a>, <a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="../basicnet/networkmanager.md" title="NetworkManager-1.56.1">NetworkManager-1.56.1</a>, and <a class="xref" href="../general/power-profiles-daemon.md" title="Power-profiles-daemon-0.30">power-profiles-daemon-0.30</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="ulink" href="https://github.com/scop/bash-completion">bash-completion</a>

#### Required Runtime Dependencies

<a class="xref" href="../x/adwaita-icon-theme.md" title="adwaita-icon-theme-50.0">adwaita-icon-theme-50.0</a>, <a class="xref" href="dconf.md" title="DConf-0.49.0 / DConf-Editor-49.0">DConf-0.49.0</a>, <a class="xref" href="../x/gdm.md" title="GDM-50.1">GDM-50.1</a>, <a class="xref" href="libgweather.md" title="libgweather-4.6.0">libgweather-4.6.0</a>, <a class="xref" href="../basicnet/libnma.md" title="libnma-1.10.6">libnma-1.10.6</a>, and <a class="xref" href="../general/systemd.md" title="Systemd-260.2">Systemd-260.2</a>

#### Recommended Runtime Dependencies

<a class="xref" href="gnome-menus.md" title="gnome-menus-3.38.1">gnome-menus-3.38.1</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Shell {#installation-of-gnome-shell}

Install <span class="application">GNOME Shell</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D tests=false      \
            ..                  &&
ninja
```

To run the tests, ensure <span class="application">Mutter</span> is installed after running its test suite, and issue:

```bash
meson configure -D tests=true &&
ninja test
```

You must be running in a Wayland session to run the tests. Some will fail if <a class="xref" href="../x/gdm.md" title="GDM-50.1">GDM-50.1</a> is not installed. One test named <code class="filename">CSS styling support</code> is known to fail with some multi-monitor configurations.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D extensions_tool=false</code>: This switch allows building this package without <a class="xref" href="gnome-autoar.md" title="gnome-autoar-0.4.5">gnome-autoar-0.4.5</a> installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gnome-extensions, gnome-extensions-app, gnome-shell, gnome-shell-extension-tool, and gnome-shell-test-tool</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/gnome-shell, /usr/share/gnome-shell, /usr/share/gtk-doc/html/{shell,st} (optional), and /usr/share/xdg-desktop-portal/</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- ----------------------------------------------------------------------------------
  <a id="gnome-shell-prog"></a><span class="command"><span class="term"><strong>gnome-shell</strong></span></span>   provides the core user interface functions for the <span class="application">GNOME</span> Desktop
  ----------------------------------------------------------- ----------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](mutter.md "Mutter-50.1")

    Mutter-50.1

-   [Next](gnome-shell-extensions.md "gnome-shell-extensions-50.2")

    gnome-shell-extensions-50.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
