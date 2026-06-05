<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libbytesize.md "libbytesize-2.12")

    libbytesize-2.12

-   [Next](libcloudproviders.md "libcloudproviders-0.3.6")

    libcloudproviders-0.3.6

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libclc-22.1.0 {#libclc-22.1.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libclc {#introduction-to-libclc}

The <span class="application">libclc</span> package contains an implementation of the library requirements of the OpenCL C programming language, as specified by the OpenCL 1.1 Specification.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/llvm/llvm-project/releases/download/llvmorg-22.1.0/llvm-project-22.1.0.src.tar.xz">https://github.com/llvm/llvm-project/releases/download/llvmorg-22.1.0/llvm-project-22.1.0.src.tar.xz</a>

-   Download MD5 sum: eebd30f81349347d789f04b5ddd41112

-   Download size: 160 MB

-   Estimated disk space required: 431 MB

-   Estimated build time: 0.6 SBU (with parallelism=8)
</div>

### libclc Dependencies

#### Required

<a class="xref" href="llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a>

#### Recommended

<a class="xref" href="spirv-llvm-translator.md" title="SPIRV-LLVM-Translator-22.1.2">SPIRV-LLVM-Translator-22.1.2</a> (required for the iris gallium driver in <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>)
</div>

<div class="installation" lang="en">
## Installation of libclc {#installation-of-libclc}

Install <span class="application">libclc</span> by running the following commands:

```bash
mkdir libclc/build &&
cd    libclc/build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -G Ninja ..                  &&
ninja
```

To test the results, issue: <span class="command"><strong>ninja test</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/clc and /usr/share/clc</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libbytesize.md "libbytesize-2.12")

    libbytesize-2.12

-   [Next](libcloudproviders.md "libcloudproviders-0.3.6")

    libcloudproviders-0.3.6

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
