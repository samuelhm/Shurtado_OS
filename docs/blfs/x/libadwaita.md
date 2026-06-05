<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](keybinder-3.md "keybinder-3.0-0.3.2")

    keybinder-3.0-0.3.2

-   [Next](libei.md "libei-1.6.0")

    libei-1.6.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libadwaita-1.9.1 {#libadwaita-1.9.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libadwaita {#introduction-to-libadwaita}

The <span class="application">libadwaita</span> package provides additional GTK4 UI widgets for use in developing user interfaces. It is used primarily for GNOME applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libadwaita/1.9/libadwaita-1.9.1.tar.xz">https://download.gnome.org/sources/libadwaita/1.9/libadwaita-1.9.1.tar.xz</a>

-   Download MD5 sum: 86f4222771dabbb396d516afbc287b1c

-   Download size: 2.7 MB

-   Estimated disk space required: 214 MB (with tests and docs)

-   Estimated build time: 1.3 SBU (with parallelism=4; with tests and docs)
</div>

### libadwaita Dependencies

#### Required

<a class="xref" href="../general/appstream.md" title="AppStream-1.1.2">AppStream-1.1.2</a>, <a class="xref" href="gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, and <a class="xref" href="../general/sassc.md" title="sassc-3.6.2">sassc-3.6.2</a>

#### Recommended

<a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> and <a class="xref" href="xdg-desktop-portal.md" title="xdg-desktop-portal-1.20.4">xdg-desktop-portal-1.20.4</a> (for two tests)
</div>

<div class="installation" lang="en">
## Installation of libadwaita {#installation-of-libadwaita}

Install <span class="application">libadwaita</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed "s/apiversion/'1.9.1'/" -i ../doc/meson.build &&
meson configure -D documentation=true             &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. The tests must be run from a graphical session. Two tests will fail if <a class="xref" href="xdg-desktop-portal.md" title="xdg-desktop-portal-1.20.4">xdg-desktop-portal-1.20.4</a> is not installed.

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
**Installed Programs:** <span class="segbody">adwaita-1-demo</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libadwaita-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libadwaita-1</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ --------------------------------------------------------------------------
  <a id="adwaita-1-demo"></a><span class="command"><span class="term"><strong>adwaita-1-demo</strong></span></span>   provides an example of how to use the <span class="application">libadwaita</span> library
  <a id="libadwaita-1"></a><span class="term"><code class="filename">libadwaita-1.so</code></span>       provides additional GTK widgets for use in creating user interfaces
  ------------------------------------------------------------ --------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](keybinder-3.md "keybinder-3.0-0.3.2")

    keybinder-3.0-0.3.2

-   [Next](libei.md "libei-1.6.0")

    libei-1.6.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
