::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](intel-media-driver.md "intel-media-driver-26.1.5"){accesskey="p"}

    intel-media-driver-26.1.5

-   [Next](liba52.md "Liba52-0.8.0"){accesskey="n"}

    Liba52-0.8.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#intel-vaapi-driver}intel-vaapi-driver-2.4.1 {#intel-vaapi-driver-2.4.1 .sect1}

:::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to intel-vaapi-driver {#introduction-to-intel-vaapi-driver .sect2}

The [intel-vaapi-driver]{.application} package contains a VA API driver for Intel GPUs that are provided with Haswell CPUs and earlier.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/intel/intel-vaapi-driver/releases/download/2.4.1/intel-vaapi-driver-2.4.1.tar.bz2](https://github.com/intel/intel-vaapi-driver/releases/download/2.4.1/intel-vaapi-driver-2.4.1.tar.bz2){.ulink}

-   Download MD5 sum: 073fce0f409559109ad2dd0a6531055d

-   Download size: 2.8 MB

-   Estimated disk space required: 97 MB

-   Estimated build time: 0.3 SBU
:::

### intel-vaapi-driver Dependencies

#### Required

[libva-2.23.0](libva.md "libva-2.23.0"){.xref} and [Xorg build environment](../x/xorg7.md#xorg-env "Setting up the Xorg Build Environment"){.xref}
:::::

::: {.kernel lang="en"}
## []{#intel-vaapi-driver-kernel}Kernel Configuration {#kernel-configuration .sect2}

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
:::

::: {.installation lang="en"}
## Installation of intel-vaapi-driver {#installation-of-intel-vaapi-driver .sect2}

Install the driver by running the following commands:

``` userinput
./configure $XORG_CONFIG &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

:::::: {.content lang="en"}
## Contents {#contents .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed Driver:** [i965_drv_video.so]{.segbody}
:::
::::
:::::
::::::
::::::::::::

::: navfooter
-   [Prev](intel-media-driver.md "intel-media-driver-26.1.5"){accesskey="p"}

    intel-media-driver-26.1.5

-   [Next](liba52.md "Liba52-0.8.0"){accesskey="n"}

    Liba52-0.8.0

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
