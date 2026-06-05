<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](startup-notification.md "startup-notification-0.12")

    startup-notification-0.12

-   [Next](vulkan-loader.md "Vulkan-Loader-1.4.350.0")

    Vulkan-Loader-1.4.350.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Vulkan-Headers-1.4.350.0 {#vulkan-headers-1.4.350.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Vulkan-Headers {#introduction-to-vulkan-headers}

The <span class="application">Vulkan-Headers</span> package contains a set of header files necessary to build and link applications against the Vulkan API.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/KhronosGroup/Vulkan-Headers/archive/vulkan-sdk-1.4.350.0/Vulkan-Headers-vulkan-sdk-1.4.350.0.tar.gz">https://github.com/KhronosGroup/Vulkan-Headers/archive/vulkan-sdk-1.4.350.0/Vulkan-Headers-vulkan-sdk-1.4.350.0.tar.gz</a>

-   Download MD5 sum: 74d68465ca2ef442397dc159edaa3b9c

-   Download size: 3.1 MB

-   Estimated disk space required: 80 MB

-   Estimated build time: less than 0.1 SBU (with tests)
</div>

### Vulkan-Headers Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>
</div>

<div class="installation" lang="en">
## Installation of Vulkan-Headers {#installation-of-vulkan-headers}

Install <span class="application">Vulkan-Headers</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr -G Ninja .. &&
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
**Installed Directories:** <span class="segbody">/usr/include/vk_video, /usr/include/vulkan, /usr/share/cmake/VulkanHeaders, and /usr/share/vulkan</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](startup-notification.md "startup-notification-0.12")

    startup-notification-0.12

-   [Next](vulkan-loader.md "Vulkan-Loader-1.4.350.0")

    Vulkan-Loader-1.4.350.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
