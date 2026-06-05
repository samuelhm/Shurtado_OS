<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](geocode-glib.md "geocode-glib-3.26.4")

    geocode-glib-3.26.4

-   [Next](gnome-autoar.md "gnome-autoar-0.4.5")

    gnome-autoar-0.4.5

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Gjs-1.88.0 {#gjs-1.88.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gjs {#introduction-to-gjs}

<span class="application">Gjs</span> is a set of Javascript bindings for <span class="application">GNOME</span>.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/gjs/1.88/gjs-1.88.0.tar.xz">https://download.gnome.org/sources/gjs/1.88/gjs-1.88.0.tar.xz</a>

-   Download MD5 sum: 475ce5d243713eb12d221a88fc6721de

-   Download size: 788 KB

-   Estimated disk space required: 331 MB (with tests)

-   Estimated build time: 0.3 SBU (with tests; with parallelism=4)
</div>

### Gjs Dependencies

#### Required

<a class="xref" href="../x/cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a>, <a class="xref" href="../general/dbus.md" title="dbus-1.16.2">dbus-1.16.2</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), and <a class="xref" href="../general/spidermonkey.md" title="SpiderMonkey from firefox-140.11.0">SpiderMonkey from Firefox-140.11.0</a>

#### Optional (for tests)

<a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a>, and <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>

#### Optional

<a class="ulink" href="https://dtrace.org/about/">DTrace</a>, <a class="ulink" href="https://github.com/linux-test-project/lcov">LCOV</a>, <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a>, and <a class="ulink" href="https://sourceware.org/systemtap">Systemtap</a>
</div>

<div class="installation" lang="en">
## Installation of Gjs {#installation-of-gjs}

Install <span class="application">Gjs</span> by running the following commands:

```bash
mkdir gjs-build &&
cd    gjs-build &&

meson setup --prefix=/usr          \
            --buildtype=release    \
            --wrap-mode=nofallback \
            ..                     &&
ninja
```

To test the results, ensure both <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> and <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> are installed and issue: <span class="command"><strong>ninja test</strong></span> in a graphical session.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`--wrap-mode=nofallback`*: This switch prevents <span class="command"><strong>meson</strong></span> from using subproject fallbacks for any dependency declarations in the build files, preventing it from downloading any optional dependencies which are not installed on the system.

<code class="option">-D profiler=disabled</code>: This switch prevents building the profiler backend even if <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a> is installed.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gjs (symlink) and gjs-console</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgjs.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gjs-1.0, /usr/lib/gjs, /usr/libexec/installed-tests/gjs, /usr/share/gjs-1.0, and /usr/share/installed-tests/gjs</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------ ---------------------------------------------------------------
  <a id="gjs-console"></a><span class="command"><span class="term"><strong>gjs-console</strong></span></span>   contains a console to run <span class="application">JavaScript</span> commands
  <a id="libgjs"></a><span class="term"><code class="filename">libgjs.so</code></span>             contains the <span class="application">GNOME</span> JavaScript bindings
  ------------------------------------------------------ ---------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](geocode-glib.md "geocode-glib-3.26.4")

    geocode-glib-3.26.4

-   [Next](gnome-autoar.md "gnome-autoar-0.4.5")

    gnome-autoar-0.4.5

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
