::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](spirv-headers.md "SPIRV-Headers-1.4.350.0"){accesskey="p"}

    SPIRV-Headers-1.4.350.0

-   [Next](spirv-llvm-translator.md "SPIRV-LLVM-Translator-22.1.2"){accesskey="n"}

    SPIRV-LLVM-Translator-22.1.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#spirv-tools}SPIRV-Tools-1.4.350.0 {#spirv-tools-1.4.350.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to SPIRV-Tools {#introduction-to-spirv-tools .sect2}

The [SPIRV-Tools]{.application} package contains libraries and utilities for processing SPIR-V modules.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/KhronosGroup/SPIRV-Tools/archive/vulkan-sdk-1.4.350.0/SPIRV-Tools-vulkan-sdk-1.4.350.0.tar.gz](https://github.com/KhronosGroup/SPIRV-Tools/archive/vulkan-sdk-1.4.350.0/SPIRV-Tools-vulkan-sdk-1.4.350.0.tar.gz){.ulink}

-   Download MD5 sum: 98eb2b3150abc9b6555ffba9818d41b3

-   Download size: 3.3 MB

-   Estimated disk space required: 66 MB

-   Estimated build time: 0.6 SBU (with tests; both using parallelism=8)
:::

### SPIRV-Tools Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref} and [SPIRV-Headers-1.4.350.0](spirv-headers.md "SPIRV-Headers-1.4.350.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of SPIRV-Tools {#installation-of-spirv-tools .sect2}

Install [SPIRV-Tools]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr     \
      -D CMAKE_BUILD_TYPE=Release      \
      -D SPIRV_WERROR=OFF              \
      -D BUILD_SHARED_LIBS=ON          \
      -D SPIRV_TOOLS_BUILD_STATIC=OFF  \
      -D SPIRV-Headers_SOURCE_DIR=/usr \
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

*`-D SPIRV_WERROR=OFF`*: This switch stops the build system from treating warnings as errors.

*`-D BUILD_SHARED_LIBS=ON`*: This switch forces the build system to install shared libraries instead of static libraries.

*`-D SPIRV_TOOLS_BUILD_STATIC=OFF`*: This switch disables building static versions of the libraries.

*`-D SPIRV-Headers_SOURCE_DIR`*: This switch tells the build system that [SPIRV-Headers-1.4.350.0](spirv-headers.md "SPIRV-Headers-1.4.350.0"){.xref} is installed in /usr. This is needed since the build system tries to use a copy at `external/spirv-headers`{.filename} in the source directory by default and the copy is not shipped (i.e. you need to manually extract [SPIRV-Headers-1.4.350.0](spirv-headers.md "SPIRV-Headers-1.4.350.0"){.xref} there if you want to build with the copy).
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [spirv-as, spirv-cfg, spirv-dis, spirv-lesspipe.sh, spirv-link, spirv-lint, spirv-objdump, spirv-opt, spirv-reduce, and spirv-val]{.segbody}
:::

::: seg
**Installed Libraries:** [libSPIRV-Tools-diff.so, libSPIRV-Tools-link.so, libSPIRV-Tools-lint.so, libSPIRV-Tools-opt.so, libSPIRV-Tools-reduce.so, libSPIRV-Tools-shared.so, and libSPIRV-Tools.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/spirv-tools and /usr/lib/cmake/SPIRV-Tools]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ ----------------------------------------------------------
  []{#spirv-as}[[**spirv-as**]{.command}]{.term}                     creates a SPIR-V binary module from SPIR-V assembly text
  []{#spirv-cfg}[[**spirv-cfg**]{.command}]{.term}                   shows the control flow graph in "dot" format
  []{#spirv-dis}[[**spirv-dis**]{.command}]{.term}                   disassembles a SPIR-V binary module
  []{#spirv-lesspipe.sh}[[**spirv-lesspipe.sh**]{.command}]{.term}   automatically disassembles a .SPV file for 'less'
  []{#spirv-link}[[**spirv-link**]{.command}]{.term}                 links SPIR-V binary files together
  []{#spirv-lint}[[**spirv-lint**]{.command}]{.term}                 checks a SPIR-V binary module for errors
  []{#spirv-objdump}[[**spirv-objdump**]{.command}]{.term}           dumps information from a SPIR-V binary
  []{#spirv-opt}[[**spirv-opt**]{.command}]{.term}                   performs optimizations on SPIR-V binary files
  []{#spirv-reduce}[[**spirv-reduce**]{.command}]{.term}             reduces a SPIR-V binary file
  []{#spirv-val}[[**spirv-val**]{.command}]{.term}                   validates a SPIR-V binary file
  []{#libSPIRV-Tools}[`libSPIRV-Tools.so`{.filename}]{.term}         contains functions for processing SPIR-V modules
  ------------------------------------------------------------------ ----------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](spirv-headers.md "SPIRV-Headers-1.4.350.0"){accesskey="p"}

    SPIRV-Headers-1.4.350.0

-   [Next](spirv-llvm-translator.md "SPIRV-LLVM-Translator-22.1.2"){accesskey="n"}

    SPIRV-LLVM-Translator-22.1.2

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
