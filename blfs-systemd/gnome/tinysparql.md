<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](evolution-data-server.md "evolution-data-server-3.60.2")

    evolution-data-server-3.60.2

-   [Next](localsearch.md "localsearch-3.11.1")

    localsearch-3.11.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# tinysparql-3.11.1 {#tinysparql-3.11.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Tinysparql {#introduction-to-tinysparql}

<span class="application">Tinysparql</span> is a low-footprint RDF triple store with a SPARQL 1.1 interface.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/tinysparql/3.11/tinysparql-3.11.1.tar.xz">https://download.gnome.org/sources/tinysparql/3.11/tinysparql-3.11.1.tar.xz</a>

-   Download MD5 sum: aa793424c64c06b50248969f3e9d553d

-   Download size: 2.3 MB

-   Estimated disk space required: 61 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
</div>

### Tinysparql Dependencies

#### Required

<a class="xref" href="../general/json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a> and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="../basicnet/libsoup3.md" title="libsoup-3.6.6">libsoup-3.6.6</a>, and <a class="xref" href="localsearch.md" title="localsearch-3.11.1">localsearch-3.11.1</a> (runtime)

#### Optional

<a class="xref" href="../general/python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a>, <a class="xref" href="../basicnet/avahi.md" title="Avahi-0.8">Avahi-0.8</a>, <a class="xref" href="../general/graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, <a class="xref" href="../general/python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>, <a class="ulink" href="https://github.com/scop/bash-completion/">bash-completion</a>, and <a class="ulink" href="https://snowballstem.org/">libstemmer</a>
</div>

<div class="installation" lang="en">
## Installation of Tinysparql {#installation-of-tinysparql}

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

If you are upgrading this package from a version that was from when this package was known as <span class="application">Tracker</span>, remove a file that will cause a conflict as the <code class="systemitem">root</code> user:
</div>

```bash
rm -fv /usr/lib/systemd/user/tracker-xdg-portal-3.service
```

Fix the location to install the documentation into:

```bash
sed -e "s/'generate'/&, '--no-namespace-dir'/"         \
    -e "/--output-dir/s/@OUTPUT@/&\/tinysparql-3.11.1/" \
    -i docs/reference/meson.build
```

Install <span class="application">Tinysparql</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D man=false        \
            -D tests=false      \
            ..                  &&
ninja
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

To test the results, ensure <a class="xref" href="../general/python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a> is installed and issue: <span class="command"><strong>meson configure -D debug=true -D tests=true && LC_ALL=C.UTF-8 ninja test</strong></span>. The test suite should be run from a graphical session. One test, test_cli, is known to fail due to the manual pages not being generated, but will pass if "-D man=false" is omitted when configuring the package. One other test, resource, is also known to fail.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D man=false`*: This switch prevents the build process from generating man pages. Omit this switch if you have <a class="xref" href="../general/python-modules.md#asciidoc" title="Asciidoc-10.2.1">asciidoc-10.2.1</a> installed and wish to generate and install the man pages.

<span class="command"><strong>meson configure -D debug=true</strong></span>: This command enables some debug checks necessary for the test suite. We don't want to enable them for the installed tinysparql libraries and programs, so we run the test suite after installation.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">tinysparql</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libtinysparql-3.0.so and libtracker-sparql-3.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/{include,lib}/tinysparql-3.0 and /usr/share/doc/tinysparql-3.11.1 (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------------------- -----------------------------------------------------------
  <a id="tinysparql-prog"></a><span class="command"><span class="term"><strong>tinysparql</strong></span></span>                 is a control program for TinySPARQL databases
  <a id="libtinysparql"></a><span class="term"><code class="filename">libtinysparql-3.0.so</code></span>            contains functions for administering TinySPARQL databases
  <a id="libtracker3-sparql"></a><span class="term"><code class="filename">libtracker-sparql-3.0.so</code></span>   contains resource management and database functions
  ----------------------------------------------------------------------- -----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](evolution-data-server.md "evolution-data-server-3.60.2")

    evolution-data-server-3.60.2

-   [Next](localsearch.md "localsearch-3.11.1")

    localsearch-3.11.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
