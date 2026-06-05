<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libsndfile.md "libsndfile-1.2.2")

    libsndfile-1.2.2

-   [Next](libvorbis.md "libvorbis-1.3.7")

    libvorbis-1.3.7

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# libva-2.23.0 {#libva-2.23.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to libva {#introduction-to-libva}

The <span class="application">libva</span> package contains a library which provides access to hardware accelerated video processing, using hardware to accelerate video processing in order to offload the central processing unit (CPU) to decode and encode compressed digital video. The VA API video decode/encode interface is platform and window system independent targeted at Direct Rendering Infrastructure (DRI) in the X Window System however it can potentially also be used with direct framebuffer and graphics sub-systems for video output. Accelerated processing includes support for video decoding, video encoding, subpicture blending, and rendering.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/intel/libva/archive/2.23.0/libva-2.23.0.tar.gz">https://github.com/intel/libva/archive/2.23.0/libva-2.23.0.tar.gz</a>

-   Download MD5 sum: 826c08e6965d2059e7a6dc98e3292b88

-   Download size: 300 KB

-   Estimated disk space required: 4.8 MB

-   Estimated build time: less than 0.1 SBU
</div>

### libva Dependencies

#### Required

<a class="xref" href="../x/xorg7.md#xorg-env" title="Setting up the Xorg Build Environment">Xorg build environment</a> and <a class="xref" href="../x/libdrm.md" title="Libdrm-2.4.134">libdrm-2.4.134</a>

#### Recommended

<a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a>

#### Recommended (Runtime)

The VA API driver suitable for the hardware in your system: <a class="xref" href="intel-vaapi-driver.md" title="intel-vaapi-driver-2.4.1">intel-vaapi-driver-2.4.1</a> (for Intel GPUs provided with Haswell CPUs or earlier), <a class="xref" href="intel-media-driver.md" title="intel-media-driver-26.1.5">intel-media-driver-26.1.5</a> (for Intel GPUs provided with Broadwell CPUs or later and Intel Arc GPUs), and <a class="xref" href="../x/mesa.md" title="Mesa-26.0.7">Mesa-26.0.7</a> (providing the <code class="literal">r600</code>, <code class="literal">radeonsi</code>, and <code class="literal">nouveau</code> VA API drivers, for the ATI/AMD Radeon HD 2xxx GPUs and later, and <a class="ulink" href="https://nouveau.freedesktop.org/VideoAcceleration.md">supported NVIDIA GPUs</a>; there is a circular dependency, read the Mesa page for information on how to break it)

#### Optional

<a class="xref" href="../general/doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="../general/wayland.md" title="Wayland-1.25.0">Wayland-1.25.0</a>, and <a class="ulink" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools">intel-gpu-tools</a>
</div>

<div class="installation" lang="en">
## Installation of libva {#installation-of-libva}

Install <span class="application">libva</span> by running the following commands:

```bash
cd build &&

meson setup --prefix=$XORG_PREFIX --buildtype=release &&
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
**Installed Libraries:** <span class="segbody">libva-drm.so, libva-glx.so, libva.so, libva-wayland.so, and libva-x11.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">\$XORG_PREFIX/include/va</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------- --------------------------------------------------------------------------------------
  <a id="libva-lib"></a><span class="term"><code class="filename">libva.so</code></span>   contains API functions which provide access to hardware accelerated video processing
  ---------------------------------------------- --------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](libsndfile.md "libsndfile-1.2.2")

    libsndfile-1.2.2

-   [Next](libvorbis.md "libvorbis-1.3.7")

    libvorbis-1.3.7

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
