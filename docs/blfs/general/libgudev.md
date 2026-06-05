<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libgsf.md "libgsf-1.14.58")

    libgsf-1.14.58

-   [Next](libgusb.md "libgusb-0.4.9")

    libgusb-0.4.9

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libgudev-238 {#libgudev-238}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libgudev {#introduction-to-libgudev}

The <span class="application">libgudev</span> package contains GObject bindings for libudev.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libgudev/238/libgudev-238.tar.xz">https://download.gnome.org/sources/libgudev/238/libgudev-238.tar.xz</a>

-   Download MD5 sum: 46da30a1c69101c3a13fa660d9ab7b73

-   Download size: 32 KB

-   Estimated disk space required: 2.0 MB

-   Estimated build time: less than 0.1 SBU
</div>

#### Required

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection required for GNOME)

#### Optional

<a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="xref" href="umockdev.md" title="Umockdev-0.19.7">umockdev-0.19.7</a> (for testing)
</div>

<div class="installation" lang="en">
## Installation of libgudev {#installation-of-libgudev}

Install <span class="application">libgudev</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. One test, <code class="filename">libgudev:test-gudevdevice</code>, is known to fail with systemd-259.4 and later.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D gtk_doc=true</code>: Use this option if GTK-Doc is installed and you wish to build and install the API documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgudev-1.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gudev-1.0 and /usr/share/gtk-doc/html/gudev</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------
  <a id="libgudev-1.0"></a><span class="term"><code class="filename">libgudev-1.0.so</code></span>   is a GObject-based wrapper library for libudev
  -------------------------------------------------------- ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libgsf.md "libgsf-1.14.58")

    libgsf-1.14.58

-   [Next](libgusb.md "libgusb-0.4.9")

    libgusb-0.4.9

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
