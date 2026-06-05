<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](newt.md "newt-0.52.25")

    newt-0.52.25

-   [Next](openjpeg2.md "OpenJPEG-2.5.4")

    OpenJPEG-2.5.4

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# opencv-4.13.0 {#opencv-4.13.0}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to opencv {#introduction-to-opencv}

The <span class="application">opencv</span> package contains graphics libraries mainly aimed at real-time computer vision.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://github.com/opencv/opencv/archive/4.13.0/opencv-4.13.0.tar.gz">https://github.com/opencv/opencv/archive/4.13.0/opencv-4.13.0.tar.gz</a>

-   Download MD5 sum: f33c0ace3add57aba7b9d3fe3c41feb4

-   Download size: 91 MB

-   Estimated disk space required: 1.0 GB (with opencv-contrib)

-   Estimated build time: 4.1 SBU (using parallelism=8)
</div>

### Additional Downloads

<div class="itemizedlist">
-   Optional additional modules: <a class="ulink" href="https://github.com/opencv/opencv_contrib/archive/4.13.0/opencv_contrib-4.13.0.tar.gz">https://github.com/opencv/opencv_contrib/archive/4.13.0/opencv_contrib-4.13.0.tar.gz</a>

-   Optional additional modules md5sum: 8ed522edaefc2d55df685438acae9beb

-   Optional additional modules Size: 53 MB
</div>

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

One additional file that starts with "ippicv" (integrated performance primitives) will be automatically downloaded during the cmake portion of the build procedure. This download is specific to the system architecture.
</div>

### opencv Dependencies

#### Required

<a class="xref" href="cmake.md" title="CMake-4.3.3">CMake-4.3.3</a> and <a class="xref" href="libarchive.md" title="libarchive-3.8.7">libarchive-3.8.7</a>

#### Recommended

<a class="xref" href="../multimedia/ffmpeg.md" title="FFmpeg-8.1.1">FFmpeg-8.1.1</a>, <a class="xref" href="../multimedia/gst10-plugins-base.md" title="gst-plugins-base-1.28.3">gst-plugins-base-1.28.3</a>, <a class="xref" href="../x/gtk3.md" title="GTK-3.24.52">GTK-3.24.52</a>, <a class="xref" href="jasper.md" title="jasper-4.2.9">jasper-4.2.9</a>, <a class="xref" href="libavif.md" title="libavif-1.4.2">libavif-1.4.2</a>, <a class="xref" href="libexif.md" title="libexif-0.6.26">libexif-0.6.26</a>, <a class="xref" href="libjpeg.md" title="libjpeg-turbo-3.1.4.1">libjpeg-turbo-3.1.4.1</a>, <a class="xref" href="libpng.md" title="libpng-1.6.58">libpng-1.6.58</a>, <a class="xref" href="libtiff.md" title="libtiff-4.7.1">libtiff-4.7.1</a>, <a class="xref" href="libwebp.md" title="libwebp-1.6.0">libwebp-1.6.0</a>, <a class="xref" href="openjpeg2.md" title="OpenJPEG-2.5.4">OpenJPEG-2.5.4</a>, <a class="xref" href="../multimedia/v4l-utils.md" title="v4l-utils-1.32.0">v4l-utils-1.32.0</a>, and <a class="xref" href="../multimedia/xine-lib.md" title="xine-lib-1.2.13">xine-lib-1.2.13</a>

#### Optional

<a class="xref" href="apache-ant.md" title="apache-ant-1.10.17">apache-ant-1.10.17</a>, <a class="xref" href="doxygen.md" title="Doxygen-1.17.0">Doxygen-1.17.0</a>, <a class="xref" href="java.md" title="Java-21.0.10">Java-21.0.10</a>, <a class="xref" href="python-modules.md#numpy" title="NumPy-2.4.6">NumPy-2.4.6</a>, <a class="xref" href="protobuf.md" title="Protobuf-35.0">Protobuf-35.0</a>, <a class="ulink" href="https://math-atlas.sourceforge.net/">ATLAS</a>, <a class="ulink" href="https://www.netlib.org/blas/">blas</a>, <a class="ulink" href="https://developer.nvidia.com/cuda-zone">Cuda</a>, <a class="ulink" href="https://eigen.tuxfamily.org/">Eigen</a>, <a class="ulink" href="https://www.openexr.com/">OpenEXR</a>, <a class="ulink" href="https://www.gdal.org/">GDAL</a>, <a class="ulink" href="https://www.netlib.org/lapack/">lapack</a>, <a class="ulink" href="https://sourceforge.net/projects/libdc1394/">libdc1394</a>, <a class="ulink" href="https://github.com/oneapi-src/oneTBB">Threading Building Blocks (TBB)</a>, and <a class="ulink" href="https://vtk.org/">VTK - The Visualization Toolkit</a>,
</div>

