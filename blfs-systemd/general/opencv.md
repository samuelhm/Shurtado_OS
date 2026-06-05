::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](newt.md "newt-0.52.25"){accesskey="p"}

    newt-0.52.25

-   [Next](openjpeg2.md "OpenJPEG-2.5.4"){accesskey="n"}

    OpenJPEG-2.5.4

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#opencv}opencv-4.13.0 {#opencv-4.13.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to opencv {#introduction-to-opencv .sect2}

The [opencv]{.application} package contains graphics libraries mainly aimed at real-time computer vision.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/opencv/opencv/archive/4.13.0/opencv-4.13.0.tar.gz](https://github.com/opencv/opencv/archive/4.13.0/opencv-4.13.0.tar.gz){.ulink}

-   Download MD5 sum: f33c0ace3add57aba7b9d3fe3c41feb4

-   Download size: 91 MB

-   Estimated disk space required: 1.0 GB (with opencv-contrib)

-   Estimated build time: 4.1 SBU (using parallelism=8)
:::

### Additional Downloads

::: itemizedlist
-   Optional additional modules: [https://github.com/opencv/opencv_contrib/archive/4.13.0/opencv_contrib-4.13.0.tar.gz](https://github.com/opencv/opencv_contrib/archive/4.13.0/opencv_contrib-4.13.0.tar.gz){.ulink}

-   Optional additional modules md5sum: 8ed522edaefc2d55df685438acae9beb

-   Optional additional modules Size: 53 MB
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

One additional file that starts with "ippicv" (integrated performance primitives) will be automatically downloaded during the cmake portion of the build procedure. This download is specific to the system architecture.
:::

### opencv Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref} and [libarchive-3.8.7](libarchive.md "libarchive-3.8.7"){.xref}

#### Recommended

[FFmpeg-8.1.1](../multimedia/ffmpeg.md "FFmpeg-8.1.1"){.xref}, [gst-plugins-base-1.28.3](../multimedia/gst10-plugins-base.md "gst-plugins-base-1.28.3"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [jasper-4.2.9](jasper.md "jasper-4.2.9"){.xref}, [libavif-1.4.2](libavif.md "libavif-1.4.2"){.xref}, [libexif-0.6.26](libexif.md "libexif-0.6.26"){.xref}, [libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}, [libtiff-4.7.1](libtiff.md "libtiff-4.7.1"){.xref}, [libwebp-1.6.0](libwebp.md "libwebp-1.6.0"){.xref}, [OpenJPEG-2.5.4](openjpeg2.md "OpenJPEG-2.5.4"){.xref}, [v4l-utils-1.32.0](../multimedia/v4l-utils.md "v4l-utils-1.32.0"){.xref}, and [xine-lib-1.2.13](../multimedia/xine-lib.md "xine-lib-1.2.13"){.xref}

#### Optional

[apache-ant-1.10.17](apache-ant.md "apache-ant-1.10.17"){.xref}, [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [Java-21.0.10](java.md "Java-21.0.10"){.xref}, [NumPy-2.4.6](python-modules.md#numpy "NumPy-2.4.6"){.xref}, [Protobuf-35.0](protobuf.md "Protobuf-35.0"){.xref}, [ATLAS](https://math-atlas.sourceforge.net/){.ulink}, [blas](https://www.netlib.org/blas/){.ulink}, [Cuda](https://developer.nvidia.com/cuda-zone){.ulink}, [Eigen](https://eigen.tuxfamily.org/){.ulink}, [OpenEXR](https://www.openexr.com/){.ulink}, [GDAL](https://www.gdal.org/){.ulink}, [lapack](https://www.netlib.org/lapack/){.ulink}, [libdc1394](https://sourceforge.net/projects/libdc1394/){.ulink}, [Threading Building Blocks (TBB)](https://github.com/oneapi-src/oneTBB){.ulink}, and [VTK - The Visualization Toolkit](https://vtk.org/){.ulink},
:::::::

::: {.installation lang="en"}
## Installation of opencv {#installation-of-opencv .sect2}

If you downloaded the optional modules, unpack them now:

``` userinput
tar -xf ../opencv_contrib-4.13.0.tar.gz
```

Install [opencv]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr      \
      -D CMAKE_BUILD_TYPE=Release       \
      -D ENABLE_CXX11=ON                \
      -D BUILD_PERF_TESTS=OFF           \
      -D WITH_XINE=ON                   \
      -D BUILD_TESTS=OFF                \
      -D ENABLE_PRECOMPILED_HEADERS=OFF \
      -D CMAKE_SKIP_INSTALL_RPATH=ON    \
      -D BUILD_WITH_DEBUG_INFO=OFF      \
      -D OPENCV_GENERATE_PKGCONFIG=ON   \
      -W no-dev  ..                     &&
make
```

The package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D WITH_XINE=ON`*: This switch instructs the make procedure to use [xine-lib-1.2.13](../multimedia/xine-lib.md "xine-lib-1.2.13"){.xref}.

*`-D ENABLE_PRECOMPILED_HEADERS=OFF`*: This switch is needed for compatibility with gcc-6.1 and later.

*`-D OPENCV_GENERATE_PKGCONFIG=ON`*: This switch tells the build system to generate a pkg-config file for other packages to detect and link to the libraries installed by this package.

`-D OPENCV_EXTRA_MODULES_PATH=../opencv_contrib-4.13.0/modules`{.option}: instructs the build system to build additional modules. Some packages in BLFS (such as [gst-plugins-bad-1.28.3](../multimedia/gst10-plugins-bad.md "gst-plugins-bad-1.28.3"){.xref}) need these modules to build components that use OpenCV.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [opencv_annotation, opencv_interactive-calibration, opencv_model_diagnostics, opencv_version, opencv_visualisation, opencv_waldboost_detector, and setup_vars_opencv4.sh]{.segbody}
:::

::: seg
**Installed Libraries:** [libopencv_aruco.so, libopencv_bgsegm.so, libopencv_bioinspired.so, libopencv_calib3d.so, libopencv_ccalib.so, libopencv_core.so, libopencv_datasets.so, libopencv_dnn_objdetect.so, libopencv_dnn.so, libopencv_dnn_superres.so, libopencv_dpm.so, libopencv_face.so, libopencv_features2d.so, libopencv_flann.so, libopencv_freetype.so, libopencv_fuzzy.so, libopencv_gapi.so, libopencv_hfs.so, libopencv_highgui.so, libopencv_imgcodecs.so, libopencv_img_hash.so, libopencv_imgproc.so, libopencv_intensity_transform.so, libopencv_line_descriptor.so, libopencv_mcc.so, libopencv_ml.so, libopencv_objdetect.so, libopencv_optflow.so, libopencv_phase_unwrapping.so, libopencv_photo.so, libopencv_plot.so, libopencv_quality.so, libopencv_rapid.so, libopencv_reg.so, libopencv_rgbd.so, libopencv_saliency.so, libopencv_shape.so, libopencv_signal.so, libopencv_stereo.so, libopencv_stitching.so, libopencv_structured_light.so, libopencv_superres.so, libopencv_surface_matching.so, libopencv_text.so, libopenct_tracking.so, libopencv_video.so, libopencv_videoio.so, libopencv_videostage.so, libopencv_wechat_qrcode.so, libopencv_xfeatures2d.so, libopencv_ximgproc.so, libopencv_xobjdetect.so, and libopencv_xphoto.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/opencv4, /usr/lib/cmake/opencv4, /usr/lib/python3.14/site-packages/cv2, /usr/share/licenses/opencv4, /usr/share/opencv4, and /usr/share/java/opencv4]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](newt.md "newt-0.52.25"){accesskey="p"}

    newt-0.52.25

-   [Next](openjpeg2.md "OpenJPEG-2.5.4"){accesskey="n"}

    OpenJPEG-2.5.4

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
