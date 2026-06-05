<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libei.md "libei-1.6.0")

    libei-1.6.0

-   [Next](libdrm.md "Libdrm-2.4.134")

    Libdrm-2.4.134

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libhandy-1.8.3 {#libhandy-1.8.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libhandy {#introduction-to-libhandy}

The <span class="application">libhandy</span> package provides additional GTK UI widgets for use in developing user interfaces.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libhandy/1.8/libhandy-1.8.3.tar.xz">https://download.gnome.org/sources/libhandy/1.8/libhandy-1.8.3.tar.xz</a>

-   Download MD5 sum: af586a91ff6d4093a6e7e283dfab5f7f

-   Download size: 1.8 MB

-   Estimated disk space required: 24 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### libhandy Dependencies

#### Required

<a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>

#### Recommended

<a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> and <a class="ulink" href="https://glade.gnome.org/">Glade</a>
</div>

<div class="installation" lang="en">
## Installation of libhandy {#installation-of-libhandy}

Install <span class="application">libhandy</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. The tests must be run from a graphical session.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D gtk_doc=true</code>: Use this option if you have <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> installed and wish to install the documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">handy-1-demo</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libhandy-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libhandy-1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------------------------------
  <a id="handy-1-demo"></a><span class="command"><span class="term"><strong>handy-1-demo</strong></span></span>   provides an example of how to use the <span class="application">libhandy</span> library
  <a id="libhandy-1"></a><span class="term"><code class="filename">libhandy-1.so</code></span>       provides additional GTK widgets for use in creating user interfaces
  -------------------------------------------------------- ------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libei.md "libei-1.6.0")

    libei-1.6.0

-   [Next](libdrm.md "Libdrm-2.4.134")

    Libdrm-2.4.134

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
