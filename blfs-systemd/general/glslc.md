::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](editorconfig-core-c.md "editorconfig-core-c-0.12.11"){accesskey="p"}

    editorconfig-core-c-0.12.11

-   [Next](graphviz.md "Graphviz-15.0.0"){accesskey="n"}

    Graphviz-15.0.0

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#glslc}glslc from shaderc-2026.2 {#glslc-from-shaderc-2026.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to glslc {#introduction-to-glslc .sect2}

The [glslc]{.application} program is Google's command line compiler for OpenGL Shading Language/High Level Shading Language (GLSL/HLSL) to Standard Portable Intermediate Representation (SPIR-V).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/google/shaderc/archive/v2026.2/shaderc-2026.2.tar.gz](https://github.com/google/shaderc/archive/v2026.2/shaderc-2026.2.tar.gz){.ulink}

-   Download MD5 sum: 3a6c42c237a3a6f40f076c7ee366ec29

-   Download size: 224 KB

-   Estimated disk space required: 3.8 MB

-   Estimated build time: less than 0.1 SBU
:::

### Glslc Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}, [Glslang-16.3.0](../x/glslang.md "glslang-16.3.0"){.xref}, and [SPIRV-Tools-1.4.350.0](spirv-tools.md "SPIRV-Tools-1.4.350.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of glslc {#installation-of-glslc .sect2}

First, allow building with system [Glslang-16.3.0](../x/glslang.md "glslang-16.3.0"){.xref} and [SPIRV-Tools-1.4.350.0](spirv-tools.md "SPIRV-Tools-1.4.350.0"){.xref}:

``` userinput
sed '/build-version/d'   -i glslc/CMakeLists.txt            &&
sed '/third_party/d'     -i CMakeLists.txt                  &&
sed 's|SPIRV|glslang/&|' -i libshaderc_util/src/compiler.cc &&

echo '"2026.2"' > glslc/src/build-version.inc
```

Now install [glslc]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D SHADERC_SKIP_TESTS=ON     \
      -G Ninja ..
ninja glslc/glslc
```

Now, as the `root`{.systemitem} user:

``` root
install -vm755 glslc/glslc /usr/bin
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [glslc]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------- --------------------------------------------------------------------------------------------
  []{#glslc-prog}[[**glslc**]{.command}]{.term}   compiles OpenGL Shading Language/High Level Shading Language (GLSL/HLSL) shaders to SPIR-V
  ----------------------------------------------- --------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](editorconfig-core-c.md "editorconfig-core-c-0.12.11"){accesskey="p"}

    editorconfig-core-c-0.12.11

-   [Next](graphviz.md "Graphviz-15.0.0"){accesskey="n"}

    Graphviz-15.0.0

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
