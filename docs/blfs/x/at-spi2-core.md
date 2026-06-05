<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](atkmm.md "Atkmm-2.28.5")

    Atkmm-2.28.5

-   [Next](cairo.md "Cairo-1.18.4")

    Cairo-1.18.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# at-spi2-core-2.60.4 {#at-spi2-core-2.60.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to At-Spi2 Core {#introduction-to-at-spi2-core}

The <span class="application">At-Spi2 Core</span> package contains a comprehensive accessibility framework for the Assistive Technologies available on the <span class="application">GNOME</span> platform. This includes a set of interfaces which are implemented by other toolkits and applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/at-spi2-core/2.60/at-spi2-core-2.60.4.tar.xz">https://download.gnome.org/sources/at-spi2-core/2.60/at-spi2-core-2.60.4.tar.xz</a>

-   Download MD5 sum: d471222e2413cced6e095a792bf3988c

-   Download size: 588 KB

-   Estimated disk space required: 23 MB (with tests)

-   Estimated build time: 0.2 SBU (with tests)
</div>

### At-Spi2 Core Dependencies

#### Required

<a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection required for GNOME), <a class="xref" href="../gnome/gsettings-desktop-schemas.md" title="gsettings-desktop-schemas-50.1">gsettings-desktop-schemas-50.1</a> (Runtime), and <a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> and <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a>
</div>

<div class="installation" lang="en">
## Installation of At-Spi2 Core {#installation-of-at-spi2-core}

Install <span class="application">At-Spi2 Core</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=/usr             \
      --buildtype=release       \
      -D gtk2_atk_adaptor=false &&
ninja
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

The test suite requires the glib schemas of the package to be installed already. The tests also need to run in a graphical environment. Now that the package is installed, test the results by issuing: <span class="command"><strong>dbus-run-session ninja test</strong></span>.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D docs=true</code>: Use this switch if you want to build the documentation. Note that you must have both <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> and <a class="xref" href="../general/python-modules.md#sphinx" title="Sphinx-9.1.0">sphinx-9.1.0</a> installed on your system.

*`-D gtk2_atk_adaptor=false`*: This switch disables building the GTK+-2 module for this package.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libatk-1.0.so, libatk-bridge-2.0.so, and libatspi.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/atk-1.0, /usr/include/at-spi-2.0, /usr/include/at-spi2-atk, /usr/lib/gnome-settings-daemon-3.0, /usr/share/defaults/at-spi2, and /usr/share/gtk-doc/html/libatspi (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ --------------------------------------------------------------------------------------------------
  <a id="libatk-1.0"></a><span class="term"><code class="filename">libatk-1.0.so</code></span>                 contains functions that are used by assistive technologies to interact with desktop applications
  <a id="libatk-bridge-2.0"></a><span class="term"><code class="filename">libatk-bridge-2.0.so</code></span>   contains the Accessibility Toolkit GTK+ module
  <a id="libatspi"></a><span class="term"><code class="filename">libatspi.so</code></span>                     contains the <span class="application">At-Spi2</span> API functions
  ------------------------------------------------------------------ --------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](atkmm.md "Atkmm-2.28.5")

    Atkmm-2.28.5

-   [Next](cairo.md "Cairo-1.18.4")

    Cairo-1.18.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
