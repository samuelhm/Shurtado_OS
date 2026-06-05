<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](libgweather.md "libgweather-4.6.0")

    libgweather-4.6.0

-   [Next](libshumate.md "libshumate-1.6.1")

    libshumate-1.6.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libpeas-1.38.1 {#libpeas-1.38.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libpeas {#introduction-to-libpeas}

<span class="application">libpeas</span> is a GObject based plugins engine, and is targeted at giving every application the chance to assume its own extensibility.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/libpeas/1.38/libpeas-1.38.1.tar.xz">https://download.gnome.org/sources/libpeas/1.38/libpeas-1.38.1.tar.xz</a>

-   Download MD5 sum: 5e2388cd39322cd121be67ef398297d6

-   Download size: 192 KB

-   Estimated disk space required: 13 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
</div>

### libpeas Dependencies

#### Required

<a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection) and <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>

#### Recommended

<a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="ulink" href="https://glade.gnome.org/">Glade</a>, <a class="ulink" href="https://pypi.org/project/embed">embed</a>, <a class="ulink" href="https://github.com/pavouk/lgi">LGI</a> (for LUA bindings, built with LUA-5.1), with either <a class="xref" href="../general/luajit.md" title="luajit-20260213">luajit-20260213</a> or <a class="ulink" href="https://www.lua.org/ftp/lua-5.1.5.tar.gz">LUA-5.1</a>
</div>

<div class="installation" lang="en">
## Installation of libpeas {#installation-of-libpeas}

Install <span class="application">libpeas</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr          \
            --buildtype=release    \
            --wrap-mode=nofallback \
            -D python3=false       \
            ..                     &&
ninja
```

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed "/docs_dir =/s@\$@/ 'libpeas-1.38.1'@" \
    -i ../docs/reference/meson.build       &&
meson configure -D gtk_doc=true            &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. An active graphical session with bus address is necessary to run the tests.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`--wrap-mode=nofallback`*: This switch prevents <span class="command"><strong>meson</strong></span> from using subproject fallbacks for any dependency declarations in the build files, preventing it from downloading any optional dependencies which are not installed on the system.

*`-D python3=false`*: This switch disables the Python plugin loader because it is incompatible with pygobject-3.52.x, and it will cause applications which load Python plugins to hang indefinitely.

<code class="option">-D vapi=true</code>: Add this switch if you wish to generate vapi (vala) data.

<code class="option">-D demos=false</code>: Add this switch if you do not wish to build the demo programs.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">peas-demo</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpeas-1.0.so and libpeas-gtk-1.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libpeas-1.0, /usr/lib/libpeas-1.0, /usr/lib/peas-demo and /usr/share/gtk-doc/html/libpeas (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------ -------------------------------------------------------------------
  <a id="peas-demo"></a><span class="command"><span class="term"><strong>peas-demo</strong></span></span>             is the Peas demo program
  <a id="libpeas-1"></a><span class="term"><code class="filename">libpeas-1.0.so</code></span>           contains the <span class="application">libpeas</span> API functions
  <a id="libpeas-gtk-1"></a><span class="term"><code class="filename">libpeas-gtk-1.0.so</code></span>   contains the <span class="application">libpeas</span> <span class="application">GTK+</span> widgets
  ------------------------------------------------------------ -------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libgweather.md "libgweather-4.6.0")

    libgweather-4.6.0

-   [Next](libshumate.md "libshumate-1.6.1")

    libshumate-1.6.1

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
