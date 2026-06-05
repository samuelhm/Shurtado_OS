::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](spidermonkey.md "SpiderMonkey from firefox-140.11.0"){accesskey="p"}

    SpiderMonkey from firefox-140.11.0

-   [Next](spirv-tools.md "SPIRV-Tools-1.4.350.0"){accesskey="n"}

    SPIRV-Tools-1.4.350.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#spirv-headers}SPIRV-Headers-1.4.350.0 {#spirv-headers-1.4.350.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to SPIRV-Headers {#introduction-to-spirv-headers .sect2}

The [SPIRV-Headers]{.application} package contains headers that allow for applications to use the SPIR-V language and instruction set with Vulkan. SPIR-V is a binary intermediate language for representing graphical shader stages and compute kernels for multiple Khronos APIs, including OpenGL and Vulkan.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/KhronosGroup/SPIRV-Headers/archive/vulkan-sdk-1.4.350.0/SPIRV-Headers-vulkan-sdk-1.4.350.0.tar.gz](https://github.com/KhronosGroup/SPIRV-Headers/archive/vulkan-sdk-1.4.350.0/SPIRV-Headers-vulkan-sdk-1.4.350.0.tar.gz){.ulink}

-   Download MD5 sum: ffbac822da003ffc194d67cef4a6c1d6

-   Download size: 556 KB

-   Estimated disk space required: 4.7 MB

-   Estimated build time: less than 0.1 SBU
:::

### SPIRV-Headers Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of SPIRV-Headers {#installation-of-spirv-headers .sect2}

Install [SPIRV-Headers]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr -G Ninja .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/spirv and /usr/share/cmake/SPIRV-Headers]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](spidermonkey.md "SpiderMonkey from firefox-140.11.0"){accesskey="p"}

    SpiderMonkey from firefox-140.11.0

-   [Next](spirv-tools.md "SPIRV-Tools-1.4.350.0"){accesskey="n"}

    SPIRV-Tools-1.4.350.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
