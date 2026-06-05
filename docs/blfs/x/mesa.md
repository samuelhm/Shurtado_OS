<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xcb-utilities.md "XCB Utilities")

    XCB Utilities

-   [Next](xbitmaps.md "xbitmaps-1.1.4")

    xbitmaps-1.1.4

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# Mesa-26.0.7 {#mesa-26.0.7}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Mesa {#introduction-to-mesa}

<span class="application">Mesa</span> contains several libraries and drivers for multiple APIs like OpenGL and Vulkan.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package provides OpenGL libraries like <code class="filename">libGL.so</code>. Packages and binaries outside of BLFS, like AppImages, can have trouble with both building and running on systems with OpenGL libraries installed from this package. If you find that you cannot build or run a given package or binary, then install the GLFS package <a class="ulink" href="/glfs/view/dev/shareddeps/libglvnd.md">libglvnd</a>. It provides OpenGL libraries of its own and allows using drivers outside of BLFS. You will have to rebuild many packages using OpenGL in order to allow packages to use <span class="application">libglvnd</span>. Doing this is not supported by the BLFS editors.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<span class="application">Mesa</span> is updated relatively often. You may want to use the latest available version.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://mesa.freedesktop.org/archive/mesa-26.0.7.tar.xz">https://mesa.freedesktop.org/archive/mesa-26.0.7.tar.xz</a>

-   Download MD5 sum: c28b1d4c288d34fa7ea298ea0c417a23

-   Download size: 42 MB

-   Estimated disk space required: 1.1 GB (with docs; add 542 MB for tests)

-   Estimated build time: 3.1 SBU (with docs; add 1.7 SBU for tests; both with parallelism=4)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Recommended patch: <a class="ulink" href="https://www.linuxfromscratch.org/patches/blfs/svn/mesa-add_xdemos-4.patch">https://www.linuxfromscratch.org/patches/blfs/svn/mesa-add_xdemos-4.patch</a> (installs 2 demo programs for testing Mesa - not needed if you install the <a class="ulink" href="https://archive.mesa3d.org/demos/">mesa-demos</a> package; does not build with <span class="application">libglvnd</span>)
</div>

### Mesa Dependencies

#### Required

<a class="xref" href="x7lib.md" title="Xorg Libraries">Xorg Libraries</a>, <a class="xref" href="libdrm.md" title="Libdrm-2.4.134">libdrm-2.4.134</a>, <a class="xref" href="../general/python-modules.md#Mako" title="Mako-1.3.12">Mako-1.3.12</a>, and <a class="xref" href="../general/python-modules.md#PyYAML" title="PyYAML-6.0.3">PyYAML-6.0.3</a>

#### Recommended

<div class="itemizedlist">
-   <a class="xref" href="glslang.md" title="glslang-16.3.0">Glslang-16.3.0</a> (required for Vulkan support)

