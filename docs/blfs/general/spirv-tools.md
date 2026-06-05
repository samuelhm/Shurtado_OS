<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](spirv-headers.md "SPIRV-Headers-1.4.350.0")

    SPIRV-Headers-1.4.350.0

-   [Next](spirv-llvm-translator.md "SPIRV-LLVM-Translator-22.1.2")

    SPIRV-LLVM-Translator-22.1.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# SPIRV-Tools-1.4.350.0 {#spirv-tools-1.4.350.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to SPIRV-Tools {#introduction-to-spirv-tools}

The <span class="application">SPIRV-Tools</span> package contains libraries and utilities for processing SPIR-V modules.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/KhronosGroup/SPIRV-Tools/archive/vulkan-sdk-1.4.350.0/SPIRV-Tools-vulkan-sdk-1.4.350.0.tar.gz">https://github.com/KhronosGroup/SPIRV-Tools/archive/vulkan-sdk-1.4.350.0/SPIRV-Tools-vulkan-sdk-1.4.350.0.tar.gz</a>

-   Download MD5 sum: 98eb2b3150abc9b6555ffba9818d41b3

-   Download size: 3.3 MB

-   Estimated disk space required: 66 MB

-   Estimated build time: 0.6 SBU (with tests; both using parallelism=8)
</div>

### SPIRV-Tools Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> and <a class="xref" href="spirv-headers.md" title="SPIRV-Headers-1.4.350.0">SPIRV-Headers-1.4.350.0</a>
</div>

<div class="installation" lang="en">
## Installation of SPIRV-Tools {#installation-of-spirv-tools}

Install <span class="application">SPIRV-Tools</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr     \
      -D CMAKE_BUILD_TYPE=Release      \
      -D SPIRV_WERROR=OFF              \
      -D BUILD_SHARED_LIBS=ON          \
      -D SPIRV_TOOLS_BUILD_STATIC=OFF  \
      -D SPIRV-Headers_SOURCE_DIR=/usr \
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

*`-D SPIRV_WERROR=OFF`*: This switch stops the build system from treating warnings as errors.

*`-D BUILD_SHARED_LIBS=ON`*: This switch forces the build system to install shared libraries instead of static libraries.

*`-D SPIRV_TOOLS_BUILD_STATIC=OFF`*: This switch disables building static versions of the libraries.

*`-D SPIRV-Headers_SOURCE_DIR`*: This switch tells the build system that <a class="xref" href="spirv-headers.md" title="SPIRV-Headers-1.4.350.0">SPIRV-Headers-1.4.350.0</a> is installed in /usr. This is needed since the build system tries to use a copy at <code class="filename">external/spirv-headers</code> in the source directory by default and the copy is not shipped (i.e. you need to manually extract <a class="xref" href="spirv-headers.md" title="SPIRV-Headers-1.4.350.0">SPIRV-Headers-1.4.350.0</a> there if you want to build with the copy).
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">spirv-as, spirv-cfg, spirv-dis, spirv-lesspipe.sh, spirv-link, spirv-lint, spirv-objdump, spirv-opt, spirv-reduce, and spirv-val</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libSPIRV-Tools-diff.so, libSPIRV-Tools-link.so, libSPIRV-Tools-lint.so, libSPIRV-Tools-opt.so, libSPIRV-Tools-reduce.so, libSPIRV-Tools-shared.so, and libSPIRV-Tools.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/spirv-tools and /usr/lib/cmake/SPIRV-Tools</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ------------------------------------------------------------------ ----------------------------------------------------------
  <a id="spirv-as"></a><span class="command"><span class="term"><strong>spirv-as</strong></span></span>                     creates a SPIR-V binary module from SPIR-V assembly text
  <a id="spirv-cfg"></a><span class="command"><span class="term"><strong>spirv-cfg</strong></span></span>                   shows the control flow graph in "dot" format
  <a id="spirv-dis"></a><span class="command"><span class="term"><strong>spirv-dis</strong></span></span>                   disassembles a SPIR-V binary module
  <a id="spirv-lesspipe.sh"></a><span class="command"><span class="term"><strong>spirv-lesspipe.sh</strong></span></span>   automatically disassembles a .SPV file for 'less'
  <a id="spirv-link"></a><span class="command"><span class="term"><strong>spirv-link</strong></span></span>                 links SPIR-V binary files together
  <a id="spirv-lint"></a><span class="command"><span class="term"><strong>spirv-lint</strong></span></span>                 checks a SPIR-V binary module for errors
  <a id="spirv-objdump"></a><span class="command"><span class="term"><strong>spirv-objdump</strong></span></span>           dumps information from a SPIR-V binary
  <a id="spirv-opt"></a><span class="command"><span class="term"><strong>spirv-opt</strong></span></span>                   performs optimizations on SPIR-V binary files
  <a id="spirv-reduce"></a><span class="command"><span class="term"><strong>spirv-reduce</strong></span></span>             reduces a SPIR-V binary file
  <a id="spirv-val"></a><span class="command"><span class="term"><strong>spirv-val</strong></span></span>                   validates a SPIR-V binary file
  <a id="libSPIRV-Tools"></a><span class="term"><code class="filename">libSPIRV-Tools.so</code></span>         contains functions for processing SPIR-V modules
  ------------------------------------------------------------------ ----------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](spirv-headers.md "SPIRV-Headers-1.4.350.0")

    SPIRV-Headers-1.4.350.0

-   [Next](spirv-llvm-translator.md "SPIRV-LLVM-Translator-22.1.2")

    SPIRV-LLVM-Translator-22.1.2

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
