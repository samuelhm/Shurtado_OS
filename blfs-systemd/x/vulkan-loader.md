<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](vulkan-headers.md "Vulkan-Headers-1.4.350.0")

    Vulkan-Headers-1.4.350.0

-   [Next](webkitgtk.md "WebKitGTK-2.52.0")

    WebKitGTK-2.52.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Vulkan-Loader-1.4.350.0 {#vulkan-loader-1.4.350.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Vulkan-Loader {#introduction-to-vulkan-loader}

The <span class="application">Vulkan-Loader</span> package contains a library which provides the Vulkan API and provides core support for graphics drivers for Vulkan.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/KhronosGroup/Vulkan-Loader/archive/vulkan-sdk-1.4.350.0/Vulkan-Loader-vulkan-sdk-1.4.350.0.tar.gz">https://github.com/KhronosGroup/Vulkan-Loader/archive/vulkan-sdk-1.4.350.0/Vulkan-Loader-vulkan-sdk-1.4.350.0.tar.gz</a>

-   Download MD5 sum: 6ec91c673b48bbdffc923cce9d6a1a85

-   Download size: 1.7 MB

-   Estimated disk space required: 143 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
</div>

### Vulkan-loader Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="vulkan-headers.md" title="Vulkan-Headers-1.4.350.0">Vulkan-Headers-1.4.350.0</a>, and <a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a>

#### Recommended

<a class="xref" href="../general/wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a>

#### Recommended (Runtime)

<a class="xref" href="mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a> (for Vulkan drivers)

#### Optional (for testing)

<a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before testing this package.
</div>
</div>

<div class="installation" lang="en">
## Installation of Vulkan-Loader {#installation-of-vulkan-loader}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

If this package is being installed on a system where Mesa has already been installed previously, please rebuild <a class="xref" href="mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a> after this package to install Vulkan graphics drivers.
</div>

Install <span class="application">Vulkan-Loader</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr   \
      -D CMAKE_BUILD_TYPE=Release    \
      -D CMAKE_SKIP_INSTALL_RPATH=ON \
      -G Ninja .. &&
ninja
```

To run the test suite, issue (note that the command will use <a class="xref" href="../general/git.md" title="Git-2.54.0">git-2.54.0</a> to download a copy of GoogleTest for building the test suite):

```bash
sed "s/'git', 'clone'/&, '--depth=1', '-b', self.commit/" \
    -i ../scripts/update_deps.py &&
cmake -D BUILD_TESTS=ON -D UPDATE_DEPS=ON .. &&
ninja &&
ninja test
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

<code class="option">-D BUILD_WSI_WAYLAND_SUPPORT=OFF</code>: This option allows building without <a class="xref" href="../general/wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a> support.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">None</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libvulkan.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/lib/cmake/VulkanLoader</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------------
  <a id="libvulkan"></a><span class="term"><code class="filename">libvulkan.so</code></span>   provides the Vulkan API and core support for graphics drivers
  -------------------------------------------------- ---------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](vulkan-headers.md "Vulkan-Headers-1.4.350.0")

    Vulkan-Headers-1.4.350.0

-   [Next](webkitgtk.md "WebKitGTK-2.52.0")

    WebKitGTK-2.52.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
