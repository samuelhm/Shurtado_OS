<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](nautilus.md "Nautilus-50.2.2")

    Nautilus-50.2.2

-   [Next](gnome-keyring.md "gnome-keyring-50.0")

    gnome-keyring-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gnome-bluetooth-47.2 {#gnome-bluetooth-47.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GNOME Bluetooth {#introduction-to-gnome-bluetooth}

The <span class="application">GNOME Bluetooth</span> package contains tools for managing and manipulating Bluetooth devices using the <span class="application">GNOME</span> Desktop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gnome-bluetooth/47/gnome-bluetooth-47.2.tar.xz">https://download.gnome.org/sources/gnome-bluetooth/47/gnome-bluetooth-47.2.tar.xz</a>

-   Download MD5 sum: 8b4677d6693a6619f28d97a895f1b3be

-   Download size: 292 KB

-   Estimated disk space required: 12 MB (with tests)

-   Estimated build time: 0.1 SBU (Using parallelism=4, with tests)
</div>

### GNOME Bluetooth Dependencies

#### Required

<a class="xref" href="gsound.md" title="GSound-1.0.3">gsound-1.0.3</a>, <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, <a class="xref" href="../x/libnotify.md" title="libnotify-0.8.8">libnotify-0.8.8</a>, and <a class="xref" href="../general/upower.md" title="UPower-1.91.2">UPower-1.91.2</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection) and <a class="xref" href="../x/libadwaita.md" title="libadwaita-1.9.1">libadwaita-1.9.1</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="xref" href="../general/python-modules.md#python-dbusmock" title="dbusmock-0.38.1">dbusmock-0.38.1</a>

#### Optional at Runtime

<a class="xref" href="../general/bluez.md" title="BlueZ-5.86">BlueZ-5.86</a>
</div>

<div class="installation" lang="en">
## Installation of GNOME Bluetooth {#installation-of-gnome-bluetooth}

Install <span class="application">GNOME Bluetooth</span> by running the following commands:

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
**Installed Programs:** <span class="segbody">bluetooth-sendto</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgnome-bluetooth-3.0.so and libgnome-bluetooth-ui-3.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gnome-bluetooth-3.0 and /usr/share/gnome-bluetooth-3.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------- -----------------------------------------------------------------------------
  <a id="bluetooth-sendto"></a><span class="command"><span class="term"><strong>bluetooth-sendto</strong></span></span>               is a <span class="application">GTK+</span> application for transferring files over Bluetooth
  <a id="libgnome-bluetooth-3.0"></a><span class="term"><code class="filename">libgnome-bluetooth-3.0.so</code></span>   contains the <span class="application">GNOME Bluetooth</span> API functions
  ---------------------------------------------------------------------------- -----------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](nautilus.md "Nautilus-50.2.2")

    Nautilus-50.2.2

-   [Next](gnome-keyring.md "gnome-keyring-50.0")

    gnome-keyring-50.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
