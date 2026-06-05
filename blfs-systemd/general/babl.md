<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](aalib.md "AAlib-1.4rc5")

    AAlib-1.4rc5

-   [Next](exiv2.md "Exiv2-0.28.8")

    Exiv2-0.28.8

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# babl-0.1.126 {#babl-0.1.126}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Babl {#introduction-to-babl}

The <span class="application">Babl</span> package is a dynamic, any to any, pixel format translation library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gimp.org/pub/babl/0.1/babl-0.1.126.tar.xz">https://download.gimp.org/pub/babl/0.1/babl-0.1.126.tar.xz</a>

-   Download MD5 sum: bfe3e2aecbbd419494723495aec586de

-   Download size: 320 KB

-   Estimated disk space required: 17 MB (with tests)

-   Estimated build time: 0.1 SBU (Using parallelism=4; with tests)
</div>

### Babl Dependencies

#### Recommended

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, and <a class="xref" href="lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>

#### Optional

<a class="ulink" href="https://w3m.sourceforge.net/">w3m</a>
</div>

<div class="installation" lang="en">
## Installation of Babl {#installation-of-babl}

Install <span class="application">Babl</span> by running the following commands:

```bash
mkdir bld &&
cd    bld &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&

install -v -m755 -d                         /usr/share/gtk-doc/html/babl/graphics &&
install -v -m644 docs/*.{css,html}          /usr/share/gtk-doc/html/babl          &&
install -v -m644 docs/graphics/*.{html,svg} /usr/share/gtk-doc/html/babl/graphics
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>install -v -m755 -d /usr/share/gtk-doc/html/babl/graphics</strong></span>: This and the subsequent commands install the library html documentation under <code class="filename">/usr/share/gtk-doc/html</code> where other gtk packages put the programmer-oriented documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libbabl-0.1.so and libraries in /usr/lib/babl-0.1</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,lib}/babl-0.1 and /usr/share/gtk-doc/html/babl</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- --------------------------------------------------------------------
  <a id="libbabl"></a><span class="term"><code class="filename">libbabl-0.1.so</code></span>   contains functions to access BablFishes to convert between formats
  -------------------------------------------------- --------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](aalib.md "AAlib-1.4rc5")

    AAlib-1.4rc5

-   [Next](exiv2.md "Exiv2-0.28.8")

    Exiv2-0.28.8

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
