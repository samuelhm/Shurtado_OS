<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](glew.md "GLEW-2.3.1")

    GLEW-2.3.1

-   [Next](glu.md "GLU-9.0.3")

    GLU-9.0.3

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# glslang-16.3.0 {#glslang-16.3.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Glslang {#introduction-to-glslang}

The <span class="application">Glslang</span> package contains an frontend and validator for OpenGL, OpenGL ES, and Vulkan shaders.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/KhronosGroup/glslang/archive/16.3.0/glslang-16.3.0.tar.gz">https://github.com/KhronosGroup/glslang/archive/16.3.0/glslang-16.3.0.tar.gz</a>

-   Download MD5 sum: 0349062b47bb09f153b748506740711b

-   Download size: 4.2 MB

-   Estimated disk space required: 186 MB (with tests)

-   Estimated build time: 0.4 SBU (with parallelism=4; with tests)
</div>

### Glslang Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> and <a class="xref" href="../general/spirv-tools.md" title="SPIRV-Tools-1.4.350.0">SPIRV-Tools-1.4.350.0</a>
</div>

<div class="installation" lang="en">
## Installation of Glslang {#installation-of-glslang}

Install <span class="application">Glslang</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr     \
      -D CMAKE_BUILD_TYPE=Release      \
      -D ALLOW_EXTERNAL_SPIRV_TOOLS=ON \
      -D BUILD_SHARED_LIBS=ON          \
      -D GLSLANG_TESTS=ON              \
      -G Ninja .. &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D ALLOW_EXTERNAL_SPIRV_TOOLS=ON`*: This switch allows the build system to use the system-installed copy of <a class="xref" href="../general/spirv-tools.md" title="SPIRV-Tools-1.4.350.0">SPIRV-Tools-1.4.350.0</a>, instead of downloading and installing it's own copy.

*`-D BUILD_SHARED_LIBS=ON`*: This switch builds shared versions of the libraries, and does not install static versions of them.

*`-D GLSLANG_TESTS=ON`*: This switch builds the tests for the package.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">glslang and glslang-validator (symlink to glslang)</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libglslang.so, libglslang-default-resource-limits.so, and libSPIRV.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/glslang and /usr/lib/cmake/glslang</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
  <a id="glslang-prog"></a><span class="command"><span class="term"><strong>glslang</strong></span></span>    provides a front end and validator for OpenGL, OpenGL ES, and Vulkan shaders
  <a id="libglslang"></a><span class="term"><code class="filename">libglslang.so</code></span>   contains functions that provide a front-end and validator for OpenGL, OpenGL ES, and Vulkan shaders to other programs
  <a id="libSPIRV"></a><span class="term"><code class="filename">libSPIRV.so</code></span>       provides a front-end and generator for SPIR-V binaries
  ---------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](glew.md "GLEW-2.3.1")

    GLEW-2.3.1

-   [Next](glu.md "GLU-9.0.3")

    GLU-9.0.3

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
