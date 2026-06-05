::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libsndfile.md "libsndfile-1.2.2"){accesskey="p"}

    libsndfile-1.2.2

-   [Next](libvorbis.md "libvorbis-1.3.7"){accesskey="n"}

    libvorbis-1.3.7

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libva}libva-2.23.0 {#libva-2.23.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libva {#introduction-to-libva .sect2}

The [libva]{.application} package contains a library which provides access to hardware accelerated video processing, using hardware to accelerate video processing in order to offload the central processing unit (CPU) to decode and encode compressed digital video. The VA API video decode/encode interface is platform and window system independent targeted at Direct Rendering Infrastructure (DRI) in the X Window System however it can potentially also be used with direct framebuffer and graphics sub-systems for video output. Accelerated processing includes support for video decoding, video encoding, subpicture blending, and rendering.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/intel/libva/archive/2.23.0/libva-2.23.0.tar.gz](https://github.com/intel/libva/archive/2.23.0/libva-2.23.0.tar.gz){.ulink}

-   Download MD5 sum: 826c08e6965d2059e7a6dc98e3292b88

-   Download size: 300 KB

-   Estimated disk space required: 4.8 MB

-   Estimated build time: less than 0.1 SBU
:::

### libva Dependencies

#### Required

[Xorg build environment](../x/xorg7.md#xorg-env "Setting up the Xorg Build Environment"){.xref} and [libdrm-2.4.134](../x/libdrm.md "Libdrm-2.4.134"){.xref}

#### Recommended

[Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref}

#### Recommended (Runtime)

The VA API driver suitable for the hardware in your system: [intel-vaapi-driver-2.4.1](intel-vaapi-driver.md "intel-vaapi-driver-2.4.1"){.xref} (for Intel GPUs provided with Haswell CPUs or earlier), [intel-media-driver-26.1.5](intel-media-driver.md "intel-media-driver-26.1.5"){.xref} (for Intel GPUs provided with Broadwell CPUs or later and Intel Arc GPUs), and [Mesa-26.0.7](../x/mesa.md "Mesa-26.0.7"){.xref} (providing the `r600`{.literal}, `radeonsi`{.literal}, and `nouveau`{.literal} VA API drivers, for the ATI/AMD Radeon HD 2xxx GPUs and later, and [supported NVIDIA GPUs](https://nouveau.freedesktop.org/VideoAcceleration.md){.ulink}; there is a circular dependency, read the Mesa page for information on how to break it)

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}, [Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref}, and [intel-gpu-tools](https://gitlab.freedesktop.org/drm/igt-gpu-tools){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libva {#installation-of-libva .sect2}

Install [libva]{.application} by running the following commands:

``` userinput
cd build &&

meson setup --prefix=$XORG_PREFIX --buildtype=release &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libva-drm.so, libva-glx.so, libva.so, libva-wayland.so, and libva-x11.so]{.segbody}
:::

::: seg
**Installed Directory:** [\$XORG_PREFIX/include/va]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- --------------------------------------------------------------------------------------
  []{#libva-lib}[`libva.so`{.filename}]{.term}   contains API functions which provide access to hardware accelerated video processing
  ---------------------------------------------- --------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](libsndfile.md "libsndfile-1.2.2"){accesskey="p"}

    libsndfile-1.2.2

-   [Next](libvorbis.md "libvorbis-1.3.7"){accesskey="n"}

    libvorbis-1.3.7

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
