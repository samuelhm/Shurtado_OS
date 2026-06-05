<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](giflib.md "giflib-6.1.3")

    giflib-6.1.3

-   [Next](glm.md "GLM-1.0.3")

    GLM-1.0.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Glad-2.0.8 {#glad-2.0.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Glad {#introduction-to-glad}

The <span class="application">Glad</span> package contains a generator for loading Vulkan, OpenGL, EGL, GLES, and GLX contexts.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/Dav1dde/glad/archive/v2.0.8/glad-2.0.8.tar.gz">https://github.com/Dav1dde/glad/archive/v2.0.8/glad-2.0.8.tar.gz</a>

-   Download MD5 sum: 028c39d581e6b53e53871f1dc21cf442

-   Download size: 632 KB

-   Estimated disk space required: 14 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Glad Dependencies

#### Optional (required to run the tests)

<a class="xref" href="python-modules.md#pytest" title="Pytest-9.0.3">pytest-9.0.3</a>, <a class="xref" href="rust.md" title="Rustc-1.96.0">rustc-1.96.0</a>, <a class="xref" href="../x/x7lib.md" title="Xorg Libraries">Xorg Libraries</a>, <a class="ulink" href="https://www.glfw.org/">glfw</a>, and <a class="ulink" href="http://winehq.org/">WINE</a>
</div>

<div class="installation" lang="en">
## Installation of Glad {#installation-of-glad}

Install <span class="application">Glad</span> by running the following commands:

```bash
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
```

To test the results, you need the optional dependencies above. If you only install dependencies that are in the book, then 12 tests out of 100 fail. Issue:

```bash
PYTHON=python3 utility/test.sh
```

Now, as the <code class="systemitem">root</code> user:

```bash
pip3 install --no-index --find-links dist --no-user glad2
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">glad</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/python3.14/site-packages/glad and /usr/lib/python3.14/site-packages/glad2-2.0.8.dist-info</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  --------------------------------------------- -------------------------------------------------------------------
  <a id="glad-prog"></a><span class="command"><span class="term"><strong>glad</strong></span></span>   generates loaders for Vulkan, OpenGL, EGL, GLES, and GLX contexts
  --------------------------------------------- -------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](giflib.md "giflib-6.1.3")

    giflib-6.1.3

-   [Next](glm.md "GLM-1.0.3")

    GLM-1.0.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
