<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](libgee.md "libgee-0.20.8")

    libgee-0.20.8

-   [Next](gweather-locations.md "gweather-locations-2026.2")

    gweather-locations-2026.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libgtop-2.41.3 {#libgtop-2.41.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libgtop {#introduction-to-libgtop}

The <span class="application">libgtop</span> package contains a library for accessing system performance data.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libgtop/2.41/libgtop-2.41.3.tar.xz">https://download.gnome.org/sources/libgtop/2.41/libgtop-2.41.3.tar.xz</a>

-   Download MD5 sum: 465db9f4f695c298d9c48dcf7f32a9c0

-   Download size: 740 KB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.2 SBU
</div>

### libgtop Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection recommended) and <a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>
</div>

<div class="installation" lang="en">
## Installation of libgtop {#installation-of-libgtop}

Install <span class="application">libgtop</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

<code class="option">--enable-gtk-doc</code>: Use this parameter if <span class="application">GTK-Doc</span> is installed and you wish to rebuild and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">libgtop_daemon2 and libgtop_server2</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgtop-2.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libgtop-2.0 and /usr/share/gtk-doc/html/libgtop</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------
  <a id="libgtop-2"></a><span class="term"><code class="filename">libgtop-2.0.so</code></span>   contains functions that allow access to system performance data
  ---------------------------------------------------- -----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libgee.md "libgee-0.20.8")

    libgee-0.20.8

-   [Next](gweather-locations.md "gweather-locations-2026.2")

    gweather-locations-2026.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
