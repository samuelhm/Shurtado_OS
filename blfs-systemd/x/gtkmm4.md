<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtkmm3.md "Gtkmm-3.24.10")

    Gtkmm-3.24.10

-   [Next](gtk-vnc.md "gtk-vnc-1.5.0")

    gtk-vnc-1.5.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Gtkmm-4.22.0 {#gtkmm-4.22.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gtkmm {#introduction-to-gtkmm}

The <span class="application">Gtkmm</span> package provides a C++ interface to <span class="application">GTK-4</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gtkmm/4.22/gtkmm-4.22.0.tar.xz">https://download.gnome.org/sources/gtkmm/4.22/gtkmm-4.22.0.tar.xz</a>

-   Download MD5 sum: a1c76be0b7cd6156b269832e6a0bc660

-   Download size: 17 MB

-   Estimated disk space required: 217 MB (with tests)

-   Estimated build time: 0.8 SBU (With tests; both using parallelism=4)
</div>

### Gtkmm Dependencies

#### Required

<a class="xref" href="gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> and <a class="xref" href="pangomm2.md" title="Pangomm-2.56.1">Pangomm-2.56.1</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> and <a class="xref" href="vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a>
</div>

<div class="installation" lang="en">
## Installation of Gtkmm {#installation-of-gtkmm}

Install <span class="application">Gtkmm</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. Note that you must be in a graphical environment, as the tests try to open some windows.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

If you have built the documentation (see Command Explanations below) it was installed to <code class="filename">/usr/share/doc/gtkmm-4.0</code>. For consistency, move it to a versioned directory as the <code class="systemitem">root</code> user:

```bash
mv -v /usr/share/doc/gtkmm-4.0 /usr/share/doc/gtkmm-4.22.0
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<code class="option">-D build-documentation=true</code>: If you have installed <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> this define will build and install the documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgdkmm-4.0.so and libgtkmm-4.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gdkmm-4.0, /usr/include/gtkmm-4.0, /usr/lib/gdkmm-4.0, /usr/lib/gtkmm-4.0, and optionally /usr/share/{devhelp/books/gtkmm-4.0,doc/gtkmm-4.22.0}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ------------------------------------------------
  <a id="libgdkmm-4"></a><span class="term"><code class="filename">libgdkmm-4.0.so</code></span>   contains the GDK API classes
  <a id="libgtkmm-4"></a><span class="term"><code class="filename">libgtkmm-4.0.so</code></span>   contains the <span class="application">GTK 4</span> API classes
  ------------------------------------------------------ ------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gtkmm3.md "Gtkmm-3.24.10")

    Gtkmm-3.24.10

-   [Next](gtk-vnc.md "gtk-vnc-1.5.0")

    gtk-vnc-1.5.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
