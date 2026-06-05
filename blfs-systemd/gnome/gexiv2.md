<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gvfs.md "Gvfs-1.60.0")

    Gvfs-1.60.0

-   [Next](nautilus.md "Nautilus-50.2.2")

    Nautilus-50.2.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gexiv2-0.16.0 {#gexiv2-0.16.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to gexiv2 {#introduction-to-gexiv2}

gexiv2 is a GObject-based wrapper around the Exiv2 library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gexiv2/0.16/gexiv2-0.16.0.tar.xz">https://download.gnome.org/sources/gexiv2/0.16/gexiv2-0.16.0.tar.xz</a>

-   Download MD5 sum: 0cb9fbd499f4aca2f976948395b465ee

-   Download size: 424 KB

-   Estimated disk space required: 5.5 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests; both with parallelism=4)
</div>

### gexiv2 Dependencies

#### Required

<a class="xref" href="../general/exiv2.md" title="Exiv2-0.28.8">Exiv2-0.28.8</a>

#### Recommended

<a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> (for documentation)
</div>

<div class="installation" lang="en">
## Installation of gexiv2 {#installation-of-gexiv2}

Install <span class="application">gexiv2</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, run:

```bash
meson configure -D tests=true &&
ninja test
```

As the <code class="systemitem">root</code> user:

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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgexiv2.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gexiv2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------
  <a id="libgexiv2"></a><span class="term"><code class="filename">libgexiv2.so</code></span>   provides a wrapper around the Exiv2 library
  -------------------------------------------------- ---------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gvfs.md "Gvfs-1.60.0")

    Gvfs-1.60.0

-   [Next](nautilus.md "Nautilus-50.2.2")

    Nautilus-50.2.2

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
