<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtkmm4.md "Gtkmm-4.22.0")

    Gtkmm-4.22.0

-   [Next](gtksourceview.md "gtksourceview-3.24.11")

    gtksourceview-3.24.11

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gtk-vnc-1.5.0 {#gtk-vnc-1.5.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gtk VNC {#introduction-to-gtk-vnc}

The <span class="application">Gtk VNC</span> package contains a VNC viewer widget for <span class="application">GTK+</span>. It is built using coroutines allowing it to be completely asynchronous while remaining single threaded.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gtk-vnc/1.5/gtk-vnc-1.5.0.tar.xz">https://download.gnome.org/sources/gtk-vnc/1.5/gtk-vnc-1.5.0.tar.xz</a>

-   Download MD5 sum: 6e9815e7960636e95f626a3f164eb01d

-   Download size: 224 KB

-   Estimated disk space required: 11 MB

-   Estimated build time: 0.2 SBU
</div>

### Gtk VNC Dependencies

#### Required

<a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, and <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>, and <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>

#### Optional

<a class="xref" href="../postlfs/cyrus-sasl.md" title="Cyrus SASL-2.1.28">Cyrus SASL-2.1.28</a> and <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> (for generating documentation)
</div>

<div class="installation" lang="en">
## Installation of Gtk VNC {#installation-of-gtk-vnc}

Install <span class="application">Gtk VNC</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D with-vala=disabled</code>: This switch disables building of the Vala bindings. Add this if you decide to build gtk-vnc without vala installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">gvnccapture</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgtk-vnc-2.0.so, libgvnc-1.0.so and libgvncpulse-1.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gtk-vnc-2.0, /usr/include/gvnc-1.0 and /usr/include/gvncpulse-1.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- --------------------------------------------------------------------------
  <a id="gvnccapture"></a><span class="command"><span class="term"><strong>gvnccapture</strong></span></span>           is used to capture image from VNC server
  <a id="libgtk-vnc-2"></a><span class="term"><code class="filename">libgtk-vnc-2.0.so</code></span>       contains the <span class="application">GTK+ 3</span> bindings for <span class="application">Gtk VNC</span>
  <a id="libgvnc-1a"></a><span class="term"><code class="filename">libgvnc-1.0.so</code></span>            contains the GObject bindings for <span class="application">Gtk VNC</span>
  <a id="libgvncpulse-1"></a><span class="term"><code class="filename">libgvncpulse-1.0.so</code></span>   is the <span class="application">PulseAudio</span> bridge for <span class="application">Gtk VNC</span>
  -------------------------------------------------------------- --------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gtkmm4.md "Gtkmm-4.22.0")

    Gtkmm-4.22.0

-   [Next](gtksourceview.md "gtksourceview-3.24.11")

    gtksourceview-3.24.11

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
