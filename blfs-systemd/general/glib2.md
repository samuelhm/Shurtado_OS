<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](fmt.md "fmt-12.1.0")

    fmt-12.1.0

-   [Next](glibmm.md "GLibmm-2.66.8")

    GLibmm-2.66.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GLib-2.88.1 {#glib-2.88.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GLib {#introduction-to-glib}

The <span class="application">GLib</span> package contains low-level libraries useful for providing data structure handling for C, portability wrappers and interfaces for runtime functionality such as an event loop, threads, dynamic loading and an object system.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/glib/2.88/glib-2.88.1.tar.xz">https://download.gnome.org/sources/glib/2.88/glib-2.88.1.tar.xz</a>

-   Download MD5 sum: 384ea5551fc04334d113cb8b52ec9bac

-   Download size: 5.6 MB

-   Estimated disk space required: 430 MB (with tests and documentation)

-   Estimated build time: 0.7 SBU (add 0.5 SBU for tests; both using parallelism=4)
</div>

### Additional Downloads

<span class="strong"><strong>GObject Introspection (Recommended)</strong></span>

<div class="itemizedlist">
-   Download: <a class="ulink" href="https://download.gnome.org/sources/gobject-introspection/1.86/gobject-introspection-1.86.0.tar.xz">https://download.gnome.org/sources/gobject-introspection/1.86/gobject-introspection-1.86.0.tar.xz</a>

-   Download MD5 sum: fa0f2ae76868bf35ff725f940d75ec16

-   Download size: 1.1 MB
</div>

<span class="strong"><strong>Patch for Log Level Selection (Optional)</strong></span>

<div class="itemizedlist">
-   Optional patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/glib-skip_warnings-1.patch">https://www.linuxfromscratch.org/patches/blfs/svn/glib-skip_warnings-1.patch</a>
</div>

### GLib Dependencies

#### Recommended

<a class="xref" href="python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a>, and <a class="xref" href="libxslt.md" title="libxslt-1.1.45">libxslt-1.1.45</a>

#### Optional

<a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a> (for some GObject Introspection tests), <a class="xref" href="dbus.md" title="dbus-1.16.2">dbus-1.16.2</a> (for some tests), <a class="xref" href="../postlfs/fuse.md" title="Fuse-3.18.2">Fuse-3.18.2</a> and <a class="ulink" href="https://bindfs.org/">bindfs</a> (both needed for one test), <a class="xref" href="gdb.md" title="GDB-17.2">GDB-17.2</a> (for bindings), <a class="xref" href="../gnome/gjs.md" title="Gjs-1.88.0">Gjs-1.88.0</a> (for some GObject Introspection tests), <a class="xref" href="gtk-doc.md" title="GTK-Doc-1.36.1">GTK-Doc-1.36.1</a> (for GObject Introspection documentation), <a class="xref" href="../pst/docbook.md" title="docbook-xml-4.5">docbook-xml-4.5</a>, <a class="xref" href="../pst/docbook-xsl.md" title="docbook-xsl-nons-1.79.2">docbook-xsl-nons-1.79.2</a>, <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> (to build API documentation), <a class="xref" href="../basicnet/glib-networking.md" title="glib-networking-2.80.1">glib-networking-2.80.1</a> (for some tests, but this is a circular dependency), <a class="xref" href="python-modules.md#Mako" title="Mako-1.3.12">Mako-1.3.12</a> and <a class="xref" href="python-dependencies.md#markdown" title="Markdown-3.10.2">Markdown-3.10.2</a> (both for <span class="command"><strong>g-ir-doc-tool</strong></span>), and <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a>

#### Additional Runtime Dependencies

Quoted directly from the <code class="filename">INSTALL</code> file: <span class="command">“<span class="quote">Some of the mimetype-related functionality in GIO requires the <span class="quote"><strong>update-mime-database</strong></span> and <span class="command"><strong>update-desktop-database</strong></span> utilities,</span>”</span> which are part of <a class="xref" href="shared-mime-info.md" title="shared-mime-info-2.4">shared-mime-info-2.4</a> and <a class="xref" href="desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, respectively. These two utilities are also needed for some tests.
</div>

<div class="installation" lang="en">
## Installation of GLib {#installation-of-glib}

If desired, apply the optional patch. In many cases, applications that use this library, either directly or indirectly via other libraries such as <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, output numerous warnings when run from the command line. This patch enables the use of an environment variable, <code class="envar">GLIB_LOG_LEVEL</code>, that suppresses unwanted messages. The value of the variable is a digit that corresponds to:

  ------------
  1 Alert
  2 Critical
  3 Error
  4 Warning
  5 Notice
  ------------

For instance **`export GLIB_LOG_LEVEL=4`** will skip output of Warning and Notice messages (and Info/Debug messages if they are turned on). If <code class="envar">GLIB_LOG_LEVEL</code> is not defined, normal message output will not be affected.

```bash
patch -Np1 -i ../glib-skip_warnings-1.patch
```

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

If a previous version of glib is installed, move the headers out of the way so that later packages do not encounter conflicts:

```bash
if [ -e /usr/include/glib-2.0 ]; then
    rm -rf /usr/include/glib-2.0.old &&
    mv -vf /usr/include/glib-2.0{,.old}
fi
```
</div>

Install <span class="application">GLib</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                  \
      --prefix=/usr             \
      --buildtype=release       \
      -D introspection=disabled \
      -D glib_debug=disabled    \
      -D man-pages=enabled      \
      -D sysprof=disabled       &&
ninja
```

The <span class="application">GLib</span> test suite requires <span class="application">desktop-file-utils</span> for some tests. However, <span class="application">desktop-file-utils</span> requires <span class="application">GLib</span> in order to compile; therefore, you must first install <span class="application">GLib</span> and then run the test suite.

As the <code class="systemitem">root</code> user, install this package for the first time to allow building GObject Introspection:

```bash
ninja install
```

Build GObject Introspection:

```bash
tar xf ../../gobject-introspection-1.86.0.tar.xz &&

meson setup gobject-introspection-1.86.0 gi-build \
            --prefix=/usr --buildtype=release     &&
ninja -C gi-build
```

To test the results of GObject Introspection, issue: <span class="command"><strong>ninja -C gi-build test</strong></span>.

As the <code class="systemitem">root</code> user, install GObject Introspection for generating the introspection data of GLib libraries (required by various packages using Glib, especially some GNOME packages):

```bash
ninja -C gi-build install
```

Now generate the introspection data:

```bash
meson configure -D introspection=enabled &&
ninja
```

If you have <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed "/docs_dir =/s|$| / 'glib-' + meson.project_version()|" \
    -i ../docs/reference/meson.build                        &&
meson configure -D documentation=true                       &&
ninja
```

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

Do not run the test suite as <code class="systemitem">root</code> or some tests will fail unexpectedly and leave some non-FHS-compliant directories in the <code class="filename">/usr</code> hierarchy.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If the GLIB_LOG_LEVEL environment variable is set, unset it before running the tests. Also one file that was created in the first install instruction above needs to be writable. As the <code class="systemitem">root</code> user, run **`chmod a+rw .ninja_log`**.
</div>

To test the results, issue: <span class="command"><strong>LC_ALL=C ninja test</strong></span> as a non-<code class="systemitem">root</code> user.

As the <code class="systemitem">root</code> user, install this package again for the introspection data (and optionally, the documentation):

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D man-pages=enabled`*: This switch causes the build to create and install the package man pages.

*`-D glib_debug=disabled`*: This switch causes the build to not include some expensive checks for debugging in the built programs and libraries.

*`-D sysprof=disabled`*: This switch disables the tracing support for sysprof. Remove this option if you want the tracing support. Note that if sysprof is not installed, removing this option will cause the build system to download a copy of sysprof from the Internet.
</div>

<div class="content" lang="en">
## Contents {#contents}

### GLib Contents

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gapplication, gdbus, gdbus-codegen, gi-compile-repository, gi-decompile-typelib, gi-inspect-typelib gio, gio-querymodules, glib-compile-resources, glib-compile-schemas, glib-genmarshal, glib-gettextize, glib-mkenums, gobject-query, gresource, gsettings, gtester, and gtester-report</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgio-2.0.so, libgirepository-2.0.so, libglib-2.0.so, libgmodule-2.0.so, libgobject-2.0.so, and libgthread-2.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gio-unix-2.0, /usr/include/glib-2.0, /usr/lib/gio, /usr/lib/glib-2.0, /usr/share/glib-2.0, and /usr/share/doc/glib-2.88.1 (optional)</span>
</div>
</div>
</div>

### GObject Introspection Contents

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">g-ir-annotation-tool, g-ir-compiler, g-ir-doc-tool (optional), g-ir-generate, g-ir-inspect, and g-ir-scanner</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgirepository-1.0.so and \_giscanner.cpython-314-\<arch\>-linux-gnu.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gobject-introspection-1.0, /usr/lib/girepository-1.0, /usr/lib/gobject-introspection, /usr/share/gir-1.0, and /usr/share/gobject-introspection-1.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gapplication"></a><span class="command"><span class="term"><strong>gapplication</strong></span></span>                       can be used to start applications and to send messages to already-running instances of other applications
  <a id="gdbus"></a><span class="command"><span class="term"><strong>gdbus</strong></span></span>                                     is a simple tool used for working with <span class="application">D-Bus</span> objects
  <a id="gdbus-codegen"></a><span class="command"><span class="term"><strong>gdbus-codegen</strong></span></span>                     is used to generate code and/or documentation for one or more <span class="application">D-Bus</span> interfaces
  <a id="gi-compile-repository"></a><span class="command"><span class="term"><strong>gi-compile-repository</strong></span></span>     converts one or more GIR files into one or more typelib files
  <a id="gi-decompile-typelib"></a><span class="command"><span class="term"><strong>gi-decompile-typelib</strong></span></span>       is a GIR decompiler that uses the repository API
  <a id="gi-inspect-typelib"></a><span class="command"><span class="term"><strong>gi-inspect-typelib</strong></span></span>           is a utility that gives information about a GI typelib
  <a id="gio"></a><span class="command"><span class="term"><strong>gio</strong></span></span>                                         is a utility that makes many <span class="application">GIO</span> features available from the command line
  <a id="gio-querymodules"></a><span class="command"><span class="term"><strong>gio-querymodules</strong></span></span>               is used to create a <code class="filename">giomodule.cache</code> file in the listed directories. This file lists the implemented extension points for each module that has been found
  <a id="glib-compile-resources"></a><span class="command"><span class="term"><strong>glib-compile-resources</strong></span></span>   is used to read the resource description from a file and the files that it references to create a binary resource bundle that is suitable for use with the GResource API
  <a id="glib-compile-schemas"></a><span class="command"><span class="term"><strong>glib-compile-schemas</strong></span></span>       is used to compile all the GSettings XML schema files in a directory into a binary file with the name <code class="filename">gschemas.compiled</code> that can be used by GSettings
  <a id="glib-genmarshal"></a><span class="command"><span class="term"><strong>glib-genmarshal</strong></span></span>                 is a C code marshaller generation utility for GLib closures
  <a id="glib-gettextize"></a><span class="command"><span class="term"><strong>glib-gettextize</strong></span></span>                 is a variant of the <span class="application">gettext</span> internationalization utility
  <a id="glib-mkenums"></a><span class="command"><span class="term"><strong>glib-mkenums</strong></span></span>                       is a C language enum description generation utility
  <a id="gobject-query"></a><span class="command"><span class="term"><strong>gobject-query</strong></span></span>                     is a small utility that draws a tree of types
  <a id="gresource"></a><span class="command"><span class="term"><strong>gresource</strong></span></span>                             offers a simple command line interface to GResource
  <a id="gsettings"></a><span class="command"><span class="term"><strong>gsettings</strong></span></span>                             offers a simple command line interface to GSettings
  <a id="gtester"></a><span class="command"><span class="term"><strong>gtester</strong></span></span>                                 is a test running utility
  <a id="gtester-report"></a><span class="command"><span class="term"><strong>gtester-report</strong></span></span>                   is a test report formatting utility
  <a id="libgio"></a><span class="term"><code class="filename">libgio-2.0.so</code></span>                               is a library providing useful classes for general purpose I/O, networking, IPC, settings, and other high level application functionality
  <a id="libgirepository"></a><span class="term"><code class="filename">libgirepository-2.0.so</code></span>             is a library providing access to typelibs and introspection data which describes C APIs
  <a id="libglib"></a><span class="term"><code class="filename">libglib-2.0.so</code></span>                             is a general-purpose, portable utility library, which provides many useful data types, macros, type conversions, string utilities, file utilities, a mainloop abstraction, and so on
  <a id="libgmodule"></a><span class="term"><code class="filename">libgmodule-2.0.so</code></span>                       provides portable API for dynamically loading modules
  <a id="libgobject"></a><span class="term"><code class="filename">libgobject-2.0.so</code></span>                       provides the GLib base type system and object class
  <a id="libgthread"></a><span class="term"><code class="filename">libgthread-2.0.so</code></span>                       is a skeleton library for backwards compatibility; it used to be the GLib thread library but the functionalities has been merged info <code class="systemitem">libglib-2.0</code>
  <a id="g-ir-annotation-tool"></a><span class="command"><span class="term"><strong>g-ir-annotation-tool</strong></span></span>       creates or extracts annotation data from GI typelibs
  <a id="g-ir-compiler"></a><span class="command"><span class="term"><strong>g-ir-compiler</strong></span></span>                     is a counterpart of <span class="command"><strong>gi-compile-repository</strong></span> for the old <code class="systemitem">libgirepository-1.0</code> API
  <a id="g-ir-doc-tool"></a><span class="command"><span class="term"><strong>g-ir-doc-tool</strong></span></span>                     generates Mallard files that can be viewed with <span class="command"><strong>yelp</strong></span> or rendered to HTML with <span class="command"><strong>yelp-build</strong></span> from <a class="ulink" href="https://download.gnome.org/sources/yelp-tools">yelp-tools</a>
  <a id="g-ir-inspect"></a><span class="command"><span class="term"><strong>g-ir-inspect</strong></span></span>                       is a counterpart of <span class="command"><strong>gi-inspect-typelib</strong></span> for the old <code class="systemitem">libgirepository-1.0</code> API
  <a id="g-ir-generate"></a><span class="command"><span class="term"><strong>g-ir-generate</strong></span></span>                     is a counterpart of <span class="command"><strong>gi-decompile-typelib</strong></span> for the old <code class="systemitem">libgirepository-1.0</code> API
  <a id="g-ir-scanner"></a><span class="command"><span class="term"><strong>g-ir-scanner</strong></span></span>                       is a tool which generates GIR XML files by parsing headers and introspecting GObject based libraries
  <a id="libgirepository-1.0"></a><span class="term"><code class="filename">libgirepository-1.0.so</code></span>         is a counterpart of <code class="systemitem">libgirepository-2.0</code> with the old 1.0 API
  ---------------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fmt.md "fmt-12.1.0")

    fmt-12.1.0

-   [Next](glibmm.md "GLibmm-2.66.8")

    GLibmm-2.66.8

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
