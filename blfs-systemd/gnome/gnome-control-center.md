<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](tecla.md "Tecla-50.0")

    Tecla-50.0

-   [Next](mutter.md "Mutter-50.1")

    Mutter-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-control-center-50.2 {#gnome-control-center-50.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Control Center {#introduction-to-gnome-control-center}

The <span class="application">GNOME Control Center</span> package contains the <span class="application">GNOME</span> settings manager.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-control-center/50/gnome-control-center-50.2.tar.xz">https://download.gnome.org/sources/gnome-control-center/50/gnome-control-center-50.2.tar.xz</a>

-   Download MD5 sum: ca1e3288bfd288a0b773dd7cf7b9a962

-   Download size: 6.8 MB

-   Estimated disk space required: 115 MB (with tests)

-   Estimated build time: 0.7 SBU (Using parallelism=4; with tests)
</div>

### GNOME Control Center Dependencies

#### Required

<a class="xref" href="../general/accountsservice.md" title="AccountsService-23.13.9">AccountsService-23.13.9</a>, <a class="xref" href="../general/python-modules.md#blueprint-compiler" title="blueprint-compiler-0.20.4">blueprint-compiler-0.20.4</a>, <a class="xref" href="../x/colord-gtk.md" title="colord-gtk-0.3.1">colord-gtk-0.3.1</a>, <a class="xref" href="../pst/cups.md" title="Cups-2.4.19">Cups-2.4.19</a>, <a class="xref" href="gnome-bluetooth.md" title="gnome-bluetooth-47.2">gnome-bluetooth-47.2</a>, <a class="xref" href="gnome-online-accounts.md" title="gnome-online-accounts-3.58.1">gnome-online-accounts-3.58.1</a>, <a class="xref" href="gnome-settings-daemon.md" title="gnome-settings-daemon-50.1">gnome-settings-daemon-50.1</a>, <a class="xref" href="gsound.md" title="GSound-1.0.3">gsound-1.0.3</a>, <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>, <a class="xref" href="libgtop.md" title="libgtop-2.41.3">libgtop-2.41.3</a>, <a class="xref" href="../basicnet/libnma.md" title="libnma-1.10.6">libnma-1.10.6</a>, <a class="xref" href="../postlfs/libpwquality.md" title="libpwquality-1.4.5">libpwquality-1.4.5</a>, <a class="xref" href="../postlfs/mitkrb.md" title="MIT Kerberos V5-1.22.2">MIT Kerberos V5-1.22.2</a>, <a class="xref" href="../general/ModemManager.md" title="ModemManager-1.24.2">ModemManager-1.24.2</a>, <a class="xref" href="../basicnet/samba.md" title="Samba-4.24.0">Samba-4.24.0</a>, <a class="xref" href="../general/shared-mime-info.md" title="shared-mime-info-2.4">shared-mime-info-2.4</a>, <a class="xref" href="tecla.md" title="Tecla-50.0">Tecla-50.0</a>, and <a class="xref" href="../general/udisks2.md" title="UDisks-2.11.1">UDisks-2.11.1</a>

#### Recommended

<a class="xref" href="../kde/bolt.md" title="bolt-0.9.11">bolt-0.9.11</a> and <a class="xref" href="../general/ibus.md" title="ibus-1.5.34">ibus-1.5.34</a>

#### Optional

<span class="command"><strong>Xvfb</strong></span> (from <a class="xref" href="../x/xorg-server.md" title="Xorg-Server-21.1.23">Xorg-Server-21.1.23</a> or <a class="xref" href="../x/xwayland.md" title="Xwayland-24.1.12">Xwayland-24.1.12</a>) and <a class="xref" href="../general/python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a> (both for tests)

#### Optional Runtime Dependencies

<a class="xref" href="../general/cups-pk-helper.md" title="cups-pk-helper-0.2.7">cups-pk-helper-0.2.7</a> (Printers panel), <a class="xref" href="gnome-color-manager.md" title="gnome-color-manager-3.36.2">gnome-color-manager-3.36.2</a> (Color panel), <a class="xref" href="gnome-shell.md" title="gnome-shell-50.2">gnome-shell-50.2</a> (Applications panel), and <a class="xref" href="../multimedia/sound-theme-freedesktop.md" title="sound-theme-freedesktop-0.8">sound-theme-freedesktop-0.8</a> (Additional Sound Effects in Sound panel)

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Recommended dependencies are not strictly required for this package to build and function, but you may not get expected results at runtime if you don't install them.
</div>
</div>

<div class="installation" lang="en">
## Installation of GNOME Control Center {#installation-of-gnome-control-center}

Install <span class="application">GNOME Control Center</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>GTK_A11Y=none ninja test</strong></span>. Note that you must have the <span class="application">python-dbusmock</span> module installed in order for the tests to complete successfully.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D ibus=false</code>: Use this switch if you have not installed the recommended <span class="application">IBus</span> dependency.

<code class="option">-D x11=true</code>: Use this switch to enable support for X11. Note that this is deprecated by upstream and will be removed in GNOME 50.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gnome-control-center</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/share/gnome-control-center, /usr/share/pixmaps/faces, and /usr/share/sounds/gnome</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------------------- ------------------------------------------------------------------------------------------
  <a id="gnome-control-center-prog"></a><span class="command"><span class="term"><strong>gnome-control-center</strong></span></span>   is a graphical user interface used to configure various aspects of <span class="application">GNOME</span>
  ----------------------------------------------------------------------------- ------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](tecla.md "Tecla-50.0")

    Tecla-50.0

-   [Next](mutter.md "Mutter-50.1")

    Mutter-50.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
