::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](glew.md "GLEW-2.3.1"){accesskey="p"}

    GLEW-2.3.1

-   [Next](glu.md "GLU-9.0.3"){accesskey="n"}

    GLU-9.0.3

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#glslang}glslang-16.3.0 {#glslang-16.3.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Glslang {#introduction-to-glslang .sect2}

The [Glslang]{.application} package contains an frontend and validator for OpenGL, OpenGL ES, and Vulkan shaders.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/KhronosGroup/glslang/archive/16.3.0/glslang-16.3.0.tar.gz](https://github.com/KhronosGroup/glslang/archive/16.3.0/glslang-16.3.0.tar.gz){.ulink}

-   Download MD5 sum: 0349062b47bb09f153b748506740711b

-   Download size: 4.2 MB

-   Estimated disk space required: 186 MB (with tests)

-   Estimated build time: 0.4 SBU (with parallelism=4; with tests)
:::

### Glslang Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref} and [SPIRV-Tools-1.4.350.0](../general/spirv-tools.md "SPIRV-Tools-1.4.350.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Glslang {#installation-of-glslang .sect2}

Install [Glslang]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr     \
      -D CMAKE_BUILD_TYPE=Release      \
      -D ALLOW_EXTERNAL_SPIRV_TOOLS=ON \
      -D BUILD_SHARED_LIBS=ON          \
      -D GLSLANG_TESTS=ON              \
      -G Ninja .. &&
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

*`-D ALLOW_EXTERNAL_SPIRV_TOOLS=ON`*: This switch allows the build system to use the system-installed copy of [SPIRV-Tools-1.4.350.0](../general/spirv-tools.md "SPIRV-Tools-1.4.350.0"){.xref}, instead of downloading and installing it's own copy.

*`-D BUILD_SHARED_LIBS=ON`*: This switch builds shared versions of the libraries, and does not install static versions of them.

*`-D GLSLANG_TESTS=ON`*: This switch builds the tests for the package.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [glslang and glslang-validator (symlink to glslang)]{.segbody}
:::

::: seg
**Installed Libraries:** [libglslang.so, libglslang-default-resource-limits.so, and libSPIRV.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/glslang and /usr/lib/cmake/glslang]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
  []{#glslang-prog}[[**glslang**]{.command}]{.term}    provides a front end and validator for OpenGL, OpenGL ES, and Vulkan shaders
  []{#libglslang}[`libglslang.so`{.filename}]{.term}   contains functions that provide a front-end and validator for OpenGL, OpenGL ES, and Vulkan shaders to other programs
  []{#libSPIRV}[`libSPIRV.so`{.filename}]{.term}       provides a front-end and generator for SPIR-V binaries
  ---------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](glew.md "GLEW-2.3.1"){accesskey="p"}

    GLEW-2.3.1

-   [Next](glu.md "GLU-9.0.3"){accesskey="n"}

    GLU-9.0.3

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
