::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](vulkan-headers.md "Vulkan-Headers-1.4.350.0"){accesskey="p"}

    Vulkan-Headers-1.4.350.0

-   [Next](webkitgtk.md "WebKitGTK-2.52.0"){accesskey="n"}

    WebKitGTK-2.52.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#vulkan-loader}Vulkan-Loader-1.4.350.0 {#vulkan-loader-1.4.350.0 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Vulkan-Loader {#introduction-to-vulkan-loader .sect2}

The [Vulkan-Loader]{.application} package contains a library which provides the Vulkan API and provides core support for graphics drivers for Vulkan.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/KhronosGroup/Vulkan-Loader/archive/vulkan-sdk-1.4.350.0/Vulkan-Loader-vulkan-sdk-1.4.350.0.tar.gz](https://github.com/KhronosGroup/Vulkan-Loader/archive/vulkan-sdk-1.4.350.0/Vulkan-Loader-vulkan-sdk-1.4.350.0.tar.gz){.ulink}

-   Download MD5 sum: 6ec91c673b48bbdffc923cce9d6a1a85

-   Download size: 1.7 MB

-   Estimated disk space required: 143 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
:::

### Vulkan-loader Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}, [Vulkan-Headers-1.4.350.0](vulkan-headers.md "Vulkan-Headers-1.4.350.0"){.xref}, and [Xorg Libraries](x7lib.md "Xorg Libraries"){.xref}

#### Recommended

[Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref}

#### Recommended (Runtime)

[Mesa-26.0.7](mesa.md "Mesa-26.0.7"){.xref} (for Vulkan drivers)

#### Optional (for testing)

[git-2.54.0](../general/git.md "Git-2.54.0"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
::::::

:::: {.installation lang="en"}
## Installation of Vulkan-Loader {#installation-of-vulkan-loader .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If this package is being installed on a system where Mesa has already been installed previously, please rebuild [Mesa-26.0.7](mesa.md "Mesa-26.0.7"){.xref} after this package to install Vulkan graphics drivers.
:::

Install [Vulkan-Loader]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr   \
      -D CMAKE_BUILD_TYPE=Release    \
      -D CMAKE_SKIP_INSTALL_RPATH=ON \
      -G Ninja .. &&
ninja
```

To run the test suite, issue (note that the command will use [git-2.54.0](../general/git.md "Git-2.54.0"){.xref} to download a copy of GoogleTest for building the test suite):

``` userinput
sed "s/'git', 'clone'/&, '--depth=1', '-b', self.commit/" \
    -i ../scripts/update_deps.py &&
cmake -D BUILD_TESTS=ON -D UPDATE_DEPS=ON .. &&
ninja &&
ninja test
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

`-D BUILD_WSI_WAYLAND_SUPPORT=OFF`{.option}: This option allows building without [Wayland-1.25.0](../general/wayland.md "Wayland-1.25.0"){.xref} support.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libvulkan.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/cmake/VulkanLoader]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ---------------------------------------------------------------
  []{#libvulkan}[`libvulkan.so`{.filename}]{.term}   provides the Vulkan API and core support for graphics drivers
  -------------------------------------------------- ---------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](vulkan-headers.md "Vulkan-Headers-1.4.350.0"){accesskey="p"}

    Vulkan-Headers-1.4.350.0

-   [Next](webkitgtk.md "WebKitGTK-2.52.0"){accesskey="n"}

    WebKitGTK-2.52.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
