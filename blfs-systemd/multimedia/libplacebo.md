::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](libogg.md "libogg-1.3.6"){accesskey="p"}

    libogg-1.3.6

-   [Next](libsamplerate.md "libsamplerate-0.2.2"){accesskey="n"}

    libsamplerate-0.2.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libplacebo}libplacebo-7.360.1 {#libplacebo-7.360.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libplacebo {#introduction-to-libplacebo .sect2}

The [libplacebo]{.application} package contains a library for processing image and video primitives and shaders. It also includes a high quality rendering pipeline that supports OpenGL and Vulkan.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/haasn/libplacebo/archive/v7.360.1/libplacebo-7.360.1.tar.gz](https://github.com/haasn/libplacebo/archive/v7.360.1/libplacebo-7.360.1.tar.gz){.ulink}

-   Download MD5 sum: e0fa1b52f8d7b7ba51373e9a639ca966

-   Download size: 844 KB

-   Estimated disk space required: 38 MB

-   Estimated build time: 0.2 SBU (With tests)
:::

### libplacebo Dependencies

#### Required

[Glad-2.0.8](../general/glad.md "Glad-2.0.8"){.xref}

#### Recommended

[Glslang-16.3.0](../x/glslang.md "glslang-16.3.0"){.xref} and [Vulkan-Loader-1.4.350.0](../x/vulkan-loader.md "Vulkan-Loader-1.4.350.0"){.xref}

#### Optional

[Little CMS-2.19.1](../general/lcms2.md "Little CMS-2.19.1"){.xref} [libunwind-1.8.3](../general/libunwind.md "libunwind-1.8.3"){.xref}, [dovi_tool](https://github.com/quietvoid/dovi_tool/){.ulink}, [Nuklear](https://github.com/Immediate-Mode-UI/Nuklear){.ulink}, and [xxHash](https://github.com/Cyan4973/xxHash){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libplacebo {#installation-of-libplacebo .sect2}

Install [libplacebo]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D tests=true       \
      -D demos=false      &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D demos=false`*: This switch disables building the demo programs because building [plplay]{.application} is currently broken.

*`-D tests=true`*: This switch enables building the code necessary to run the tests.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libplacebo.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libplacebo]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
  []{#libplacebo-lib}[`libplacebo.so`{.filename}]{.term}   processes image and video primitives and shaders and provides a high quality rendering pipeline for OpenGL and Vulkan
  -------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libogg.md "libogg-1.3.6"){accesskey="p"}

    libogg-1.3.6

-   [Next](libsamplerate.md "libsamplerate-0.2.2"){accesskey="n"}

    libsamplerate-0.2.2

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
