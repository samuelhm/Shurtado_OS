::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](id3lib.md "id3lib-3.8.3"){accesskey="p"}

    id3lib-3.8.3

-   [Next](intel-vaapi-driver.md "intel-vaapi-driver-2.4.1"){accesskey="n"}

    intel-vaapi-driver-2.4.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#intel-media-driver}intel-media-driver-26.1.5 {#intel-media-driver-26.1.5 .sect1}

:::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to intel-media-driver {#introduction-to-intel-media-driver .sect2}

The [intel-media-driver]{.application} package provides a VA API driver for Intel GPUs that are provided with Broadwell CPUs and higher as well as the Intel Arc family of GPUs, like the B-Series. This includes support for a variety of codecs.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lfs-book/intel-media-driver/archive/v26.1.5/intel-media-driver-26.1.5.tar.gz](https://github.com/lfs-book/intel-media-driver/archive/v26.1.5/intel-media-driver-26.1.5.tar.gz){.ulink}

-   Download MD5 sum: 4084f6ffb1895ce16ab48ca564fe740a

-   Download size: 28 MB

-   Estimated disk space required: 2.0 GB (293 MB installed with a single GPU model)

-   Estimated build time: 3.1 SBU (with parallelism=4 and a single GPU model)
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

On GitHub we've forked the upstream repository into our own `lfs-book`{.literal} namespace and recreated a tag for the release. This is done to ensure the downloaded tarball file name to be correct and consistent (i.e. it shouldn't change when using the browser instead of a tool like [**wget**]{.command}). Our tag and the upstream release tag are on the same commit, so we've not introduced any change to the tarball content except the name of its top-level directory (that Git does not track).
:::

### intel-media-driver Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [gmmlib-22.10.0](../general/gmmlib.md "gmmlib-22.10.0"){.xref}, [libva-2.23.0](libva.md "libva-2.23.0"){.xref}, and [Xorg build environment](../x/xorg7.md#xorg-env "Setting up the Xorg Build Environment"){.xref}
::::::

::: {.kernel lang="en"}
## []{#intel-media-kernel}Kernel Configuration {#kernel-configuration .sect2}

Enable the following options in the kernel configuration. Recompile the kernel if necessary:

``` screen
Device Drivers --->
  Graphics support --->
    <*/M>   Direct Rendering Manager (XFree86 4.1.0 and higher DRI support) --->
                                                                      ...  [DRM]
    < /*/M> Intel 8xx/9xx/G3x/G4x/HD Graphics                         [DRM_I915]
    < /*/M> Intel Xe2 Graphics                                          [DRM_XE]
    (*)       Force probe xe for selected Intel hardware IDs
                                                       ...  [DRM_XE_FORCE_PROBE]
```

See [Mesa Kernel Configuration](../x/mesa.md#mesa-kernel "Kernel Configuration"){.xref} for more info about the i915 driver and the Xe driver.
:::

:::: {.installation lang="en"}
## Installation of intel-media-driver {#installation-of-intel-media-driver .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

This package takes a long time to build because it compiles code specific to each individual generation of Intel GPUs and for a variety of media codecs.

If you know the model of your Intel GPU, you can pass the `-D{GEN{8,9,11,12},MTL,ARL,LNL,BMG,PTL,NVL}=OFF`{.option} option to the [**cmake**]{.command} command but leaving the option for your GPU out. Note that the [“[GEN]{.quote}”]{.quote} number here is the generation of the GPU, not the CPU. For example, with an Intel Core i7-1065G7 CPU shipping a 11th-generation Intel GPU, the `-D{GEN{8,9,12},MTL,ARL,LNL,BMG,PTL,NVL}=OFF`{.option} option can be used so the code specific to the other generations of Intel GPUs won't be built.

To determine the model of the Intel GPU, install [pciutils-3.15.0](../general/pciutils.md "pciutils-3.15.0"){.xref} and run [**lspci -nn \| grep -Ei 'VGA\|DISPLAY'**]{.command} first. It will output some information about the GPU, including the PCI vendor ID (`8086`{.literal} for Intel) and the PCI device ID. For example, with an Intel Core i5-11300H CPU, the output is `8086:9a49`{.literal}. Now searching for the registration of this device ID in the intel-media-driver source tree:

``` userinput
grep -ri 'RegisterDevice(0x9a49'
```

And determine the GPU model from the file name containing the registration. For the example above, the file name is `media_sysinfo_g12.cpp`{.filename}, indicating the model is `GEN12`{.literal}.
:::

Install [intel-media-driver]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=$XORG_PREFIX \
      -D CMAKE_POLICY_VERSION_MINIMUM=3.5  \
      -D INSTALL_DRIVER_SYSCONF=OFF        \
      -D BUILD_TYPE=Release                \
      -D MEDIA_BUILD_FATAL_WARNINGS=OFF    \
      -G Ninja                             \
      -W no-dev ..                         &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
::::

:::::::::: {.content lang="en"}
## Contents {#contents .sect2}

:::::::: segmentedlist
::::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libigfxcmrt.so]{.segbody}
:::

::: seg
**Installed Drivers:** [iHD_drv_video.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/igfxcmrt]{.segbody}
:::
:::::::
::::::::

::: variablelist
## Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------------------------
  []{#libigfxcmrt}[`libigfxcmrt.so`{.filename}]{.term}   provides API functions which allow running GPU kernels on the render engine
  ------------------------------------------------------ -----------------------------------------------------------------------------
:::
::::::::::
::::::::::::::::::

::: navfooter
-   [Prev](id3lib.md "id3lib-3.8.3"){accesskey="p"}

    id3lib-3.8.3

-   [Next](intel-vaapi-driver.md "intel-vaapi-driver-2.4.1"){accesskey="n"}

    intel-vaapi-driver-2.4.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
