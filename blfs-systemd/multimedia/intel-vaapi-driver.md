<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](intel-media-driver.md "intel-media-driver-26.1.5")

    intel-media-driver-26.1.5

-   [Next](liba52.md "Liba52-0.8.0")

    Liba52-0.8.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# intel-vaapi-driver-2.4.1 {#intel-vaapi-driver-2.4.1}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to intel-vaapi-driver {#introduction-to-intel-vaapi-driver}

The <span class="application">intel-vaapi-driver</span> package contains a VA API driver for Intel GPUs that are provided with Haswell CPUs and earlier.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/intel/intel-vaapi-driver/releases/download/2.4.1/intel-vaapi-driver-2.4.1.tar.bz2">https://github.com/intel/intel-vaapi-driver/releases/download/2.4.1/intel-vaapi-driver-2.4.1.tar.bz2</a>

-   Download MD5 sum: 073fce0f409559109ad2dd0a6531055d

-   Download size: 2.8 MB

-   Estimated disk space required: 97 MB

-   Estimated build time: 0.3 SBU
</div>

### intel-vaapi-driver Dependencies

#### Required

<a class="xref" href="libva.md" title="libva-2.23.0">libva-2.23.0</a> and <a class="xref" href="../x/xorg7.md#xorg-env" title="Setting up the Xorg Build Environment">Xorg build environment</a>
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
</div>

<div class="installation" lang="en">
## Installation of intel-vaapi-driver {#installation-of-intel-vaapi-driver}

Install the driver by running the following commands:

```bash
./configure $XORG_CONFIG &&
make
```

This package does not come with a test suite.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Driver:** <span class="segbody">i965_drv_video.so</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](intel-media-driver.md "intel-media-driver-26.1.5")

    intel-media-driver-26.1.5

-   [Next](liba52.md "Liba52-0.8.0")

    Liba52-0.8.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
