<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](spirv-tools.md "SPIRV-Tools-1.4.350.0")

    SPIRV-Tools-1.4.350.0

-   [Next](talloc.md "Talloc-2.4.4")

    Talloc-2.4.4

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# SPIRV-LLVM-Translator-22.1.2 {#spirv-llvm-translator-22.1.2}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to SPIRV-LLVM-Translator {#introduction-to-spirv-llvm-translator}

The <span class="application">SPIRV-LLVM-Translator</span> package contains a library and utility for converting between LLVM IR and SPIR-V code. This package currently only supports the OpenCL/Compute version of SPIR-V.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/KhronosGroup/SPIRV-LLVM-Translator/archive/v22.1.2/SPIRV-LLVM-Translator-22.1.2.tar.gz">https://github.com/KhronosGroup/SPIRV-LLVM-Translator/archive/v22.1.2/SPIRV-LLVM-Translator-22.1.2.tar.gz</a>

-   Download MD5 sum: dce62f7bc40d7ff4e89d0d38fe62804a

-   Download size: 1.8 MB

-   Estimated disk space required: 47 MB

-   Estimated build time: 0.5 SBU (with parallelism=4)
</div>

### SPIRV-LLVM-Translator Dependencies

#### Required

<a class="xref" href="libxml2.md" title="libxml2-2.15.3">libxml2-2.15.3</a>, <a class="xref" href="llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a>, and <a class="xref" href="spirv-tools.md" title="SPIRV-Tools-1.4.350.0">SPIRV-Tools-1.4.350.0</a>
</div>

<div class="installation" lang="en">
## Installation of SPIRV-LLVM-Translator {#installation-of-spirv-llvm-translator}

Install <span class="application">SPIRV-LLVM-Translator</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr                   \
      -D CMAKE_BUILD_TYPE=Release                    \
      -D BUILD_SHARED_LIBS=ON                        \
      -D CMAKE_SKIP_INSTALL_RPATH=ON                 \
      -D LLVM_EXTERNAL_SPIRV_HEADERS_SOURCE_DIR=/usr \
      -G Ninja ..                                    &&
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

*`-D BUILD_SHARED_LIBS=ON`*: This parameter forces building shared versions of the libraries.

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D LLVM_EXTERNAL_SPIRV_HEADERS_SOURCE_DIR=/usr`*: This parameter allows the build system to use the version of SPIRV-Headers that should have been installed as a dependency of SPIRV-Tools, instead of redownloading an unnecessary copy of the headers.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">llvm-spirv</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libLLVMSPIRVLib.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/LLVMSPIRVLib</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------------- -----------------------------------------------------------------
  <a id="llvm-spirv"></a><span class="command"><span class="term"><strong>llvm-spirv</strong></span></span>             converts between LLVM IR and SPIR-V code
  <a id="libLLVMSPIRVLib"></a><span class="term"><code class="filename">libLLVMSPIRVLib.so</code></span>   contains functions that convert between LLVM IR and SPIR-V code
  -------------------------------------------------------------- -----------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](spirv-tools.md "SPIRV-Tools-1.4.350.0")

    SPIRV-Tools-1.4.350.0

-   [Next](talloc.md "Talloc-2.4.4")

    Talloc-2.4.4

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
