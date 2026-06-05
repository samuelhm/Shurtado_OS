<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](librest.md "librest-0.10.2")

    librest-0.10.2

-   [Next](vte.md "VTE-0.84.0")

    VTE-0.84.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# totem-pl-parser-3.26.7 {#totem-pl-parser-3.26.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Totem PL Parser {#introduction-to-totem-pl-parser}

The <span class="application">Totem PL Parser</span> package contains a simple GObject-based library used to parse multiple playlist formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/totem-pl-parser/3.26/totem-pl-parser-3.26.7.tar.xz">https://download.gnome.org/sources/totem-pl-parser/3.26/totem-pl-parser-3.26.7.tar.xz</a>

-   Download MD5 sum: 5ec24e9d41984c50f84453a5fc92bafe

-   Download size: 1.5 MB

-   Estimated disk space required: 14 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### Totem PL Parser Dependencies

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../general/libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>, and <a class="xref" href="../general/libgcrypt.md" title="libgcrypt-1.12.2">libgcrypt-1.12.2</a>

#### Optional

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="../general/gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a>, <a class="xref" href="gvfs.md" title="Gvfs-1.60.0">Gvfs-1.60.0</a> (for some tests), <a class="ulink" href="https://github.com/linux-test-project/lcov">LCOV</a>, and <a class="ulink" href="https://sourceforge.net/projects/quvi">libquvi \>= 0.9.1 and libquvi-scripts</a> - if they are installed, then <a class="ulink" href="https://github.com/diegonehab/luasocket">lua-socket (git)</a> is necessary for the tests

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of Totem PL Parser {#installation-of-totem-pl-parser}

Install <span class="application">Totem PL Parser</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. The test named <code class="filename">parser</code> is known to fail.

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
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libtotem-plparser-mini.so and libtotem-plparser.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/totem-pl-parser and /usr/share/gtk-doc/html/totem-pl-parser</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------- ----------------------------------------------------------------------------
  <a id="libtotem-plparser"></a><span class="term"><code class="filename">libtotem-plparser.so</code></span>             is the <span class="application">Totem</span> Playlist Parser library
  <a id="libtotem-plparser-mini"></a><span class="term"><code class="filename">libtotem-plparser-mini.so</code></span>   is a limited version of the <span class="application">Totem</span> Playlist Parser library,
  ---------------------------------------------------------------------------- ----------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](librest.md "librest-0.10.2")

    librest-0.10.2

-   [Next](vte.md "VTE-0.84.0")

    VTE-0.84.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
