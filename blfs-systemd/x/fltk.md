<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](colord-gtk.md "colord-gtk-0.3.1")

    colord-gtk-0.3.1

-   [Next](freeglut.md "Freeglut-3.8.0")

    Freeglut-3.8.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# FLTK-1.4.5 {#fltk-1.4.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to FLTK {#introduction-to-fltk}

FLTK (pronounced "fulltick") is a cross-platform C++ GUI toolkit. FLTK provides modern GUI functionality and supports 3D graphics via OpenGL and its built-in GLUT emulation libraries used for creating graphical user interfaces for applications.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/fltk/fltk/releases/download/release-1.4.5/fltk-1.4.5-source.tar.gz">https://github.com/fltk/fltk/releases/download/release-1.4.5/fltk-1.4.5-source.tar.gz</a>

-   Download MD5 sum: 8308c6bb9ebc8580807a3834be4fcf54

-   Download size: 8.9 MB

-   Estimated disk space required: 229 MB (add 104 MB for documentation)

-   Estimated build time: 0.4 SBU (Using parallelism=4)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Optional Documentation: <a class="ulink" href="https://github.com/fltk/fltk/releases/download/release-1.4.5/fltk-1.4.5-docs-html.tar.gz">https://github.com/fltk/fltk/releases/download/release-1.4.5/fltk-1.4.5-docs-html.tar.gz</a>
</div>

### FLTK Dependencies

#### Required

<a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Recommended

<a class="xref" href="glu.md" title="GLU-9.0.3">GLU-9.0.3</a>, <a class="xref" href="hicolor-icon-theme.md" title="hicolor-icon-theme-0.18">hicolor-icon-theme-0.18</a>, <a class="xref" href="../general/libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, and <a class="xref" href="../general/libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>

#### Optional

<a class="xref" href="../multimedia/alsa-lib.md" title="alsa-lib-1.2.16">alsa-lib-1.2.16</a>, <a class="xref" href="../general/desktop-file-utils.md" title="desktop-file-utils-0.28">desktop-file-utils-0.28</a>, <a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, and <a class="xref" href="../pst/texlive.md" title="texlive-20250308-source">texlive-20250308</a> (or <a class="xref" href="../pst/tl-installer.md" title="install-tl-unx">install-tl-unx</a>)
</div>

<div class="installation" lang="en">
## Installation of FLTK {#installation-of-fltk}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The tar extraction directory is fltk-1.4.5 and not fltk-1.4.5-source as indicated by the tarball name.
</div>

Install <span class="application">FLTK</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D FLTK_BUILD_SHARED_LIBS=ON \
      -D CMAKE_BUILD_TYPE=Release  \
      -G "Ninja" ..                &&
ninja
```

If you wish to create the API documentation, issue:

```bash
ninja documentation/html
```

The tests for the package are interactive. To execute the tests, run <span class="command"><strong>bin/test/unittests</strong></span>. In addition, there are about 110 other executable test programs in the <code class="filename">bin/test</code> directory that can be run individually.

Now, install the package and remove unneeded static libraries. As the <code class="systemitem">root</code> user:

```bash
ninja install &&
rm -vf /usr/lib/libfltk*.a
```

If you have built the documentation, install it as the <code class="systemitem">root</code> user:

```bash
install -vdm 755          /usr/share/doc/fltk-1.4.5 &&
cp -Rv documentation/html /usr/share/doc/fltk-1.4.5
```

Otherwise, if you downloaded the optional html documentation, install it as the <code class="systemitem">root</code> user:

```bash
install -vdm 755 /usr/share/doc/fltk-1.4.5 &&
tar -C /usr/share/doc/fltk-1.4.5 --strip-components=4 -xf ../../fltk-1.4.5-docs-html.tar.gz
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D FLTK_BUILD_SHARED_LIBS=ON`*: Build and install shared libraries in addition to static ones.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">blocks, checkers, fltk-config, fltk-options, fltk-options-shared, fluid, fluid-shared, glpuzzle, and sudoku</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libfltk.so, libfltk_forms.so, libfltk_gl.so, and libfltk_images.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/FL, /usr/share/fltk, and /usr/share/doc/fltk-1.4.5 (optional)</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
  <a id="blocks"></a><span class="command"><span class="term"><strong>blocks</strong></span></span>                             is a FLTK-based block elimination game
  <a id="checkers"></a><span class="command"><span class="term"><strong>checkers</strong></span></span>                         is a FLTK-based version of the game of checkers
  <a id="fltk-config"></a><span class="command"><span class="term"><strong>fltk-config</strong></span></span>                   is a utility script that can be used to get information about the current version of FLTK that is installed on the system
  <a id="fltk-options"></a><span class="command"><span class="term"><strong>fltk-options</strong></span></span>                 is a graphical configuration utility for FLTK applications
  <a id="fltk-options-shared"></a><span class="command"><span class="term"><strong>fltk-options-shared</strong></span></span>   is a graphical configuration utility for FLTK applications (dynamically linked to shared libfltk libraries)
  <a id="fluid"></a><span class="command"><span class="term"><strong>fluid</strong></span></span>                               is an interactive GUI designer for FLTK
  <a id="fluid-shared"></a><span class="command"><span class="term"><strong>fluid-shared</strong></span></span>                 is an interactive GUI designer for FLTK (dynamically linked to shared libfltk libraries)
  <a id="glpuzzle"></a><span class="command"><span class="term"><strong>glpuzzle</strong></span></span>                         is an implementation of the Klotski game
  <a id="sudoku"></a><span class="command"><span class="term"><strong>sudoku</strong></span></span>                             is an implementation of the popular Sudoku game
  <a id="libfltk"></a><span class="term"><code class="filename">libfltk.so</code></span>                           contains functions that provide an API to implement graphical user interfaces
  ---------------------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](colord-gtk.md "colord-gtk-0.3.1")

    colord-gtk-0.3.1

-   [Next](freeglut.md "Freeglut-3.8.0")

    Freeglut-3.8.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
