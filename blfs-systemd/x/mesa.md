::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](xcb-utilities.md "XCB Utilities"){accesskey="p"}

    XCB Utilities

-   [Next](xbitmaps.md "xbitmaps-1.1.4"){accesskey="n"}

    xbitmaps-1.1.4

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mesa}Mesa-26.0.7 {#mesa-26.0.7 .sect1}

:::::::::::::::::::::::::::::: {.sect1 lang="en"}
::::::::::: {.package lang="en"}
## Introduction to Mesa {#introduction-to-mesa .sect2}

[Mesa]{.application} contains several libraries and drivers for multiple APIs like OpenGL and Vulkan.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package provides OpenGL libraries like `libGL.so`{.filename}. Packages and binaries outside of BLFS, like AppImages, can have trouble with both building and running on systems with OpenGL libraries installed from this package. If you find that you cannot build or run a given package or binary, then install the GLFS package [libglvnd](/glfs/view/dev/shareddeps/libglvnd.md){.ulink}. It provides OpenGL libraries of its own and allows using drivers outside of BLFS. You will have to rebuild many packages using OpenGL in order to allow packages to use [libglvnd]{.application}. Doing this is not supported by the BLFS editors.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[Mesa]{.application} is updated relatively often. You may want to use the latest available version.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://mesa.freedesktop.org/archive/mesa-26.0.7.tar.xz](https://mesa.freedesktop.org/archive/mesa-26.0.7.tar.xz){.ulink}

-   Download MD5 sum: c28b1d4c288d34fa7ea298ea0c417a23

-   Download size: 42 MB

-   Estimated disk space required: 1.1 GB (with docs; add 542 MB for tests)

-   Estimated build time: 3.1 SBU (with docs; add 1.7 SBU for tests; both with parallelism=4)
:::

### Additional Downloads

::: itemizedlist
-   Recommended patch: [https://www.linuxfromscratch.org/patches/blfs/svn/mesa-add_xdemos-4.patch](https://www.linuxfromscratch.org/patches/blfs/svn/mesa-add_xdemos-4.patch){.ulink} (installs 2 demo programs for testing Mesa - not needed if you install the [mesa-demos](https://archive.mesa3d.org/demos/){.ulink} package; does not build with [libglvnd]{.application})
:::

### Mesa Dependencies

#### Required

[Xorg Libraries](x7lib.md "Xorg Libraries"){.xref}, [libdrm-2.4.134](libdrm.md "Libdrm-2.4.134"){.xref}, [Mako-1.3.12](../general/python-modules.md#Mako "Mako-1.3.12"){.xref}, and [PyYAML-6.0.3](../general/python-modules.md#PyYAML "PyYAML-6.0.3"){.xref}

#### Recommended

::: itemizedlist
-   [Glslang-16.3.0](glslang.md "glslang-16.3.0"){.xref} (required for Vulkan support)

-   [libva-2.23.0](../multimedia/libva.md "libva-2.23.0"){.xref} (to provide VA-API support for some gallium drivers. Note that there is a circular dependency. You must build [libva]{.application} first without mesa's EGL and GLX support, install this package, and rebuild [libva]{.application})

-   [LLVM-22.1.0](../general/llvm.md "LLVM-22.1.0"){.xref} (required for the llvmpipe, r300, r600, and radeonsi drivers)

-   [wayland-protocols-1.48](../general/wayland-protocols.md "Wayland-Protocols-1.48"){.xref} (required for [Plasma-6.6.5](../kde/plasma-all.md "Building Plasma"){.xref}, GNOME, and recommended for [GTK-3.24.52](gtk3.md "GTK-3.24.52"){.xref})

-   [libclc-22.1.0](../general/libclc.md "libclc-22.1.0"){.xref} (built after [SPIRV-LLVM-Translator-22.1.2](../general/spirv-llvm-translator.md "SPIRV-LLVM-Translator-22.1.2"){.xref}, required for the Intel iris gallium driver)

-   [Vulkan-Loader-1.4.350.0](vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref} (required for the zink gallium driver)

-   [Cbindgen-0.29.3](../general/cbindgen.md "Cbindgen-0.29.3"){.xref}, [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref}, and [rust-bindgen-0.72.1](../general/rust-bindgen.md "rust-bindgen-0.72.1"){.xref} (required for the Nouveau Vulkan driver)
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for building the Nouveau Vulkan driver. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before building this package.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

[**Choosing Mesa Drivers**]{.bold}

In the instructions below, all the available drivers are built. That will almost always work. However, it is not efficient. Depending on your video hardware, you probably need only specific drivers.

The first thing you need to know is which type of video device you have. In some cases it is built into the CPU. In others it is a separate PCI card. In either case you can tell what video hardware you have by installing [pciutils-3.15.0](../general/pciutils.md "pciutils-3.15.0"){.xref} and running:

``` userinput
lspci | grep VGA
```

The video device is most likely one of three families: AMD, Intel, or NVIDIA. See the Command Explanations for *`-D gallium-drivers=auto`* below to see what options are available for your specific video hardware (or emulated video hardware). You should probably add the softpipe or llvmpipe option as a backup driver.

For 'platforms' you can select x11 and/or wayland. Note that in BLFS currently only Gnome and KDE can use wayland. If you are not going to use one of those desktop environments then you probably only want x11.

For 'vulkan-drivers' you may want to limit the selection to your current hardware. These drivers are used by some specific applications. For example, ffmpeg (including ffplay) will use Vulkan instead of OpenGL for rendering video on the GPU. If you do not want to do this you may or may not want to install them. See the Command Explanations for *`-D vulkan-drivers=auto`* below to see what options are available for your specific video hardware (or emulated video hardware). You should probably add the swrast option as a backup driver unless you don't need Vulkan at all.
:::

#### Optional

[libdisplay-info-0.3.0](../general/libdisplay-info.md "libdisplay-info-0.3.0"){.xref}, [libunwind-1.8.3](../general/libunwind.md "libunwind-1.8.3"){.xref}, [lm-sensors-3-6-2](../general/lm-sensors.md "lm-sensors-3-6-2"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, [mesa-demos](https://archive.mesa3d.org/demos/){.ulink} (provides more than 300 extra demos to test [Mesa]{.application}; this includes the same programs added by the patch above), [Bellagio OpenMAX Integration Layer](https://omxil.sourceforge.net/){.ulink} (for mobile platforms), [libglvnd](/glfs/view/dev/shareddeps/libglvnd.md){.ulink} (provides OpenGL libraries), [OpenCL-ICD-Loader](https://github.com/KhronosGroup/OpenCL-ICD-Loader){.ulink}, and [libtizonia](https://github.com/tizonia/tizonia-openmax-il/wiki/Tizonia-OpenMAX-IL/){.ulink}
:::::::::::

:::: {.kernel lang="en"}
## []{#mesa-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration and recompile the kernel if necessary:

``` screen
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

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The corresponding Mesa Gallium3D driver name is provided as the comment for the configuration entries. If you don't know the name of the Mesa Gallium3D driver for your GPU, see [Mesa Gallium3D Drivers](mesa.md#mesa-gallium-drivers){.xref} below.

For the GPUs supported by the Iris Gallium3D driver, with `CONFIG_DRM_I915`{.option} enabled and `CONFIG_DRM_XE_FORCE_PROBE`{.option} set to the string `*`{.literal}, the i915 driver will be used if it supports the GPU, and the Xe driver will be used if it supports the GPU but the i915 driver does not. If you are sure your GPU is supported by the i915 driver, you can disable the Xe driver to save some build time. If your GPU is supported by both drivers and you want to use the Xe driver, you can disable the i915 driver, or make the i915 driver deny your GPU via the `CONFIG_DRM_I915_FORCE_PROBE`{.option} option, for example setting it to `!7d55`{.literal} would make i915 deny the Meteor Lake integrated GPU (of which the PCI ID is `8086:7d55`{.literal}), leaving it for the Xe driver.

`CONFIG_DRM_RADEON`{.option}, `CONFIG_DRM_AMDGPU`{.option}, `CONFIG_DRM_NOUVEAU`{.option}, `CONFIG_DRM_I915`{.option}, and `CONFIG_DRM_XE`{.option} may require firmware. See [About Firmware](../postlfs/firmware.md "About Firmware"){.xref} for details.

Selecting `CONFIG_DRM_RADEON`{.option}, `CONFIG_DRM_AMDGPU`{.option}, or `CONFIG_DRM_NOUVEAU`{.option} as [“[`y`{.literal}]{.quote}”]{.quote} is not recommended. If it is, any required firmware must be built as a part of the kernel image or the initramfs for the driver to function correctly.

The sub-entries under `CONFIG_DRM_AMDGPU`{.option} are used to ensure the AMDGPU kernel driver supports all GPUs using the `radeonsi`{.literal} driver. They are not needed if you won't need `CONFIG_DRM_AMDGPU`{.option} itself. They may be unneeded for some GPU models.

For `llvmpipe`{.literal} or `softpipe`{.literal}, `CONFIG_DRM_VGEM`{.option} is required or X clients may fail to start with a cryptic message `Error: couldn't get an RGB, Double-buffered visual`{.computeroutput}. Strictly speaking, it can be compiled as a module. But the module will not be loaded automatically, so it's more convenient to build it as a part of the kernel image.
:::
::::

:::: {.installation lang="en"}
## Installation of Mesa {#installation-of-mesa .sect2}

If you have downloaded the xdemos patch (needed if testing the Xorg installation per BLFS instructions), apply it by running the following command:

``` userinput
patch -Np1 -i ../mesa-add_xdemos-4.patch
```

Install [Mesa]{.application} by running the following commands:

``` userinput
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

::: {.admon .warning}
![\[Warning\]](../images/warning.png)

### Warning

Please ask your lawyer or remove the *`-D video-codecs=all`* option if you will distribute the compiled Mesa libraries and drivers to others.
:::

To test the results, issue:

``` userinput
meson configure -D build-tests=true &&
ninja test
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

If desired, install the optional documentation by running the following commands as the `root`{.systemitem} user:

``` root
cp -rv ../docs -T /usr/share/doc/mesa-26.0.7
```
::::

::::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: This switch ensures a fully-optimized build, and disables debug assertions which will severely slow down the libraries in certain use-cases. Without this switch, build sizes can span into the 2 GB range.

[]{#mesa-gallium-drivers} *`-D gallium-drivers=auto`*: This parameter controls which Gallium3D drivers should be built:

::: itemizedlist
-   `auto`{.literal} selects all Gallium3D drivers available for x86. With a comma-separated list, only a subset of these drivers will be built. If you precisely know which drivers you need, you can select them explicitly. For example, `-D gallium-drivers=radeonsi,iris,llvmpipe`{.option}.

-   `r300`{.literal} (for ATI Radeon 9000 or Radeon X series)

-   `r600`{.literal} (for AMD/ATI Radeon HD 2000-6000 series)

-   `radeonsi`{.literal} (for AMD Radeon HD 7000 or newer AMD GPU models)

-   `nouveau`{.literal} (for supported NVIDIA GPUs, they are listed as all [“[3D features]{.quote}”]{.quote} either [“[DONE]{.quote}”]{.quote} or [“[N/A]{.quote}”]{.quote} in [the Nouveau status page](https://nouveau.freedesktop.org/FeatureMatrix.md){.ulink})

-   `virgl`{.literal} (for a QEMU virtual GPU with [virglrender]{.application} support; note that BLFS [qemu-11.0.1](../postlfs/qemu.md "qemu-11.0.1"){.xref} is not built with [virglrender]{.application})

-   `svga`{.literal} (for a VMWare virtual GPU)

-   `llvmpipe`{.literal} (using CPU for 3D rasterization. Note that it's much slower than using a modern 3D-capable GPU, so it should be only used if the GPU is not supported by other drivers)

-   `softpipe`{.literal} (also using CPU for 3D rasterization, but slower than llvmpipe. There is not much reason to use it unless LLVM is not available)

-   `iris`{.literal} (for Intel GPUs shipped with Broadwell or newer CPUs, or as a dedicated PCIe card)

-   `crocus`{.literal} (for Intel GMA 3000, X3000 series, 4000 series, or X4000 series GPUs shipped with chipsets, or Intel HD GPUs shipped with pre-Broadwell CPUs)

-   `i915`{.literal} (for Intel GMA 900, 950, 3100, or 3150 GPUs shipped with chipsets or Atom D/N 4xx/5xx CPUs)

-   `zink`{.literal} (uses Vulkan to implement OpenGL, and while unstable at times, it can be a decent replacement for non-performant gallium drivers like nouveau)
:::

*`-D vulkan-drivers=auto`*: This parameter controls which Vulkan drivers should be built:

::: itemizedlist
-   `auto`{.literal} selects all Vulkan drivers available for x86. With a comma-separated list, only a subset of these drivers will be built. If you precisely know which drivers you need, you can select them explicitly. For example, `-D vulkan-drivers=amd,nouveau,swrast`{.option}.

-   `amd`{.literal} (for AMD Radeon HD 7730 or newer AMD GPUs)

-   `intel`{.literal} (for Intel GPUs shipped with Skylake or newer CPUs, or as a dedicated PCIe card)

-   `intel_hasvk`{.literal} (for Intel GPUs shipped with Ivy Bridge, Haswell, or Broadwell CPUs)

-   `nouveau`{.literal} (for GTX 16XX, RTX 20XX, or newer NVIDIA GPUs)

-   `swrast`{.literal} (for using the CPU for 3D rasterization) Note that it's much slower than using a modern 3D-capable GPU, so it should be only used if the GPU is not supported by other drivers.

-   `""`{.literal} (empty list, use `-D vulkan-drivers=""`{.option} if you've not installed and you don't plan to install [Vulkan-Loader-1.4.350.0](vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref})
:::

*`-D platforms=...`*: This parameter controls which windowing systems will be supported. Available linux platforms are x11 and wayland.

*`-D valgrind=disabled`*: This parameter disables the usage of Valgrind during the build process. Remove this parameter if you have Valgrind installed, and wish to check for memory leaks.

*`-D video-codecs=all`*: This parameter enables building codecs for video formats covered by third-party patents.

*`-D libunwind=disabled`*: This parameter disables the usage of libunwind.

[**meson configure -D build-tests=true**]{.command}: This command will reconfigure the build to set `-D build-tests=true`{.option}, but keep the other options specified in the [**meson setup**]{.command} command unchanged. It allows [**ninja test**]{.command} to build and run unit tests.

`-D egl-native-platform="..."`{.option}: This parameter controls which Embedded Graphics Library support will be built. Available linux options are auto (default), x11, wayland, surfaceless, and drm.
:::::

::::::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::::::: segmentedlist
:::::::::: seglistitem
::: seg
**Installed Programs:** [glxgears and glxinfo]{.segbody}
:::

::: seg
**Installed Libraries:** [libEGL.so, libGL.so, libGLESv1_CM.so, libGLESv2.so, libgbm.so, and libgallium-26.0.7.so]{.segbody}
:::

::: seg
**Installed DRI Driver Stubs:** [libdril_dri.so and multiple symlinks to it]{.segbody}
:::

::: seg
**Installed VA-API Drivers:** [nouveau_drv_video.so, r600_drv_video.so, radeonsi_drv_video.so, and virtio_gpu_drv_video.so (symlinks to libgallium-26.0.7.so)]{.segbody}
:::

::: seg
**Installed GBM Backends:** [dri_gbm.so]{.segbody}
:::

::: seg
**Installed Vulkan Drivers:** [libvulkan_intel_hasvk.so, libvulkan_intel.so, libvulkan_lvp.so, libvulkan_nouveau.so, and libvulkan_radeon.so]{.segbody}
:::

::: seg
**Installed Directories:** [\$XORG_PREFIX/include/{EGL,GLES,GLES2,GLES3,KHR}, \$XORG_PREFIX/lib/{dri,gbm}, \$XORG_PREFIX/share/drirc.d (contains workarounds for various applications, particularly browsers and games), \$XORG_PREFIX/share/vulkan, and /usr/share/doc/mesa-26.0.7]{.segbody}
:::
::::::::::
:::::::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------
  []{#glxgears}[[**glxgears**]{.command}]{.term}              is a GL demo useful for troubleshooting graphics problems
  []{#glxinfo}[[**glxinfo**]{.command}]{.term}                is a diagnostic program that displays information about the graphics hardware and installed GL libraries
  []{#dri_gbm}[`dri_gbm.so`{.filename}]{.term}                is the GBM backend for [Mesa]{.application} drivers
  []{#libdril_dri}[`libdril_dri.so`{.filename}]{.term}        is a stub allowing Xorg server to co-operate with the Gallium3D drivers
  []{#libEGL}[`libEGL.so`{.filename}]{.term}                  provides a native platform graphics interface as defined by the EGL-1.4 specification
  []{#libgallium}[`libgallium-26.0.7.so`{.filename}]{.term}   contains all the Gallium3D and VA-API drivers
  []{#libgbm}[`libgbm.so`{.filename}]{.term}                  is the [Mesa]{.application} Generic Buffer Management library
  []{#libGLESv1_CM}[`libGLESv1_CM.so`{.filename}]{.term}      is the [Mesa]{.application} OpenGL ES 1.1 library
  []{#libGLES2}[`libGLES2.so`{.filename}]{.term}              is the [Mesa]{.application} OpenGL ES 2.0 library
  []{#libGL}[`libGL.so`{.filename}]{.term}                    is the main [Mesa]{.application} OpenGL library
  ----------------------------------------------------------- ----------------------------------------------------------------------------------------------------------
:::
:::::::::::::
::::::::::::::::::::::::::::::

::: navfooter
-   [Prev](xcb-utilities.md "XCB Utilities"){accesskey="p"}

    XCB Utilities

-   [Next](xbitmaps.md "xbitmaps-1.1.4"){accesskey="n"}

    xbitmaps-1.1.4

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