-   <a class="xref" href="../multimedia/libva.md" title="libva-2.23.0">libva-2.23.0</a> (to provide VA-API support for some gallium drivers. Note that there is a circular dependency. You must build <span class="application">libva</span> first without mesa's EGL and GLX support, install this package, and rebuild <span class="application">libva</span>)

-   <a class="xref" href="../general/llvm.md" title="LLVM-22.1.0">LLVM-22.1.0</a> (required for the llvmpipe, r300, r600, and radeonsi drivers)

-   <a class="xref" href="../general/wayland-protocols.md" title="Wayland-Protocols-1.48">wayland-protocols-1.48</a> (required for <a class="xref" href="../kde/plasma-all.md" title="Building Plasma">Plasma-6.6.5</a>, GNOME, and recommended for <a class="xref" href="gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>)

-   <a class="xref" href="../general/libclc.md" title="libclc-22.1.0">libclc-22.1.0</a> (built after <a class="xref" href="../general/spirv-llvm-translator.md" title="SPIRV-LLVM-Translator-22.1.2">SPIRV-LLVM-Translator-22.1.2</a>, required for the Intel iris gallium driver)

-   <a class="xref" href="vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a> (required for the zink gallium driver)

-   <a class="xref" href="../general/cbindgen.md" title="Cbindgen-0.29.3">Cbindgen-0.29.3</a>, <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a>, and <a class="xref" href="../general/rust-bindgen.md" title="rust-bindgen-0.72.1">rust-bindgen-0.72.1</a> (required for the Nouveau Vulkan driver)
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building the Nouveau Vulkan driver. The system certificate store may need to be set up with <a class="xref" href="../postlfs/make-ca.md" title="make-ca-1.16.1">make-ca-1.16.1</a> before building this package.
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

<span class="bold"><strong>Choosing Mesa Drivers</strong></span>

In the instructions below, all the available drivers are built. That will almost always work. However, it is not efficient. Depending on your video hardware, you probably need only specific drivers.

The first thing you need to know is which type of video device you have. In some cases it is built into the CPU. In others it is a separate PCI card. In either case you can tell what video hardware you have by installing <a class="xref" href="../general/pciutils.md" title="pciutils-3.15.0">pciutils-3.15.0</a> and running:

```bash
lspci | grep VGA
```

The video device is most likely one of three families: AMD, Intel, or NVIDIA. See the Command Explanations for *`-D gallium-drivers=auto`* below to see what options are available for your specific video hardware (or emulated video hardware). You should probably add the softpipe or llvmpipe option as a backup driver.

For 'platforms' you can select x11 and/or wayland. Note that in BLFS currently only Gnome and KDE can use wayland. If you are not going to use one of those desktop environments then you probably only want x11.

For 'vulkan-drivers' you may want to limit the selection to your current hardware. These drivers are used by some specific applications. For example, ffmpeg (including ffplay) will use Vulkan instead of OpenGL for rendering video on the GPU. If you do not want to do this you may or may not want to install them. See the Command Explanations for *`-D vulkan-drivers=auto`* below to see what options are available for your specific video hardware (or emulated video hardware). You should probably add the swrast option as a backup driver unless you don't need Vulkan at all.
</div>

#### Optional

<a class="xref" href="../general/libdisplay-info.md" title="libdisplay-info-0.3.0">libdisplay-info-0.3.0</a>, <a class="xref" href="../general/libunwind.md" title="libunwind-1.8.3">libunwind-1.8.3</a>, <a class="xref" href="../general/lm-sensors.md" title="lm-sensors-3-6-2">lm-sensors-3-6-2</a>, <a class="xref" href="../general/valgrind.md" title="Valgrind-3.27.1">Valgrind-3.27.1</a>, <a class="ulink" href="https://archive.mesa3d.org/demos/">mesa-demos</a> (provides more than 300 extra demos to test <span class="application">Mesa</span>; this includes the same programs added by the patch above), <a class="ulink" href="https://omxil.sourceforge.net/">Bellagio OpenMAX Integration Layer</a> (for mobile platforms), <a class="ulink" href="/glfs/view/dev/shareddeps/libglvnd.md">libglvnd</a> (provides OpenGL libraries), <a class="ulink" href="https://github.com/KhronosGroup/OpenCL-ICD-Loader">OpenCL-ICD-Loader</a>, and <a class="ulink" href="https://github.com/tizonia/tizonia-openmax-il/wiki/Tizonia-OpenMAX-IL/">libtizonia</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

```console
Device Drivers --->
  Graphics support --->
    <*/M>   Direct Rendering Manager (XFree86 4.1.0 and higher DRI support) --->
                                                                      ...  [DRM]

    # For r300 or r600:
    < /*/M> ATI Radeon                                              [DRM_RADEON]

    # For radeonsi:
    < /*/M> AMD GPU                                                 [DRM_AMDGPU]
    [*]       Enable amdgpu support for SI parts                 [DRM_AMDGPU_SI]
    [*]       Enable amdgpu support for CIK parts               [DRM_AMDGPU_CIK]
      Display Engine Configuration --->
      [*]   AMD DC - Enable new display engine                      [DRM_AMD_DC]

    # For nouveau:
    < /*/M> Nouveau (NVIDIA) cards                                 [DRM_NOUVEAU]

    # For i915, crocus, or iris:
    < /*/M> Intel 8xx/9xx/G3x/G4x/HD Graphics                         [DRM_I915]

    # For iris:
    < /*/M> Intel Xe2 Graphics                                          [DRM_XE]
    [*]       Enable display support                            [DRM_XE_DISPLAY]
    (*)       Force probe xe for selected Intel hardware IDs
                                                       ...  [DRM_XE_FORCE_PROBE]

    # For llvmpipe or softpipe:
    < /*>   Virtual GEM provider                                      [DRM_VGEM]

    # For svga:
    < /*/M> DRM driver for VMware Virtual GPU                       [DRM_VMWGFX]
```

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

The corresponding Mesa Gallium3D driver name is provided as the comment for the configuration entries. If you don't know the name of the Mesa Gallium3D driver for your GPU, see <a class="xref" href="mesa.md#mesa-gallium-drivers">Mesa Gallium3D Drivers</a> below.

For the GPUs supported by the Iris Gallium3D driver, with <code class="option">CONFIG_DRM_I915</code> enabled and <code class="option">CONFIG_DRM_XE_FORCE_PROBE</code> set to the string <code class="literal">*</code>, the i915 driver will be used if it supports the GPU, and the Xe driver will be used if it supports the GPU but the i915 driver does not. If you are sure your GPU is supported by the i915 driver, you can disable the Xe driver to save some build time. If your GPU is supported by both drivers and you want to use the Xe driver, you can disable the i915 driver, or make the i915 driver deny your GPU via the <code class="option">CONFIG_DRM_I915_FORCE_PROBE</code> option, for example setting it to <code class="literal">!7d55</code> would make i915 deny the Meteor Lake integrated GPU (of which the PCI ID is <code class="literal">8086:7d55</code>), leaving it for the Xe driver.

<code class="option">CONFIG_DRM_RADEON</code>, <code class="option">CONFIG_DRM_AMDGPU</code>, <code class="option">CONFIG_DRM_NOUVEAU</code>, <code class="option">CONFIG_DRM_I915</code>, and <code class="option">CONFIG_DRM_XE</code> may require firmware. See <a class="xref" href="../postlfs/firmware.md" title="About Firmware">About Firmware</a> for details.

Selecting <code class="option">CONFIG_DRM_RADEON</code>, <code class="option">CONFIG_DRM_AMDGPU</code>, or <code class="option">CONFIG_DRM_NOUVEAU</code> as <span class="quote">“<span class="quote"><code class="literal">y</code></span>”</span> is not recommended. If it is, any required firmware must be built as a part of the kernel image or the initramfs for the driver to function correctly.

The sub-entries under <code class="option">CONFIG_DRM_AMDGPU</code> are used to ensure the AMDGPU kernel driver supports all GPUs using the <code class="literal">radeonsi</code> driver. They are not needed if you won't need <code class="option">CONFIG_DRM_AMDGPU</code> itself. They may be unneeded for some GPU models.

For <code class="literal">llvmpipe</code> or <code class="literal">softpipe</code>, <code class="option">CONFIG_DRM_VGEM</code> is required or X clients may fail to start with a cryptic message <code class="computeroutput">Error: couldn't get an RGB, Double-buffered visual</code>. Strictly speaking, it can be compiled as a module. But the module will not be loaded automatically, so it's more convenient to build it as a part of the kernel image.
</div>
</div>

<div class="installation" lang="en">
## Installation of Mesa {#installation-of-mesa}

If you have downloaded the xdemos patch (needed if testing the Xorg installation per BLFS instructions), apply it by running the following command:

```bash
patch -Np1 -i ../mesa-add_xdemos-4.patch
```

Install <span class="application">Mesa</span> by running the following commands:

```bash
mkdir build &&
cd    build &&

meson setup ..                 \
      --prefix=$XORG_PREFIX    \
      --buildtype=release      \
      -D platforms=x11,wayland \
      -D gallium-drivers=auto  \
      -D vulkan-drivers=auto   \
      -D valgrind=disabled     \
      -D video-codecs=all      \
      -D libunwind=disabled    &&

ninja
```

<div class="admon warning">
![\[Warning\]](../images/warning.png)

### Warning

Please ask your lawyer or remove the *`-D video-codecs=all`* option if you will distribute the compiled Mesa libraries and drivers to others.
</div>

To test the results, issue:

```bash
meson configure -D build-tests=true &&
ninja test
```

Now, as the <code class="systemitem">root</code> user:

```bash
ninja install
```

If desired, install the optional documentation by running the following commands as the <code class="systemitem">root</code> user:

```bash
cp -rv ../docs -T /usr/share/doc/mesa-26.0.7
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--buildtype=release`*: This switch ensures a fully-optimized build, and disables debug assertions which will severely slow down the libraries in certain use-cases. Without this switch, build sizes can span into the 2 GB range.

<a id="mesa-gallium-drivers"></a> *`-D gallium-drivers=auto`*: This parameter controls which Gallium3D drivers should be built:

<div class="itemizedlist">
-   <code class="literal">auto</code> selects all Gallium3D drivers available for x86. With a comma-separated list, only a subset of these drivers will be built. If you precisely know which drivers you need, you can select them explicitly. For example, <code class="option">-D gallium-drivers=radeonsi,iris,llvmpipe</code>.

-   <code class="literal">r300</code> (for ATI Radeon 9000 or Radeon X series)

-   <code class="literal">r600</code> (for AMD/ATI Radeon HD 2000-6000 series)

-   <code class="literal">radeonsi</code> (for AMD Radeon HD 7000 or newer AMD GPU models)

-   <code class="literal">nouveau</code> (for supported NVIDIA GPUs, they are listed as all <span class="quote">“<span class="quote">3D features</span>”</span> either <span class="quote">“<span class="quote">DONE</span>”</span> or <span class="quote">“<span class="quote">N/A</span>”</span> in <a class="ulink" href="https://nouveau.freedesktop.org/FeatureMatrix.md">the Nouveau status page</a>)

-   <code class="literal">virgl</code> (for a QEMU virtual GPU with <span class="application">virglrender</span> support; note that BLFS <a class="xref" href="../postlfs/qemu.md" title="qemu-11.0.1">qemu-11.0.1</a> is not built with <span class="application">virglrender</span>)

-   <code class="literal">svga</code> (for a VMWare virtual GPU)

-   <code class="literal">llvmpipe</code> (using CPU for 3D rasterization. Note that it's much slower than using a modern 3D-capable GPU, so it should be only used if the GPU is not supported by other drivers)

-   <code class="literal">softpipe</code> (also using CPU for 3D rasterization, but slower than llvmpipe. There is not much reason to use it unless LLVM is not available)

-   <code class="literal">iris</code> (for Intel GPUs shipped with Broadwell or newer CPUs, or as a dedicated PCIe card)

-   <code class="literal">crocus</code> (for Intel GMA 3000, X3000 series, 4000 series, or X4000 series GPUs shipped with chipsets, or Intel HD GPUs shipped with pre-Broadwell CPUs)

-   <code class="literal">i915</code> (for Intel GMA 900, 950, 3100, or 3150 GPUs shipped with chipsets or Atom D/N 4xx/5xx CPUs)

-   <code class="literal">zink</code> (uses Vulkan to implement OpenGL, and while unstable at times, it can be a decent replacement for non-performant gallium drivers like nouveau)
</div>

*`-D vulkan-drivers=auto`*: This parameter controls which Vulkan drivers should be built:

<div class="itemizedlist">
-   <code class="literal">auto</code> selects all Vulkan drivers available for x86. With a comma-separated list, only a subset of these drivers will be built. If you precisely know which drivers you need, you can select them explicitly. For example, <code class="option">-D vulkan-drivers=amd,nouveau,swrast</code>.

-   <code class="literal">amd</code> (for AMD Radeon HD 7730 or newer AMD GPUs)

-   <code class="literal">intel</code> (for Intel GPUs shipped with Skylake or newer CPUs, or as a dedicated PCIe card)

-   <code class="literal">intel_hasvk</code> (for Intel GPUs shipped with Ivy Bridge, Haswell, or Broadwell CPUs)

-   <code class="literal">nouveau</code> (for GTX 16XX, RTX 20XX, or newer NVIDIA GPUs)

-   <code class="literal">swrast</code> (for using the CPU for 3D rasterization) Note that it's much slower than using a modern 3D-capable GPU, so it should be only used if the GPU is not supported by other drivers.

-   <code class="literal">""</code> (empty list, use <code class="option">-D vulkan-drivers=""</code> if you've not installed and you don't plan to install <a class="xref" href="vulkan-loader.md" title="Vulkan-Loader-1.4.350.0">Vulkan-Loader-1.4.350.0</a>)
</div>

*`-D platforms=...`*: This parameter controls which windowing systems will be supported. Available linux platforms are x11 and wayland.

*`-D valgrind=disabled`*: This parameter disables the usage of Valgrind during the build process. Remove this parameter if you have Valgrind installed, and wish to check for memory leaks.

*`-D video-codecs=all`*: This parameter enables building codecs for video formats covered by third-party patents.

*`-D libunwind=disabled`*: This parameter disables the usage of libunwind.

<span class="command"><strong>meson configure -D build-tests=true</strong></span>: This command will reconfigure the build to set <code class="option">-D build-tests=true</code>, but keep the other options specified in the <span class="command"><strong>meson setup</strong></span> command unchanged. It allows <span class="command"><strong>ninja test</strong></span> to build and run unit tests.

<code class="option">-D egl-native-platform="..."</code>: This parameter controls which Embedded Graphics Library support will be built. Available linux options are auto (default), x11, wayland, surfaceless, and drm.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">glxgears and glxinfo</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libEGL.so, libGL.so, libGLESv1_CM.so, libGLESv2.so, libgbm.so, and libgallium-26.0.7.so</span>
</div>

<div class="seg">
**Installed DRI Driver Stubs:** <span class="segbody">libdril_dri.so and multiple symlinks to it</span>
</div>

<div class="seg">
**Installed VA-API Drivers:** <span class="segbody">nouveau_drv_video.so, r600_drv_video.so, radeonsi_drv_video.so, and virtio_gpu_drv_video.so (symlinks to libgallium-26.0.7.so)</span>
</div>

<div class="seg">
**Installed GBM Backends:** <span class="segbody">dri_gbm.so</span>
</div>

<div class="seg">
**Installed Vulkan Drivers:** <span class="segbody">libvulkan_intel_hasvk.so, libvulkan_intel.so, libvulkan_lvp.so, libvulkan_nouveau.so, and libvulkan_radeon.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">\$XORG_PREFIX/include/{EGL,GLES,GLES2,GLES3,KHR}, \$XORG_PREFIX/lib/{dri,gbm}, \$XORG_PREFIX/share/drirc.d (contains workarounds for various applications, particularly browsers and games), \$XORG_PREFIX/share/vulkan, and /usr/share/doc/mesa-26.0.7</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------
  <a id="glxgears"></a><span class="command"><span class="term"><strong>glxgears</strong></span></span>              is a GL demo useful for troubleshooting graphics problems
  <a id="glxinfo"></a><span class="command"><span class="term"><strong>glxinfo</strong></span></span>                is a diagnostic program that displays information about the graphics hardware and installed GL libraries
  <a id="dri_gbm"></a><span class="term"><code class="filename">dri_gbm.so</code></span>                is the GBM backend for <span class="application">Mesa</span> drivers
  <a id="libdril_dri"></a><span class="term"><code class="filename">libdril_dri.so</code></span>        is a stub allowing Xorg server to co-operate with the Gallium3D drivers
  <a id="libEGL"></a><span class="term"><code class="filename">libEGL.so</code></span>                  provides a native platform graphics interface as defined by the EGL-1.4 specification
  <a id="libgallium"></a><span class="term"><code class="filename">libgallium-26.0.7.so</code></span>   contains all the Gallium3D and VA-API drivers
  <a id="libgbm"></a><span class="term"><code class="filename">libgbm.so</code></span>                  is the <span class="application">Mesa</span> Generic Buffer Management library
  <a id="libGLESv1_CM"></a><span class="term"><code class="filename">libGLESv1_CM.so</code></span>      is the <span class="application">Mesa</span> OpenGL ES 1.1 library
  <a id="libGLES2"></a><span class="term"><code class="filename">libGLES2.so</code></span>              is the <span class="application">Mesa</span> OpenGL ES 2.0 library
  <a id="libGL"></a><span class="term"><code class="filename">libGL.so</code></span>                    is the main <span class="application">Mesa</span> OpenGL library
  ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](xcb-utilities.md "XCB Utilities")

    XCB Utilities

-   [Next](xbitmaps.md "xbitmaps-1.1.4")

    xbitmaps-1.1.4

-   [Up](installing.md "Chapter 24. Graphical Environments")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
