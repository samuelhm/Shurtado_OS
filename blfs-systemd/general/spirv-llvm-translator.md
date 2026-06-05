::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](spirv-tools.md "SPIRV-Tools-1.4.350.0"){accesskey="p"}

    SPIRV-Tools-1.4.350.0

-   [Next](talloc.md "Talloc-2.4.4"){accesskey="n"}

    Talloc-2.4.4

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#spirv-llvm-translator}SPIRV-LLVM-Translator-22.1.2 {#spirv-llvm-translator-22.1.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to SPIRV-LLVM-Translator {#introduction-to-spirv-llvm-translator .sect2}

The [SPIRV-LLVM-Translator]{.application} package contains a library and utility for converting between LLVM IR and SPIR-V code. This package currently only supports the OpenCL/Compute version of SPIR-V.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/KhronosGroup/SPIRV-LLVM-Translator/archive/v22.1.2/SPIRV-LLVM-Translator-22.1.2.tar.gz](https://github.com/KhronosGroup/SPIRV-LLVM-Translator/archive/v22.1.2/SPIRV-LLVM-Translator-22.1.2.tar.gz){.ulink}

-   Download MD5 sum: dce62f7bc40d7ff4e89d0d38fe62804a

-   Download size: 1.8 MB

-   Estimated disk space required: 47 MB

-   Estimated build time: 0.5 SBU (with parallelism=4)
:::

### SPIRV-LLVM-Translator Dependencies

#### Required

[libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}, [LLVM-22.1.0](llvm.md "LLVM-22.1.0"){.xref}, and [SPIRV-Tools-1.4.350.0](spirv-tools.md "SPIRV-Tools-1.4.350.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of SPIRV-LLVM-Translator {#installation-of-spirv-llvm-translator .sect2}

Install [SPIRV-LLVM-Translator]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr                   \
      -D CMAKE_BUILD_TYPE=Release                    \
      -D BUILD_SHARED_LIBS=ON                        \
      -D CMAKE_SKIP_INSTALL_RPATH=ON                 \
      -D LLVM_EXTERNAL_SPIRV_HEADERS_SOURCE_DIR=/usr \
      -G Ninja ..                                    &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D BUILD_SHARED_LIBS=ON`*: This parameter forces building shared versions of the libraries.

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

*`-D LLVM_EXTERNAL_SPIRV_HEADERS_SOURCE_DIR=/usr`*: This parameter allows the build system to use the version of SPIRV-Headers that should have been installed as a dependency of SPIRV-Tools, instead of redownloading an unnecessary copy of the headers.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [llvm-spirv]{.segbody}
:::

::: seg
**Installed Libraries:** [libLLVMSPIRVLib.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/LLVMSPIRVLib]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- -----------------------------------------------------------------
  []{#llvm-spirv}[[**llvm-spirv**]{.command}]{.term}             converts between LLVM IR and SPIR-V code
  []{#libLLVMSPIRVLib}[`libLLVMSPIRVLib.so`{.filename}]{.term}   contains functions that convert between LLVM IR and SPIR-V code
  -------------------------------------------------------------- -----------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](spirv-tools.md "SPIRV-Tools-1.4.350.0"){accesskey="p"}

    SPIRV-Tools-1.4.350.0

-   [Next](talloc.md "Talloc-2.4.4"){accesskey="n"}

    Talloc-2.4.4

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
