<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 35. Xfce Desktop

-   [Prev](garcon.md "Garcon-4.20.0")

    Garcon-4.20.0

-   [Next](xfce4-dev-tools.md "xfce4-dev-tools-4.20.0")

    xfce4-dev-tools-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libwnck-43.3 {#libwnck-43.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libwnck {#introduction-to-libwnck}

The <span class="application">libwnck</span> package contains the Window Navigator Construction Kit.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libwnck/43/libwnck-43.3.tar.xz">https://download.gnome.org/sources/libwnck/43/libwnck-43.3.tar.xz</a>

-   Download MD5 sum: 61938ba1c41f38c9c12033aca5706598

-   Download size: 448 KB

-   Estimated disk space required: 9.8 MB

-   Estimated build time: 0.1 SBU
</div>

### libwnck Dependencies

#### Required

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection) and <a class="xref" href="../x/startup-notification.md" title="startup-notification-0.12">startup-notification-0.12</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of libwnck {#installation-of-libwnck}

Install <span class="application">libwnck</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
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

<code class="option">-D gtk_doc=true</code>: Use this option to build the API reference manual.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">wnckprop and wnck-urgency-monitor</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libwnck-3.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libwnck-3.0 and /usr/share/gtk-doc/html/libwnck-3.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ------------------------------------------------------------------------------------------------
  <a id="wnckprop"></a><span class="command"><span class="term"><strong>wnckprop</strong></span></span>     is used to print or modify the properties of a screen/workspace/window, or to interact with it
  <a id="libwnck-3"></a><span class="term"><code class="filename">libwnck-3.so</code></span>   contains functions for writing pagers and task lists
  -------------------------------------------------- ------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](garcon.md "Garcon-4.20.0")

    Garcon-4.20.0

-   [Next](xfce4-dev-tools.md "xfce4-dev-tools-4.20.0")

    xfce4-dev-tools-4.20.0

-   [Up](xfce-core.md "Chapter 35. Xfce Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
