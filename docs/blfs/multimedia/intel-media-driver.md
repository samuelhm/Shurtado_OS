<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](id3lib.md "id3lib-3.8.3")

    id3lib-3.8.3

-   [Next](intel-vaapi-driver.md "intel-vaapi-driver-2.4.1")

    intel-vaapi-driver-2.4.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# intel-media-driver-26.1.5 {#intel-media-driver-26.1.5}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to intel-media-driver {#introduction-to-intel-media-driver}

The <span class="application">intel-media-driver</span> package provides a VA API driver for Intel GPUs that are provided with Broadwell CPUs and higher as well as the Intel Arc family of GPUs, like the B-Series. This includes support for a variety of codecs.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/lfs-book/intel-media-driver/archive/v26.1.5/intel-media-driver-26.1.5.tar.gz">https://github.com/lfs-book/intel-media-driver/archive/v26.1.5/intel-media-driver-26.1.5.tar.gz</a>

-   Download MD5 sum: 4084f6ffb1895ce16ab48ca564fe740a

-   Download size: 28 MB

-   Estimated disk space required: 2.0 GB (293 MB installed with a single GPU model)

-   Estimated build time: 3.1 SBU (with parallelism=4 and a single GPU model)
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

On GitHub we've forked the upstream repository into our own <code class="literal">lfs-book</code> namespace and recreated a tag for the release. This is done to ensure the downloaded tarball file name to be correct and consistent (i.e. it shouldn't change when using the browser instead of a tool like <span class="command"><strong>wget</strong></span>). Our tag and the upstream release tag are on the same commit, so we've not introduced any change to the tarball content except the name of its top-level directory (that Git does not track).
</div>

### intel-media-driver Dependencies

#### Required

<a class="xref" href="../general/cmake.md" title="CMake-4.3.3">CMake-4.3.3</a>, <a class="xref" href="../general/gmmlib.md" title="gmmlib-22.10.0">gmmlib-22.10.0</a>, <a class="xref" href="libva.md" title="libva-2.23.0">libva-2.23.0</a>, and <a class="xref" href="../x/xorg7.md#xorg-env" title="Setting up the Xorg Build Environment">Xorg build environment</a>
</div>

<div class="kernel" lang="en">
## Kernel Configuration {#kernel-configuration}

Enable the following options in the kernel configuration. Recompile the kernel if necessary:

```console
Device Drivers --->
  Graphics support --->
    <*/M>   Direct Rendering Manager (XFree86 4.1.0 and higher DRI support) --->
                                                                      ...  [DRM]
    < /*/M> Intel 8xx/9xx/G3x/G4x/HD Graphics                         [DRM_I915]
    < /*/M> Intel Xe2 Graphics                                          [DRM_XE]
    (*)       Force probe xe for selected Intel hardware IDs
                                                       ...  [DRM_XE_FORCE_PROBE]
```

See <a class="xref" href="../x/mesa.md#mesa-kernel" title="Kernel Configuration">Mesa Kernel Configuration</a> for more info about the i915 driver and the Xe driver.
</div>

<div class="installation" lang="en">
## Installation of intel-media-driver {#installation-of-intel-media-driver}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

This package takes a long time to build because it compiles code specific to each individual generation of Intel GPUs and for a variety of media codecs.

If you know the model of your Intel GPU, you can pass the <code class="option">-D{GEN{8,9,11,12},MTL,ARL,LNL,BMG,PTL,NVL}=OFF</code> option to the <span class="command"><strong>cmake</strong></span> command but leaving the option for your GPU out. Note that the <span class="quote">“<span class="quote">GEN</span>”</span> number here is the generation of the GPU, not the CPU. For example, with an Intel Core i7-1065G7 CPU shipping a 11th-generation Intel GPU, the <code class="option">-D{GEN{8,9,12},MTL,ARL,LNL,BMG,PTL,NVL}=OFF</code> option can be used so the code specific to the other generations of Intel GPUs won't be built.

To determine the model of the Intel GPU, install <a class="xref" href="../general/pciutils.md" title="pciutils-3.15.0">pciutils-3.15.0</a> and run <span class="command"><strong>lspci -nn \| grep -Ei 'VGA\|DISPLAY'</strong></span> first. It will output some information about the GPU, including the PCI vendor ID (<code class="literal">8086</code> for Intel) and the PCI device ID. For example, with an Intel Core i5-11300H CPU, the output is <code class="literal">8086:9a49</code>. Now searching for the registration of this device ID in the intel-media-driver source tree:

```bash
grep -ri 'RegisterDevice(0x9a49'
```

And determine the GPU model from the file name containing the registration. For the example above, the file name is <code class="filename">media_sysinfo_g12.cpp</code>, indicating the model is <code class="literal">GEN12</code>.
</div>

Install <span class="application">intel-media-driver</span> by running the following commands:

```bash
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
**Installed Libraries:** <span class="segbody">libigfxcmrt.so</span>
</div>

<div class="seg">
**Installed Drivers:** <span class="segbody">iHD_drv_video.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/igfxcmrt</span>
</div>
</div>
</div>

<div class="variablelist">
## Short Descriptions

  ------------------------------------------------------ -----------------------------------------------------------------------------
  <a id="libigfxcmrt"></a><span class="term"><code class="filename">libigfxcmrt.so</code></span>   provides API functions which allow running GPU kernels on the render engine
  ------------------------------------------------------ -----------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](id3lib.md "id3lib-3.8.3")

    id3lib-3.8.3

-   [Next](intel-vaapi-driver.md "intel-vaapi-driver-2.4.1")

    intel-vaapi-driver-2.4.1

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
