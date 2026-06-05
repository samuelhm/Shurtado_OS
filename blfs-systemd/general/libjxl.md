::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libjpeg.md "libjpeg-turbo-3.1.4.1"){accesskey="p"}

    libjpeg-turbo-3.1.4.1

-   [Next](libmng.md "libmng-2.0.3"){accesskey="n"}

    libmng-2.0.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libjxl}libjxl-0.11.2 {#libjxl-0.11.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libjxl {#introduction-to-libjxl .sect2}

The [libjxl]{.application} package contains the reference implementation of the JPEG XL image format.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/libjxl/libjxl/archive/v0.11.2/libjxl-0.11.2.tar.gz](https://github.com/libjxl/libjxl/archive/v0.11.2/libjxl-0.11.2.tar.gz){.ulink}

-   Download MD5 sum: eda39db6e7a58b73be9124381862b9d1

-   Download size: 1.8 MB

-   Estimated disk space required: 68 MB

-   Estimated build time: 1.0 SBU (with parallelism=4)
:::

### libjxl Dependencies

#### Required

[Brotli-1.2.0](brotli.md "brotli-1.2.0"){.xref}, [CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}, [giflib-6.1.3](giflib.md "giflib-6.1.3"){.xref}, [highway-1.4.0](highway.md "highway-1.4.0"){.xref}, [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}, [libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, and [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}

#### Optional

[asciidoc-10.2.1](python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} (for man pages), [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} and [Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref} (for documentation), [gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref} (for the plugin), [Java-21.0.10](java.md "Java-21.0.10"){.xref} (for the JAR), [libavif-1.4.2](libavif.md "libavif-1.4.2"){.xref}, [libwebp-1.6.0](libwebp.md "libwebp-1.6.0"){.xref}, [gtest](https://github.com/google/googletest){.ulink}, [OpenEXR](https://www.openexr.com/){.ulink}, [sjpeg](https://github.com/webmproject/sjpeg){.ulink}, and [skcms](https://skia.googlesource.com/skcms/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libjxl {#installation-of-libjxl .sect2}

Install [libjxl]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr             \
      -D CMAKE_BUILD_TYPE=Release              \
      -D BUILD_TESTING=OFF                     \
      -D BUILD_SHARED_LIBS=ON                  \
      -D JPEGXL_ENABLE_SKCMS=OFF               \
      -D JPEGXL_ENABLE_SJPEG=OFF               \
      -D JPEGXL_ENABLE_PLUGINS=OFF             \
      -D JPEGXL_INSTALL_JARDIR=/usr/share/java \
      -G Ninja ..                              &&
ninja
```

This package does come with a test suite, but it requires [gtest](https://github.com/google/googletest){.ulink}, which is not in BLFS.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D BUILD_TESTING=OFF`*: This parameter disables the tests because they require [gtest](https://github.com/google/googletest){.ulink}, which is not in BLFS. If you wish to run the tests and have [gtest](https://github.com/google/googletest){.ulink} installed, remove this parameter.

*`-D BUILD_SHARED_LIBS=ON`*: This parameter enables building shared versions of the libraries instead of static ones.

*`-D JPEGXL_ENABLE_SKCMS=OFF`*: This parameter disables building support for Skia's [skcms]{.application} since it is not necessary for BLFS purposes and requires [skcms](https://skia.googlesource.com/skcms/){.ulink}.

*`-D JPEGXL_ENABLE_SJPEG=OFF`*: This parameter disables support for SimpleJPEG since it is not necessary for BLFS purposes and requires [sjpeg](https://github.com/webmproject/sjpeg){.ulink}.

*`-D JPEGXL_ENABLE_PLUGINS=OFF`*: This parameter disables building the JPEG XL loader plugins for GIMP and gdk-pixbuf. The GIMP plugin isn't compatible with the GIMP version in the book, and the gdk-pixbuf plugin is useless when gdk-pixbuf is built with its recommended dependency glycin.

*`-D JPEGXL_INSTALL_JARDIR=/usr/share/java`*: This parameter places the JAR file for JPEG XL support in the correct directory if [Java-21.0.10](java.md "Java-21.0.10"){.xref} is installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [benchmark_xl, cjxl, djxl, and jxlinfo]{.segbody}
:::

::: seg
**Installed Libraries:** [libjxl.so, libjxl_cms.so, libjxl_extras_codec.a, libjxl_jni.so, and libjxl_threads.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/jxl]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
  []{#benchmark_xl}[[**benchmark_xl**]{.command}]{.term}                 runs performance benchmarks against libjxl
  []{#cjxl}[[**cjxl**]{.command}]{.term}                                 compresses images into JPEG XL format
  []{#djxl}[[**djxl**]{.command}]{.term}                                 decompresses images from JPEG XL format into other formats
  []{#jxlinfo}[[**jxlinfo**]{.command}]{.term}                           displays information about JPEG XL images
  []{#libjxl-lib}[`libjxl.so`{.filename}]{.term}                         contains the reference implementation of the JPEG XL standard
  []{#libjxl_cms}[`libjxl_cms.so`{.filename}]{.term}                     contains support for Little CMS in libjxl
  []{#libjxl_extras_codec}[`libjxl_extras_codec.a`{.filename}]{.term}    contains additional codec support for JPEG XL images
  []{#libjxl_jni}[`libjxl_jni.so`{.filename}]{.term}                     contains a Java interface to support JPEG XL on systems where [Java-21.0.10](java.md "Java-21.0.10"){.xref} was installed at build time
  []{#libjxl_threads}[`libjxl_threads.so`{.filename}]{.term}             contains threading functions for JPEG XL
  []{#libpixbufloader-jxl}[`libpixbufloader-jxl.so`{.filename}]{.term}   contains a loader for gdk-pixbuf to allow it to load JPEG XL images
  ---------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libjpeg.md "libjpeg-turbo-3.1.4.1"){accesskey="p"}

    libjpeg-turbo-3.1.4.1

-   [Next](libmng.md "libmng-2.0.3"){accesskey="n"}

    libmng-2.0.3

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
