<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtk4.md "GTK-4.22.4")

    GTK-4.22.4

-   [Next](gtkmm4.md "Gtkmm-4.22.0")

    Gtkmm-4.22.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Gtkmm-3.24.10 {#gtkmm-3.24.10}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gtkmm {#introduction-to-gtkmm}

The <span class="application">Gtkmm</span> package provides a C++ interface to <span class="application">GTK+ 3</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gtkmm/3.24/gtkmm-3.24.10.tar.xz">https://download.gnome.org/sources/gtkmm/3.24/gtkmm-3.24.10.tar.xz</a>

-   Download MD5 sum: 164231e1ad76b84e0b7a98f9476e244f

-   Download size: 13 MB

-   Estimated disk space required: 213 MB (with tests)

-   Estimated build time: 0.7 SBU (Using parallelism=4; with tests)
</div>

### Gtkmm Dependencies

#### Required

<a class="xref" href="atkmm.md" title="Atkmm-2.28.5">Atkmm-2.28.5</a>, <a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, and <a class="xref" href="pangomm.md" title="Pangomm-2.46.4">Pangomm-2.46.4</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>
</div>

<div class="installation" lang="en">
## Installation of Gtkmm {#installation-of-gtkmm}

Install <span class="application">Gtkmm</span> by running the following commands:

```bash
mkdir gtkmm3-build &&
cd    gtkmm3-build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. Note that you must be in a graphical environment, as the tests try to open some windows.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

If you have built the documentation (see Command Explanations below) it was installed to <code class="filename">/usr/share/doc/gtkmm-3.0</code>. For consistency, move it to a versioned directory as the <code class="systemitem">root</code> user:

```bash
mv -v /usr/share/doc/gtkmm-3.0 /usr/share/doc/gtkmm-3.24.10
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
**Installed Libraries:** <span class="segbody">libgdkmm-3.0.so and libgtkmm-3.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gdkmm-3.0, /usr/include/gtkmm-3.0, /usr/lib/gdkmm-3.0, /usr/lib/gtkmm-3.0, and optionally /usr/share/{devhelp/books/gtkmm-3.0,doc/gtkmm-3.24.10}</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ -------------------------------------------------
  <a id="libgdkmm-3"></a><span class="term"><code class="filename">libgdkmm-3.0.so</code></span>   contains the GDK API classes
  <a id="libgtkmm-3"></a><span class="term"><code class="filename">libgtkmm-3.0.so</code></span>   contains the <span class="application">GTK+ 3</span> API classes
  ------------------------------------------------------ -------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gtk4.md "GTK-4.22.4")

    GTK-4.22.4

-   [Next](gtkmm4.md "Gtkmm-4.22.0")

    Gtkmm-4.22.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