<div class="installation" lang="en">
## Installation of opencv {#installation-of-opencv}

If you downloaded the optional modules, unpack them now:

```bash
tar -xf ../opencv_contrib-4.13.0.tar.gz
```

Install <span class="application">opencv</span> by running the following commands:

```bash
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

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes <span class="command"><strong>cmake</strong></span> remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D WITH_XINE=ON`*: This switch instructs the make procedure to use <a class="xref" href="../multimedia/xine-lib.md" title="xine-lib-1.2.13">xine-lib-1.2.13</a>.

*`-D ENABLE_PRECOMPILED_HEADERS=OFF`*: This switch is needed for compatibility with gcc-6.1 and later.

*`-D OPENCV_GENERATE_PKGCONFIG=ON`*: This switch tells the build system to generate a pkg-config file for other packages to detect and link to the libraries installed by this package.

<code class="option">-D OPENCV_EXTRA_MODULES_PATH=../opencv_contrib-4.13.0/modules</code>: instructs the build system to build additional modules. Some packages in BLFS (such as <a class="xref" href="../multimedia/gst10-plugins-bad.md" title="gst-plugins-bad-1.28.3">gst-plugins-bad-1.28.3</a>) need these modules to build components that use OpenCV.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">opencv_annotation, opencv_interactive-calibration, opencv_model_diagnostics, opencv_version, opencv_visualisation, opencv_waldboost_detector, and setup_vars_opencv4.sh</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libopencv_aruco.so, libopencv_bgsegm.so, libopencv_bioinspired.so, libopencv_calib3d.so, libopencv_ccalib.so, libopencv_core.so, libopencv_datasets.so, libopencv_dnn_objdetect.so, libopencv_dnn.so, libopencv_dnn_superres.so, libopencv_dpm.so, libopencv_face.so, libopencv_features2d.so, libopencv_flann.so, libopencv_freetype.so, libopencv_fuzzy.so, libopencv_gapi.so, libopencv_hfs.so, libopencv_highgui.so, libopencv_imgcodecs.so, libopencv_img_hash.so, libopencv_imgproc.so, libopencv_intensity_transform.so, libopencv_line_descriptor.so, libopencv_mcc.so, libopencv_ml.so, libopencv_objdetect.so, libopencv_optflow.so, libopencv_phase_unwrapping.so, libopencv_photo.so, libopencv_plot.so, libopencv_quality.so, libopencv_rapid.so, libopencv_reg.so, libopencv_rgbd.so, libopencv_saliency.so, libopencv_shape.so, libopencv_signal.so, libopencv_stereo.so, libopencv_stitching.so, libopencv_structured_light.so, libopencv_superres.so, libopencv_surface_matching.so, libopencv_text.so, libopenct_tracking.so, libopencv_video.so, libopencv_videoio.so, libopencv_videostage.so, libopencv_wechat_qrcode.so, libopencv_xfeatures2d.so, libopencv_ximgproc.so, libopencv_xobjdetect.so, and libopencv_xphoto.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">/usr/include/opencv4, /usr/lib/cmake/opencv4, /usr/lib/python3.14/site-packages/cv2, /usr/share/licenses/opencv4, /usr/share/opencv4, and /usr/share/java/opencv4</span>
</div>
</div>
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](newt.md "newt-0.52.25")

    newt-0.52.25

-   [Next](openjpeg2.md "OpenJPEG-2.5.4")

    OpenJPEG-2.5.4

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
