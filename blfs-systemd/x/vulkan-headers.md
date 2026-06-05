::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](startup-notification.md "startup-notification-0.12"){accesskey="p"}

    startup-notification-0.12

-   [Next](vulkan-loader.md "Vulkan-Loader-1.4.350.0"){accesskey="n"}

    Vulkan-Loader-1.4.350.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#vulkan-headers}Vulkan-Headers-1.4.350.0 {#vulkan-headers-1.4.350.0 .sect1}

::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Vulkan-Headers {#introduction-to-vulkan-headers .sect2}

The [Vulkan-Headers]{.application} package contains a set of header files necessary to build and link applications against the Vulkan API.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/KhronosGroup/Vulkan-Headers/archive/vulkan-sdk-1.4.350.0/Vulkan-Headers-vulkan-sdk-1.4.350.0.tar.gz](https://github.com/KhronosGroup/Vulkan-Headers/archive/vulkan-sdk-1.4.350.0/Vulkan-Headers-vulkan-sdk-1.4.350.0.tar.gz){.ulink}

-   Download MD5 sum: 74d68465ca2ef442397dc159edaa3b9c

-   Download size: 3.1 MB

-   Estimated disk space required: 80 MB

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### Vulkan-Headers Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Vulkan-Headers {#installation-of-vulkan-headers .sect2}

Install [Vulkan-Headers]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr -G Ninja .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

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
**Installed Directories:** [/usr/include/vk_video, /usr/include/vulkan, /usr/share/cmake/VulkanHeaders, and /usr/share/vulkan]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::

::: navfooter
-   [Prev](startup-notification.md "startup-notification-0.12"){accesskey="p"}

    startup-notification-0.12

-   [Next](vulkan-loader.md "Vulkan-Loader-1.4.350.0"){accesskey="n"}

    Vulkan-Loader-1.4.350.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
