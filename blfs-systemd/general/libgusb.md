<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libgudev.md "libgudev-238")

    libgudev-238

-   [Next](libical.md "libical-4.0.2")

    libical-4.0.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libgusb-0.4.9 {#libgusb-0.4.9}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libgusb {#introduction-to-libgusb}

The <span class="application">libgusb</span> package contains the GObject wrappers for <span class="application">libusb-1.0</span> that makes it easy to do asynchronous control, bulk and interrupt transfers with proper cancellation and integration into a mainloop.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/hughsie/libgusb/releases/download/0.4.9/libgusb-0.4.9.tar.xz">https://github.com/hughsie/libgusb/releases/download/0.4.9/libgusb-0.4.9.tar.xz</a>

-   Download MD5 sum: 354a3227334991ea4e924843c144bd82

-   Download size: 52 KB

-   Estimated disk space required: 5.0 MB (with tests and docs)

-   Estimated build time: 0.1 SBU (with tests and docs)
</div>

### libgusb Dependencies

#### Required

<a class="xref" href="json-glib.md" title="JSON-GLib-1.10.8">JSON-GLib-1.10.8</a> and <a class="xref" href="libusb.md" title="libusb-1.0.30">libusb-1.0.30</a>

#### Recommended

<a class="xref" href="glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="hwdata.md" title="hwdata-0.408">hwdata-0.408</a> (for <code class="filename">usb.ids</code> data file, which is also required for the tests), and <a class="xref" href="vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> and <a class="xref" href="umockdev.md" title="Umockdev-0.19.7">umockdev-0.19.7</a> (for full test coverage)
</div>

<div class="installation" lang="en">
## Installation of libgusb {#installation-of-libgusb}

Install <span class="application">libgusb</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D docs=false       &&
ninja
```

If you have <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed -E "/output|install_dir/s/('libgusb)'/\1-0.4.9'/" \
    -i ../docs/meson.build                            &&
meson configure -D docs=true                          &&
ninja
```

To test the results, run:

```bash
sed -e 's/pkg_resources/packaging.version/'  \
    -e 's/parse_version/parse/g'             \
    -i ../contrib/generate-version-script.py &&
ninja test
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D docs=false`*: Allow building this package without <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed. If you have <a class="xref" href="python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and you wish to rebuild and install the API documentation, a <span class="command"><strong>meson configure</strong></span> command will reset this option.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gusbcmd</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libgusb.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/gusb-1 and /usr/share/doc/libgusb-0.4.9 (if gi-docgen is used)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------
  <a id="gusbcmd"></a><span class="command"><span class="term"><strong>gusbcmd</strong></span></span>       is a debugging tool for the libgusb library
  <a id="libgusb-lib"></a><span class="term"><code class="filename">libgusb.so</code></span>   contains the <span class="application">libgusb</span> API functions
  -------------------------------------------------- ----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libgudev.md "libgudev-238")

    libgudev-238

-   [Next](libical.md "libical-4.0.2")

    libical-4.0.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
