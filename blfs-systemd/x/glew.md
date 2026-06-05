<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gdk-pixbuf.md "gdk-pixbuf-2.44.6")

    gdk-pixbuf-2.44.6

-   [Next](glslang.md "glslang-16.3.0")

    glslang-16.3.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# GLEW-2.3.1 {#glew-2.3.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to GLEW {#introduction-to-glew}

<span class="application">GLEW</span> is the OpenGL Extension Wrangler Library.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://downloads.sourceforge.net/glew/glew-2.3.1.tgz">https://downloads.sourceforge.net/glew/glew-2.3.1.tgz</a>

-   Download MD5 sum: 923ac4437518cc7cd323adde8a4091ae

-   Download size: 848 KB

-   Estimated disk space required: 18 MB

-   Estimated build time: less than 0.1 SBU
</div>

### glew Dependencies

#### Required

<a class="xref" href="mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>
</div>

<div class="installation" lang="en">
## Installation of GLEW {#installation-of-glew}

Install <span class="application">GLEW</span> by running the following commands:

```bash
sed -i 's%lib64%lib%g' config/Makefile.linux &&
sed -e '/glew.lib.static:/d' \
    -e '/0644 .*STATIC/d'    \
    -e 's/glew.lib.static//' \
    -e 's|/local||'          \
    -i Makefile              &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install.all
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

<span class="command"><strong>sed -i 's%lib64%lib%g' ...</strong></span>: This ensures that the library is installed in <code class="filename">/usr/lib</code>.

<span class="command"><strong>sed -i -e '/glew.lib.static:/d' ...</strong></span>: This suppresses the static library.

<span class="command"><strong>sed -i -e 's\|/local\|\|' ...</strong></span>: This ensures the package is installed in <code class="filename">/usr</code>.

<span class="command"><strong>make install.all</strong></span>: This installs the programs as well as the library.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">glewinfo and visualinfo</span>
</div>

<div class="seg">
**Installed Library:** <span class="segbody">libGLEW.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/GL</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------
  <a id="glewinfo"></a><span class="command"><span class="term"><strong>glewinfo</strong></span></span>       provides information about the supported extensions
  <a id="visualinfo"></a><span class="command"><span class="term"><strong>visualinfo</strong></span></span>   is an extended version of glxinfo
  <a id="libGLEW.so"></a><span class="term"><code class="filename">libGLEW.so</code></span>      provides functions to access OpenGL extensions
  ---------------------------------------------------- -----------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gdk-pixbuf.md "gdk-pixbuf-2.44.6")

    gdk-pixbuf-2.44.6

-   [Next](glslang.md "glslang-16.3.0")

    glslang-16.3.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
