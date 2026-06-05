<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](gweather-locations.md "gweather-locations-2026.2")

    gweather-locations-2026.2

-   [Next](libpeas.md "libpeas-1.38.1")

    libpeas-1.38.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libgweather-4.6.0 {#libgweather-4.6.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libgweather {#introduction-to-libgweather}

The <span class="application">libgweather</span> package is a library used to access weather information from online services for numerous locations.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libgweather/4.6/libgweather-4.6.0.tar.xz">https://download.gnome.org/sources/libgweather/4.6/libgweather-4.6.0.tar.xz</a>

-   Download MD5 sum: c52f40f2e6d6708763f15eb17ce45b97

-   Download size: 340 KB

-   Estimated disk space required: 13 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### libgweather Dependencies

#### Required

<a class="xref" href="geocode-glib.md" title="geocode-glib-3.26.4">geocode-glib-3.26.4</a>, <a class="xref" href="gweather-locations.md" title="gweather-locations-2026.2">gweather-locations-2026.2</a>, <a class="xref" href="../basicnet/libsoup3.md" title="libsoup-3.6.6">libsoup-3.6.6</a>, and <a class="xref" href="../general/python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>

#### Recommended

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> (gi-docgen is also provided as a meson subproject, which will be used if <code class="option">-D gtk_doc=false</code> is not passed to <span class="command"><strong>meson</strong></span>), <a class="xref" href="../general/llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> (for clang-format), and <a class="ulink" href="https://pypi.org/project/pylint/">pylint</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of libgweather {#installation-of-libgweather}

Install <span class="application">libgweather</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr       \
            --buildtype=release \
            -D gtk_doc=false    \
            ..                  &&
ninja
```

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed "s/libgweather_full_version/'libgweather-4.6.0'/" \
    -i ../doc/meson.build                             &&
meson configure -D gtk_doc=true                       &&
ninja
```

One test needs that the locale files be installed on the system, so it is better to run the tests after installing the package.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

To test the results, issue: <span class="command"><strong>LC_ALL=C ninja test</strong></span>. One test, <code class="filename">metar</code>, is known to fail due to some airport weather information being temporarily unavailable.
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D gtk_doc=false`*: Allow building this package without <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed. If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and you wish to rebuild and install the API documentation, a <span class="command"><strong>meson configure</strong></span> command will reset this option.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgweather-4.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/libgweather-4, /usr/include/libgweather-4.0, /usr/share/gtk-doc/html/libgweather-4.0 (optional), and /usr/share/libgweather-4</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- ------------------------------------------------------------------------
  <a id="libgweather-4"></a><span class="term"><code class="filename">libgweather-4.so</code></span>   contains functions that allow for the retrieval of weather information
  ---------------------------------------------------------- ------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gweather-locations.md "gweather-locations-2026.2")

    gweather-locations-2026.2

-   [Next](libpeas.md "libpeas-1.38.1")

    libpeas-1.38.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
