<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 41. Other X-based Programs

-   [Prev](freerdp.md "FreeRDP-3.26.0")

    FreeRDP-3.26.0

-   [Next](gparted.md "Gparted-1.8.1")

    Gparted-1.8.1

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Gimp-3.2.4 {#gimp-3.2.4}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gimp {#introduction-to-gimp}

The <span class="application">Gimp</span> package contains the GNU Image Manipulation Program which is useful for photo retouching, image composition and image authoring.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gimp.org/gimp/v3.2/gimp-3.2.4.tar.xz">https://download.gimp.org/gimp/v3.2/gimp-3.2.4.tar.xz</a>

-   Download MD5 sum: 4a5a233cf24e599bbf73084a3583e29f

-   Download size: 34 MB

-   Estimated disk space required: 639 MB (173 MB installed)

-   Estimated build time: 1.4 SBU (Using parallelism=4)
</div>

### Additional Downloads

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The English version of the help files is complete, but some parts of the text for other languages may not yet be translated.
</div>

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://download.gimp.org/pub/gimp/help/gimp-help-3.0.2.tar.bz2">https://download.gimp.org/pub/gimp/help/gimp-help-3.0.2.tar.bz2</a>

-   Download size: 123 MB

-   Download MD5 sum: a9afbeea7d55bb8655f91e2b0ca1d7a8

-   Estimated disk space required: 310 MB (74 MB installed)

-   Estimated build time: 0.5 SBU
</div>

### Gimp Dependencies

#### Required

<a class="xref" href="../general/appstream.md" title="AppStream-1.1.2">AppStream-1.1.2</a>, <a class="xref" href="../general/gegl.md" title="gegl-0.4.70">gegl-0.4.70</a>, <a class="xref" href="../gnome/gexiv2.md" title="gexiv2-0.16.0">gexiv2-0.16.0</a>, <a class="xref" href="../basicnet/glib-networking.md" title="glib-networking-2.80.1">glib-networking-2.80.1</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="../general/harfbuzz.md" title="harfBuzz-14.2.1">harfBuzz-14.2.1</a>, <a class="xref" href="../general/libmypaint.md" title="libmypaint-1.6.1">libmypaint-1.6.1</a>, <a class="xref" href="../general/librsvg.md" title="librsvg-2.62.3">librsvg-2.62.3</a>, <a class="xref" href="../general/libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="../general/libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a> (to build the translated help files), <a class="xref" href="../general/lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a>, <a class="xref" href="../general/mypaint-brushes.md" title="mypaint-brushes-2.0.2">mypaint-brushes-2.0.2</a>, and <a class="xref" href="../general/poppler.md" title="Poppler-26.06.0">Poppler-26.06.0</a> (including poppler-data)

#### Recommended

<a class="xref" href="../general/graphviz.md" title="Graphviz-15.0.0">Graphviz-15.0.0</a>, <a class="xref" href="../pst/gs.md" title="ghostscript-10.07.1">ghostscript-10.07.1</a> (with libgs installed), <a class="xref" href="../general/iso-codes.md" title="ISO Codes-4.20.1">ISO Codes-4.20.1</a>, <a class="xref" href="../general/libgudev.md" title="libgudev-238">libgudev-238</a>, <a class="xref" href="../general/python-modules.md#pygobject3" title="PyGObject-3.56.3">PyGObject-3.56.3</a>, and <a class="xref" href="xdg-utils.md" title="xdg-utils-1.2.1">xdg-utils-1.2.1</a>

#### Optional

<a class="xref" href="../general/aalib.md" title="AAlib-1.4rc5">AAlib-1.4rc5</a>, <a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../general/python-modules.md#gi-docgen" title="Gi-DocGen-2026.1">Gi-DocGen-2026.1</a>, <a class="xref" href="../gnome/gjs.md" title="Gjs-1.88.0">Gjs-1.88.0</a>, <a class="xref" href="../general/libheif.md" title="libheif-1.23.0">libheif-1.23.0</a>, <a class="xref" href="../general/libjxl.md" title="libjxl-0.11.2">libjxl-0.11.2</a>, <a class="xref" href="../general/libmng.md" title="libmng-2.0.3">libmng-2.0.3</a>, <a class="xref" href="../general/libunwind.md" title="libunwind-1.8.3">libunwind-1.8.3</a>, <a class="xref" href="../general/libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="../general/lua.md" title="Lua-5.4.8">Lua-5.4.8</a>, <a class="xref" href="../general/openjpeg2.md" title="OpenJPEG-2.5.4">OpenJPEG-2.5.4</a>, <a class="ulink" href="https://github.com/HEASARC/cfitsio">cfitsio</a>, <a class="ulink" href="https://github.com/ianlancetaylor/libbacktrace">libbacktrace</a>, <a class="ulink" href="https://github.com/svanderburg/libiff">libiff</a>, <a class="ulink" href="https://github.com/svanderburg/libilbm">libilbm</a>, <a class="ulink" href="https://wvware.sourceforge.net/libwmf.md">libwmf</a>, <a class="ulink" href="https://www.openexr.com/">OpenEXR</a>, and <a class="ulink" href="https://github.com/phoboslab/qoi">qoi</a>

#### Optional, for building the help system

<a class="ulink" href="https://dblatex.sourceforge.net/">dblatex</a> (for PDF docs), <a class="ulink" href="https://pngnq.sourceforge.net/">pngnq</a> and <a class="ulink" href="https://pmt.sourceforge.net/pngcrush/">pngcrush</a> to optimize the png files, but see the note on the help download above

Editor Notes: <a class="ulink" href="https://wiki.linuxfromscratch.org/blfs/wiki/gimp">https://wiki.linuxfromscratch.org/blfs/wiki/gimp</a>
</div>

<div class="installation" lang="en">
## Installation of Gimp {#installation-of-gimp}

If upgrading from a previous Gimp-3 installation, as the <code class="systemitem">root</code> user, remove some files and directories from the old installation or the build system may mistakenly pick them up, causing a build failure:

```bash
rm -rf /usr/{lib,share}/gimp/3.0 &&
rm -f  /usr/share/gir-1.0/Gimp-3.0.gir &&
rm -f  /usr/lib/girepository-1.0/Gimp-3.0.typelib &&
rm -f  /usr/lib/libgimp*-3.0.so*
```

Upstream provides a patch for building against gexiv2-0.16.0 and later. Use it as follows:

```bash
patch -Np1 -i build/macos/patches/0001-build-macos-Do-not-require-gexiv2-0.14-on-homebrew.patch
```

Install <span class="application">Gimp</span> by running the following commands:

```bash
mkdir gimp-build &&
cd    gimp-build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D headless-tests=disabled &&
ninja
```

To test the results (requires a terminal in a graphical environment) issue: <span class="command"><strong>ninja test</strong></span>. Three tests, <code class="filename">gimp:app / save-and-export</code>, <code class="filename">gimp:app / single-window-mode</code>, and <code class="filename">gimp:app / ui</code>, are known to fail.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package installs icon files into the <code class="filename">/usr/share/icons/hicolor</code> hierarchy and desktop files into the <code class="filename">/usr/share/applications</code> hierarchy. You can improve system performance and memory usage by updating <code class="filename">/usr/share/icons/hicolor/index.theme</code> and <code class="filename">/usr/share/applications/mimeinfo.cache</code>. To perform the update you must have <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a> installed (for the icon cache) and <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a> (for the desktop cache) and issue the following commands as the <code class="systemitem">root</code> user:

```bash
gtk-update-icon-cache -qtf /usr/share/icons/hicolor &&
update-desktop-database -q
```
</div>
</div>

<div class="installation" lang="en">
## Installation of Gimp-Help {#installation-of-gimp-help}

The <code class="filename">gimp-help</code> tarball contains images and English text help for help files, together with translations. If you wish to install local copies of the help files to read offline, unpack the gimp-help tarball and change into the root of the newly created source tree.

```bash
tar -xf ../../gimp-help-3.0.2.tar.bz2 &&
cd gimp-help-3.0.2

sed -i 's/import libxml2//' configure &&

ALL_LINGUAS="en" \
./configure --prefix=/usr
```

Building non-English languages is only possible with the libxml2 Python 3 module, which is deprecated and no longer enabled in the BLFS libxml2 build.

Now build the help files:

```bash
make
```

Issue the following commands as the <code class="systemitem">root</code> user to install the help files:

```bash
make install &&
chown -R root:root /usr/share/gimp/3.0/help
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D headless-tests=disabled`*: This switch disables using <span class="command"><strong>xvfb-run</strong></span> for running the tests. Without this switch, many tests fail if <span class="command"><strong>xvfb-run</strong></span> has been installed.
</div>

<div class="configuration" lang="en">
## Configuring The Gimp {#configuring-the-gimp}

<div class="sect3" lang="en">
### Config Files {#config-files}

<code class="filename">/etc/gimp/3.0/*</code>
</div>
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gimp-3.0, gimp-console-3.0, gimptool-3.0, gimp-test-clipboard-3.0, gimp-script-fu-interpreter-3.0, and gimp{,-console,tool,-test-clipboard,script-fu-interpreter}{,-3} (symlinks)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgimp-3.0.so, libgimp-scriptfu-3.0, libgimpbase-3.0.so, libgimpcolor-3.0.so, libgimpconfig-3.0.so, libgimpmath-3.0.so, libgimpmodule-3.0.so, libgimpthumb-3.0.so, libgimpui-3.0.so, and libgimpwidgets-3.0.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/etc/gimp, /usr/include/gimp-3.0, /usr/lib/gimp-3.0, /usr/lib/gimp/3.0, /usr/share/gimp/3.0, and /usr/share/doc/gimp-3.0</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="gimp-3.0"></a><span class="command"><span class="term"><strong>gimp-3.0</strong></span></span>                       is the GNU Image Manipulation Program. It works with a variety of image formats and provides a large selection of tools
  <a id="gimp-console-3.0"></a><span class="command"><span class="term"><strong>gimp-console-3.0</strong></span></span>       is a console program that behaves as if The <span class="application">Gimp</span> was called with the <code class="option">--no-interface</code> command-line option
  <a id="gimptool-3.0"></a><span class="command"><span class="term"><strong>gimptool-3.0</strong></span></span>               is a tool that can build plug-ins or scripts and install them if they are distributed in one source file. <span class="command"><strong>gimptool-3.0</strong></span> can also be used by programs that need to know what libraries and include-paths The <span class="application">Gimp</span> was compiled with
  <a id="libgimp-3.0"></a><span class="term"><code class="filename">libgimp-3.0.so</code></span>                 provides C bindings for The <span class="application">Gimp</span>'s Procedural Database (PDB), which offers an interface to core functions and to functionality provided by plug-ins
  <a id="libgimpbase-3.0"></a><span class="term"><code class="filename">libgimpbase-3.0.so</code></span>         provides the C functions for basic <span class="application">Gimp</span> functionality such as determining enumeration data types, gettext translation, determining The <span class="application">Gimp</span>'s version number and capabilities, handling data files and accessing the environment
  <a id="libgimpcolor-3.0"></a><span class="term"><code class="filename">libgimpcolor-3.0.so</code></span>       provides the C functions relating to RGB, HSV and CMYK colors as well as converting colors between different color models and performing adaptive supersampling on an area
  <a id="libgimpconfig-3.0"></a><span class="term"><code class="filename">libgimpconfig-3.0.so</code></span>     contains C functions for reading and writing config information
  <a id="libgimpmath-3.0"></a><span class="term"><code class="filename">libgimpmath-3.0.so</code></span>         contains C functions which provide mathematical definitions and macros, manipulate 3x3 transformation matrices, set up and manipulate vectors and the MD5 message-digest algorithm
  <a id="libgimpmodule-3.0"></a><span class="term"><code class="filename">libgimpmodule-3.0.so</code></span>     provides the C functions which implement module loading using GModule and supports keeping a list of GimpModule's found in a given searchpath
  <a id="libgimpthumb-3.0"></a><span class="term"><code class="filename">libgimpthumb-3.0.so</code></span>       provides the C functions for handling The <span class="application">Gimp</span>'s thumbnail objects
  <a id="libgimpui-3.0"></a><span class="term"><code class="filename">libgimpui-3.0.so</code></span>             contains The <span class="application">Gimp</span>'s common user interface functions
  <a id="libgimpwidgets-3.0"></a><span class="term"><code class="filename">libgimpwidgets-3.0.so</code></span>   contains The <span class="application">Gimp</span> and <span class="application">GTK</span>'s widget creation and manipulation functions
  -------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](freerdp.md "FreeRDP-3.26.0")

    FreeRDP-3.26.0

-   [Next](gparted.md "Gparted-1.8.1")

    Gparted-1.8.1

-   [Up](other.md "Chapter 41. Other X-based Programs")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
