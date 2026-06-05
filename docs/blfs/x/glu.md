<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](glslang.md "glslang-16.3.0")

    glslang-16.3.0

-   [Next](goffice010.md "GOffice-0.10.61")

    GOffice-0.10.61

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GLU-9.0.3 {#glu-9.0.3}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GLU {#introduction-to-glu}

This package provides the Mesa OpenGL Utility library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If you have installed <a class="ulink" href="https://glfs-book.github.io/glfs/shareddeps/libglvnd.md">libglvnd</a>, please install the GLFS version of <a class="ulink" href="https://glfs-book.github.io/glfs/shareddeps/glu.md">GLU</a> instead so that the library functions as expected.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://archive.mesa3d.org/glu/glu-9.0.3.tar.xz">https://archive.mesa3d.org/glu/glu-9.0.3.tar.xz</a>

-   Download MD5 sum: 06a4fff9179a98ea32ef41b6d83f6b19

-   Download size: 216 KB

-   Estimated disk space required: 5.9 MB

-   Estimated build time: 0.2 SBU
</div>

### GLU Dependencies

#### Required

<a class="xref" href="mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>
</div>

<div class="installation" lang="en">
## Installation of GLU {#installation-of-glu}

Install <span class="application">GLU</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..              \
      --prefix=$XORG_PREFIX \
      --buildtype=release   \
      -D gl_provider=gl     \
      -D default_library=shared &&
ninja
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D default_library=shared`*: This switch prevents building and installing the static library.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libGLU.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------- ----------------------------------------------------
  <a id="libGLU"></a><span class="term"><code class="filename">libGLU.so</code></span>   is the <span class="application">Mesa</span> OpenGL Utility library
  -------------------------------------------- ----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](glslang.md "glslang-16.3.0")

    glslang-16.3.0

-   [Next](goffice010.md "GOffice-0.10.61")

    GOffice-0.10.61

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
