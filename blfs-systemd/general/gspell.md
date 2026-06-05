<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](gsl.md "gsl-2.8")

    gsl-2.8

-   [Next](highway.md "highway-1.4.0")

    highway-1.4.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gspell-1.14.3 {#gspell-1.14.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to gspell {#introduction-to-gspell}

The <span class="application">gspell</span> package provides a flexible API to add spell checking to a GTK+ application.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gspell/1.14/gspell-1.14.3.tar.xz">https://download.gnome.org/sources/gspell/1.14/gspell-1.14.3.tar.xz</a>

-   Download MD5 sum: f8d254f9865d23d7ab68bf94985a05e6

-   Download size: 120 KB

-   Estimated disk space required: 5.8 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### gspell Dependencies

#### Required

<a class="xref" href="enchant.md" title="enchant-2.8.16">enchant-2.8.16</a>, <a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a>, and <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>

#### Optional

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>, <a class="xref" href="valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, and <a class="ulink" href="https://hunspell.github.io/">Hunspell</a> (for tests)
</div>

<div class="installation" lang="en">
## Installation of gspell {#installation-of-gspell}

Install <span class="application">gspell</span> by running the following commands:

```bash
mkdir gspell-build &&
cd    gspell-build &&

meson setup --prefix=/usr --buildtype=release -D gtk_doc=false .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. The tests must be run in an X session. One test, test-checker, is known to fail if the external package <a class="ulink" href="https://hunspell.github.io/">Hunspell</a> is not installed.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D gtk_doc=false`*: Prevents building the documentation. Remove this if you have <span class="application">GTK-Doc</span> installed and wish to build the documentation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gspell-app1</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgspell-1.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gspell-1 and /usr/share/gtk-doc/html/gspell-1.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ---------------------------------------------------
  <a id="gspell-app1"></a><span class="command"><span class="term"><strong>gspell-app1</strong></span></span>   checks the spelling of a text entered in a window
  <a id="libgspell"></a><span class="term"><code class="filename">libgspell-1.so</code></span>     is the <span class="application">gspell</span> API library
  ------------------------------------------------------ ---------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gsl.md "gsl-2.8")

    gsl-2.8

-   [Next](highway.md "highway-1.4.0")

    highway-1.4.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
