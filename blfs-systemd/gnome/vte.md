<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 33. GNOME Libraries and Desktop

-   [Prev](totem-pl-parser.md "totem-pl-parser-3.26.7")

    totem-pl-parser-3.26.7

-   [Next](yelp-xsl.md "yelp-xsl-49.0")

    yelp-xsl-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# VTE-0.84.0 {#vte-0.84.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to VTE {#introduction-to-vte}

The <span class="application">VTE</span> package contains a virtual terminal widget for GTK applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://gitlab.gnome.org/GNOME/vte/-/archive/0.84.0/vte-0.84.0.tar.gz">https://gitlab.gnome.org/GNOME/vte/-/archive/0.84.0/vte-0.84.0.tar.gz</a>

-   Download MD5 sum: 08b2325001d5ad09f8dd63201abfee7c

-   Download size: 856 KB

-   Estimated disk space required: 31 MB (with tests)

-   Estimated build time: 0.7 SBU (using parallelism=4; with tests)
</div>

### VTE Dependencies

#### Required

<a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>

#### Recommended

<a class="xref" href="../general/fast_float.md" title="fast_float-8.2.6">Fast_float-8.2.6</a>, <a class="xref" href="../general/fmt.md" title="fmt-12.1.0">fmt-12.1.0</a>, <a class="xref" href="../general/icu.md" title="icu-78.3">ICU-78.3</a>, <a class="xref" href="../postlfs/gnutls.md" title="GnuTLS-3.8.13">GnuTLS-3.8.13</a>, <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (with GObject Introspection), <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../x/gtk4.md" title="GTK-4.22.4">GTK-4.22.4</a> (at least one GTK version is required), <a class="xref" href="../general/simdutf.md" title="simdutf-9.0.0">simdutf-9.0.0</a>, and <a class="xref" href="../general/vala.md" title="Vala-0.56.19">Vala-0.56.19</a>

#### Optional

<a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, both <a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a> and <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> (for downloading copies of fast_float, fmt, and simdutf if these recommended dependencies are not installed)
</div>

<div class="installation" lang="en">
## Installation of VTE {#installation-of-vte}

Install <span class="application">VTE</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed -e "/docdir =/s@\$@/ 'vte-0.84.0'@" \
    -i ../doc/reference/meson.build     &&
meson configure -D docs=true            &&
ninja
```

To test the results, issue <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install &&
rm -v /etc/profile.d/vte.*
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<span class="command"><strong>rm -v /etc/profile.d/vte.\</strong>*</span>: This command removes two files installed in /etc/profile.d that have no use on a LFS system.

<code class="option">-D gnutls=false</code>: Add this switch if you do not want to enable GnuTLS support.

<code class="option">-D vapi=false</code>: Add this switch if you do not want to enable vala bindings.

<code class="option">-D gtk3=false</code>: Add this switch if you do not want to build the GTK-3 version of VTE.

<code class="option">-D gtk4=false</code>: Add this switch if you do not want to build the GTK-4 version of VTE.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Program:** <span class="segbody">vte-2.91 and vte-2.91-gtk4</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libvte-2.91.so and libvte-2.91-gtk4.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/vte-2.91, /usr/include/vte-2.91-gtk4, and (optional) /usr/share/doc/vte-0.84.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- -------------------------------------------------------------------------------------
  <a id="vte291"></a><span class="command"><span class="term"><strong>vte-2.91</strong></span></span>                   is a test application for the <span class="application">VTE</span> libraries
  <a id="vte291-gtk4"></a><span class="command"><span class="term"><strong>vte-2.91-gtk4</strong></span></span>         is a test application for the GTK-4 version of the <span class="application">VTE</span> libraries
  <a id="libvte291"></a><span class="term"><code class="filename">libvte-2.91.so</code></span>             is a library which implements a terminal emulator widget for <span class="application">GTK+ 3</span>
  <a id="libvte291-gtk4"></a><span class="term"><code class="filename">libvte-2.91-gtk4.so</code></span>   is a library which implements a terminal emulator widget for <span class="application">GTK-4</span>
  -------------------------------------------------------------- -------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](totem-pl-parser.md "totem-pl-parser-3.26.7")

    totem-pl-parser-3.26.7

-   [Next](yelp-xsl.md "yelp-xsl-49.0")

    yelp-xsl-49.0

-   [Up](core.md "Chapter 33. GNOME Libraries and Desktop")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
