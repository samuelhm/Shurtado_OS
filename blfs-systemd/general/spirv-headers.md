<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](spidermonkey.md "SpiderMonkey from firefox-140.11.0")

    SpiderMonkey from firefox-140.11.0

-   [Next](spirv-tools.md "SPIRV-Tools-1.4.350.0")

    SPIRV-Tools-1.4.350.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# SPIRV-Headers-1.4.350.0 {#spirv-headers-1.4.350.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to SPIRV-Headers {#introduction-to-spirv-headers}

The <span class="application">SPIRV-Headers</span> package contains headers that allow for applications to use the SPIR-V language and instruction set with Vulkan. SPIR-V is a binary intermediate language for representing graphical shader stages and compute kernels for multiple Khronos APIs, including OpenGL and Vulkan.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/KhronosGroup/SPIRV-Headers/archive/vulkan-sdk-1.4.350.0/SPIRV-Headers-vulkan-sdk-1.4.350.0.tar.gz">https://github.com/KhronosGroup/SPIRV-Headers/archive/vulkan-sdk-1.4.350.0/SPIRV-Headers-vulkan-sdk-1.4.350.0.tar.gz</a>

-   Download MD5 sum: ffbac822da003ffc194d67cef4a6c1d6

-   Download size: 556 KB

-   Estimated disk space required: 4.7 MB

-   Estimated build time: less than 0.1 SBU
</div>

### SPIRV-Headers Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of SPIRV-Headers {#installation-of-spirv-headers}

Install <span class="application">SPIRV-Headers</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr -G Ninja .. &&
ninja
```

This package does not come with a test suite.

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
**Installed Directories:** <span class="segbody">/usr/include/spirv and /usr/share/cmake/SPIRV-Headers</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](spidermonkey.md "SpiderMonkey from firefox-140.11.0")

    SpiderMonkey from firefox-140.11.0

-   [Next](spirv-tools.md "SPIRV-Tools-1.4.350.0")

    SPIRV-Tools-1.4.350.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
