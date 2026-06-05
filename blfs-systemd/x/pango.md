<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libxklavier.md "libxklavier-5.4")

    libxklavier-5.4

-   [Next](pangomm.md "Pangomm-2.46.4")

    Pangomm-2.46.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Pango-1.57.1 {#pango-1.57.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Pango {#introduction-to-pango}

<span class="application">Pango</span> is a library for laying out and rendering text, with an emphasis on internationalization. It can be used anywhere that text layout is needed, though most of the work on <span class="application">Pango</span> so far has been done in the context of the <span class="application">GTK+</span> widget toolkit.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gnome.org/sources/pango/1.57/pango-1.57.1.tar.xz">https://download.gnome.org/sources/pango/1.57/pango-1.57.1.tar.xz</a>

-   Download MD5 sum: dce053460f7f648018a7afbf36720421

-   Download size: 2.5 MB

-   Estimated disk space required: 64 MB (with tests)

-   Estimated build time: less than 0.1 SBU (Using parallelism=4; with tests)
</div>

### Pango Dependencies

#### Required

<a class="xref" href="../general/fontconfig.md" title="Fontconfig-2.18.1">Fontconfig-2.18.1</a> (must be built with <a class="xref" href="../general/freetype2.md" title="FreeType-2.14.3">FreeType-2.14.3</a> using <a class="xref" href="../general/harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a>), <a class="xref" href="../general/fribidi.md" title="FriBidi-1.0.16">FriBidi-1.0.16</a>, and <a class="xref" href="../general/glib2.md" title="GLib-2.88.1">GLib-2.88.1</a> (GObject Introspection required for GNOME)

#### Recommended

<a class="xref" href="cairo.md" title="Cairo-1.18.4">Cairo-1.18.4</a> (built after <a class="xref" href="../general/harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a>) and <a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Optional

<a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> (to generate manual pages), <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> (to generate documentation), <a class="ulink" href="https://ftpmirror.gnu.org/gnu/help2man">help2man</a>, <a class="ulink" href="https://linux.thai.net/projects/libthai">libthai</a>, and <a class="ulink" href="https://wiki.gnome.org/Apps/Sysprof">sysprof</a>
</div>

<div class="installation" lang="en">
## Installation of Pango {#installation-of-pango}

Install <span class="application">Pango</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup --prefix=/usr            \
            --buildtype=release      \
            --wrap-mode=nofallback   \
            -D introspection=enabled \
            ..                       &&
ninja
```

If you have <a class="xref" href="../general/python-modules.md#docutils" title="docutils-0.23">docutils-0.23</a> installed and wish to build the manual pages for the installed programs, issue:

```bash
meson configure -D man-pages=true &&
ninja
```

If you have <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a> installed and wish to build the API documentation for this package, issue:

```bash
sed "/docs_dir =/s@\$@ / 'pango-1.57.1'@" -i ../docs/meson.build &&
meson configure -D documentation=true                            &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>. Three tests, test-font-data, test-font, and test-layout are known to fail due to missing font data.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

<code class="option">-D introspection=disabled</code>: Use this switch if you do not want to use GObject Introspection.

*`--wrap-mode=nofallback`*: This switch prevents <span class="command"><strong>meson</strong></span> from using subproject fallbacks for any dependency declarations in the build files, preventing it from downloading any optional dependencies which are not installed on the system.
</div>

<div class="configuration" lang="en">
## Configuring Pango {#configuring-pango}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/pango/pangorc</code>, <code class="filename">~/.pangorc</code> and the file specified in the environment variable <code class="envar">PANGO_RC_FILE</code>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">pango-list, pango-segmentation, and pango-view</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libpango-1.0.so, libpangocairo-1.0.so, libpangoft2-1.0.so, and libpangoxft-1.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/pango-1.0 and /usr/share/doc/pango-1.57.1 (if gi-docgen is available)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="pango-list"></a><span class="command"><span class="term"><strong>pango-list</strong></span></span>                   displays a list of fonts that <span class="application">Pango</span> can use that are currently installed on the system
  <a id="pango-segmentation"></a><span class="command"><span class="term"><strong>pango-segmentation</strong></span></span>   shows text segmentation as determined by Pango.
  <a id="pango-view"></a><span class="command"><span class="term"><strong>pango-view</strong></span></span>                   renders a given text file through <span class="application">Pango</span> for viewing purposes
  <a id="libpango-1"></a><span class="term"><code class="filename">libpango-1.0.so</code></span>                 contains low level layout rendering routines, a high level driver for laying out entire blocks of text, and routines to assist in editing internationalized text
  -------------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libxklavier.md "libxklavier-5.4")

    libxklavier-5.4

-   [Next](pangomm.md "Pangomm-2.46.4")

    Pangomm-2.46.4

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
