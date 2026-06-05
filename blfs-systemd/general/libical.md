<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libgusb.md "libgusb-0.4.9")

    libgusb-0.4.9

-   [Next](libidn.md "libidn-1.43")

    libidn-1.43

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libical-4.0.2 {#libical-4.0.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libical {#introduction-to-libical}

The <span class="application">libical</span> package contains an implementation of the iCalendar protocols and data formats.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/libical/libical/releases/download/v4.0.2/libical-4.0.2.tar.gz">https://github.com/libical/libical/releases/download/v4.0.2/libical-4.0.2.tar.gz</a>

-   Download MD5 sum: 9cb78c7426adbf2fc648f147da2585c4

-   Download size: 1.8 MB

-   Estimated disk space required: 154 MB (with tests and docs)

-   Estimated build time: 0.4 SBU (using parallelism=4; with tests and docs)
</div>

### libical Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>

#### Recommended

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a> (both required for GNOME)

#### Optional

<a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a> (for the API documentation), <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a> (for the API documentation), <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> (for the API documentation), <a class="xref" href="icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a> (for some tests), and <a class="ulink" href="https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz">Berkeley DB</a> (deprecated)
</div>

<div class="installation" lang="en">
## Installation of libical {#installation-of-libical}

Install <span class="application">libical</span> by running the following commands:

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package may occasionally fail when building with multiple processors. See <a class="xref" href="../introduction/notes-on-building.md#parallel-builds" title="Using Multiple Processors">Using Multiple Processors</a> for more information.
</div>

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr  \
      -D CMAKE_BUILD_TYPE=Release   \
      -D LIBICAL_STATIC=NO          \
      -D LIBICAL_BUILD_DOCS=false   \
      -D LIBICAL_GLIB_VAPI=true     \
      -D LIBICAL_JAVA_BINDINGS=OFF  \
      -D LIBICAL_GOBJECT_INTROSPECTION=true \
      .. &&
make -j1
```

If you have <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, and <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> installed and wish to build the API documentation, you should remove the *`-D LIBICAL_BUILD_DOCS=false`* switch and issue:

```bash
make docs
```

If you wish to run the tests, issue:

```bash
cmake .. -D LIBICAL_BUILD_TESTING=ON &&
make &&
make test
```

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you have built the API documentation, install by issuing, as <code class="systemitem">root</code> user:

```bash
install -vdm755 /usr/share/doc/libical-4.0.2/html &&
cp -vr apidocs/html/* /usr/share/doc/libical-4.0.2/html
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply higher level of the compiler optimizations.

*`-D LIBICAL_STATIC=NO`*: This switch is used in order to only build the shared libraries.

*`-D LIBICAL_BUILD_DOCS=false`*: This switch prevents building the <span class="application">GTK</span> documentation. Remove if you want to build the documentation.

*`-D LIBICAL_GOBJECT_INTROSPECTION=true`*: This switch is used to generate GObject metadata bindings.

*`-D LIBICAL_GLIB_VAPI=true`*: This switch is used to build bindings for <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>.

<code class="option">-D LIBICAL_ENABLE_BUILTIN_TZDATA=true</code>: This switch is used to use the included timezone data.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libical.so, libicalss.so, libicalss_cxx.so, libicalvcal.so, libicalvcard.so (experimental), libical-glib.so, and libical_cxx.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/libical, /usr/include/libical-glib, /usr/lib/cmake/LibIcal, /usr/libexec/libical, /usr/share/gtk-doc/libical-glib (when docs are built), and /usr/share/doc/libical-4.0.2</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- ----------------------------------------------------------------------------------------
  <a id="libical-lib"></a><span class="term"><code class="filename">libical.so</code></span>           contains the <span class="application">libical</span> API functions
  <a id="libical_cxx-lib"></a><span class="term"><code class="filename">libical_cxx.so</code></span>   contains the <span class="application">libical</span> C++ bindings
  <a id="libical-glib"></a><span class="term"><code class="filename">libical-glib.so</code></span>     contains the <span class="application">libical</span> glib bindings
  <a id="libicalss"></a><span class="term"><code class="filename">libicalss.so</code></span>           is a library that allows you to store iCal component data on disk in a variety of ways
  <a id="libicalss_cxx"></a><span class="term"><code class="filename">libicalss_cxx.so</code></span>   contains the <span class="application">libicalss</span> C++ bindings
  <a id="libicalvcal"></a><span class="term"><code class="filename">libicalvcal.so</code></span>       is a vCard/vCalendar C interface
  <a id="libicalvcard"></a><span class="term"><code class="filename">libicalvcard.so</code></span>     is an experimental library for handling VCARD formatted data
  ---------------------------------------------------------- ----------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libgusb.md "libgusb-0.4.9")

    libgusb-0.4.9

-   [Next](libidn.md "libidn-1.43")

    libidn-1.43

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
