<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](editorconfig-core-c.md "editorconfig-core-c-0.12.11")

    editorconfig-core-c-0.12.11

-   [Next](graphviz.md "Graphviz-15.0.0")

    Graphviz-15.0.0

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# glslc from shaderc-2026.2 {#glslc-from-shaderc-2026.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to glslc {#introduction-to-glslc}

The <span class="application">glslc</span> program is Google's command line compiler for OpenGL Shading Language/High Level Shading Language (GLSL/HLSL) to Standard Portable Intermediate Representation (SPIR-V).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/google/shaderc/archive/v2026.2/shaderc-2026.2.tar.gz">https://github.com/google/shaderc/archive/v2026.2/shaderc-2026.2.tar.gz</a>

-   Download MD5 sum: 3a6c42c237a3a6f40f076c7ee366ec29

-   Download size: 224 KB

-   Estimated disk space required: 3.8 MB

-   Estimated build time: less than 0.1 SBU
</div>

### Glslc Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="../x/glslang.md" title="glslang-16.3.0">Glslang-16.3.0</a>, and <a class="xref" href="spirv-tools.md" title="SPIRV-Tools-1.4.350.0">SPIRV-Tools-1.4.350.0</a>
</div>

<div class="installation" lang="en">
## Installation of glslc {#installation-of-glslc}

First, allow building with system <a class="xref" href="../x/glslang.md" title="glslang-16.3.0">Glslang-16.3.0</a> and <a class="xref" href="spirv-tools.md" title="SPIRV-Tools-1.4.350.0">SPIRV-Tools-1.4.350.0</a>:

```bash
sed '/build-version/d'   -i glslc/CMakeLists.txt            &&
sed '/third_party/d'     -i CMakeLists.txt                  &&
sed 's|SPIRV|glslang/&|' -i libshaderc_util/src/compiler.cc &&

echo '"2026.2"' > glslc/src/build-version.inc
```

Now install <span class="application">glslc</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D SHADERC_SKIP_TESTS=ON     \
      -G Ninja ..
ninja glslc/glslc
```

Now, as the <code class="systemitem">root</code> user:

```bash
install -vm755 glslc/glslc /usr/bin
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">glslc</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------- --------------------------------------------------------------------------------------------
  <a id="glslc-prog"></a><span class="command"><span class="term"><strong>glslc</strong></span></span>   compiles OpenGL Shading Language/High Level Shading Language (GLSL/HLSL) shaders to SPIR-V
  ----------------------------------------------- --------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](editorconfig-core-c.md "editorconfig-core-c-0.12.11")

    editorconfig-core-c-0.12.11

-   [Next](graphviz.md "Graphviz-15.0.0")

    Graphviz-15.0.0

-   [Up](genutils.md "Chapter 11. General Utilities")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
