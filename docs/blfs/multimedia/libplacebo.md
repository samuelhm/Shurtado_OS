<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libogg.md "libogg-1.3.6")

    libogg-1.3.6

-   [Next](libsamplerate.md "libsamplerate-0.2.2")

    libsamplerate-0.2.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libplacebo-7.360.1 {#libplacebo-7.360.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libplacebo {#introduction-to-libplacebo}

The <span class="application">libplacebo</span> package contains a library for processing image and video primitives and shaders. It also includes a high quality rendering pipeline that supports OpenGL and Vulkan.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/haasn/libplacebo/archive/v7.360.1/libplacebo-7.360.1.tar.gz">https://github.com/haasn/libplacebo/archive/v7.360.1/libplacebo-7.360.1.tar.gz</a>

-   Download MD5 sum: e0fa1b52f8d7b7ba51373e9a639ca966

-   Download size: 844 KB

-   Estimated disk space required: 38 MB

-   Estimated build time: 0.2 SBU (With tests)
</div>

### libplacebo Dependencies

#### Required

<a class="xref" href="../general/glad.md" title="Glad-2.0.8">Glad-2.0.8</a>

#### Recommended

<a class="xref" href="../x/glslang.md" title="glslang-16.3.0">Glslang-16.3.0</a> and <a class="xref" href="../x/vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a>

#### Optional

<a class="xref" href="../general/lcms2.md" title="Little CMS-2.19.1">Little CMS-2.19.1</a> <a class="xref" href="../general/libunwind.md" title="libunwind-1.8.3">libunwind-1.8.3</a>, <a class="ulink" href="https://github.com/quietvoid/dovi_tool/">dovi_tool</a>, <a class="ulink" href="https://github.com/Immediate-Mode-UI/Nuklear">Nuklear</a>, and <a class="ulink" href="https://github.com/Cyan4973/xxHash">xxHash</a>
</div>

<div class="installation" lang="en">
## Installation of libplacebo {#installation-of-libplacebo}

Install <span class="application">libplacebo</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D tests=true       \
      -D demos=false      &&
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

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D demos=false`*: This switch disables building the demo programs because building <span class="application">plplay</span> is currently broken.

*`-D tests=true`*: This switch enables building the code necessary to run the tests.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libplacebo.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/libplacebo</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
  <a id="libplacebo-lib"></a><span class="term"><code class="filename">libplacebo.so</code></span>   processes image and video primitives and shaders and provides a high quality rendering pipeline for OpenGL and Vulkan
  -------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libogg.md "libogg-1.3.6")

    libogg-1.3.6

-   [Next](libsamplerate.md "libsamplerate-0.2.2")

    libsamplerate-0.2.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
