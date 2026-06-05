<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libdrm.md "Libdrm-2.4.134")

    Libdrm-2.4.134

-   [Next](libnotify.md "libnotify-0.8.8")

    libnotify-0.8.8

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libepoxy-1.5.10 {#libepoxy-1.5.10}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libepoxy {#introduction-to-libepoxy}

<span class="application">libepoxy</span> is a library for handling OpenGL function pointer management.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libepoxy/1.5/libepoxy-1.5.10.tar.xz">https://download.gnome.org/sources/libepoxy/1.5/libepoxy-1.5.10.tar.xz</a>

-   Download MD5 sum: 10c635557904aed5239a4885a7c4efb7

-   Download size: 220 KB

-   Estimated disk space required: 13 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### libepoxy Dependencies

#### Required

<a class="xref" href="mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (for documentation)
</div>

<div class="installation" lang="en">
## Installation of libepoxy {#installation-of-libepoxy}

Install <span class="application">libepoxy</span> by running the following commands:

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

<code class="option">-D docs=true</code>: If you have <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> installed, add this option to generate additional documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libepoxy.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/epoxy</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------------------
  <a id="libepoxy-lib"></a><span class="term"><code class="filename">libepoxy.so</code></span>   contains API functions for handling OpenGL function pointer management
  ---------------------------------------------------- ------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libdrm.md "Libdrm-2.4.134")

    Libdrm-2.4.134

-   [Next](libnotify.md "libnotify-0.8.8")

    libnotify-0.8.8

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
