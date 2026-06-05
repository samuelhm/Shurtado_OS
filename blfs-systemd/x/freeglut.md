<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](fltk.md "FLTK-1.4.5")

    FLTK-1.4.5

-   [Next](gdk-pixbuf.md "gdk-pixbuf-2.44.6")

    gdk-pixbuf-2.44.6

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Freeglut-3.8.0 {#freeglut-3.8.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Freeglut {#introduction-to-freeglut}

<span class="application">Freeglut</span> is intended to be a 100% compatible, completely opensourced clone of the GLUT library. GLUT is a window system independent toolkit for writing OpenGL programs, implementing a simple windowing API, which makes learning about and exploring OpenGL programming very easy.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/freeglut/freeglut-3.8.0.tar.gz">https://downloads.sourceforge.net/freeglut/freeglut-3.8.0.tar.gz</a>

-   Download MD5 sum: ca8361b5b6a64b07795b41bd24f6a23e

-   Download size: 528 KB

-   Estimated disk space required: 6.5 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Freeglut Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> and <a class="xref" href="mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>

#### Recommended

<a class="xref" href="glu.md" title="GLU-9.0.3">GLU-9.0.3</a>
</div>

<div class="installation" lang="en">
## Installation of Freeglut {#installation-of-freeglut}

Install <span class="application">Freeglut</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr        \
      -D CMAKE_BUILD_TYPE=Release         \
      -D FREEGLUT_BUILD_DEMOS=OFF         \
      -D FREEGLUT_BUILD_STATIC_LIBS=OFF   \
      -W no-dev .. &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D FREEGLUT_BUILD_DEMOS=OFF`*: Disable building optional demo programs. Note that if you choose to build them, their installation must be done manually. The demo programs are limited and installation is not recommended.

*`-D FREEGLUT_BUILD_STATIC_LIBS=OFF`*: Do not build the static library.

<code class="option">-D FREEGLUT_GLES=ON</code>: This option makes FreeGLUT use OpenGL ES instead of normal OpenGL. Use this if you have not installed <a class="xref" href="glu.md" title="GLU-9.0.3">GLU-9.0.3</a>.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libglut.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/cmake/FreeGLUT</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- --------------------------------------------------------------
  <a id="libglut"></a><span class="term"><code class="filename">libglut.so</code></span>   contains functions that implement the OpenGL Utility Toolkit
  ---------------------------------------------- --------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fltk.md "FLTK-1.4.5")

    FLTK-1.4.5

-   [Next](gdk-pixbuf.md "gdk-pixbuf-2.44.6")

    gdk-pixbuf-2.44.6

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
