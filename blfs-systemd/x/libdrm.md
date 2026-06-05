::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libhandy1.md "libhandy-1.8.3"){accesskey="p"}

    libhandy-1.8.3

-   [Next](libepoxy.md "libepoxy-1.5.10"){accesskey="n"}

    libepoxy-1.5.10

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libdrm}Libdrm-2.4.134 {#libdrm-2.4.134 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Libdrm {#introduction-to-libdrm .sect2}

[Libdrm]{.application} provides a userspace library for accessing the direct rendering manager (DRM) on operating systems that support the ioctl interface. Libdrm is a low-level library, typically used by graphics drivers such as the Mesa DRI drivers, the X drivers, libva and similar projects.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://dri.freedesktop.org/libdrm/libdrm-2.4.134.tar.xz](https://dri.freedesktop.org/libdrm/libdrm-2.4.134.tar.xz){.ulink}

-   Download MD5 sum: 0e70607bb5c2f7ecbc411e6a2fab8b22

-   Download size: 428 KB

-   Estimated disk space required: 7.8 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### libdrm Dependencies

#### Recommended

[Xorg Libraries](x7lib.md "Xorg Libraries"){.xref} (for Intel KMS API support required by Mesa)

#### Optional

[Cairo-1.18.4](cairo.md "Cairo-1.18.4"){.xref} (for tests), [CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref} (could be used to find dependencies without pkgconfig files), [docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref}, [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref}, [docutils-0.23](../general/python-modules.md#docutils "docutils-0.23"){.xref}, and [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref} (to build manual pages), [libatomic_ops-7.10.0](../general/libatomic_ops.md "libatomic_ops-7.10.0"){.xref} (required by architectures without native atomic operations), [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}, and [CUnit](https://cunit.sourceforge.net/){.ulink} (for AMDGPU tests)
:::::

::: {.installation lang="en"}
## Installation of Libdrm {#installation-of-libdrm .sect2}

Install [libdrm]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=$XORG_PREFIX \
            --buildtype=release   \
            -D udev=true          \
            -D valgrind=disabled  \
            ..                    &&
ninja
```

To check the results, issue [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D udev=true`*: This parameter enables support for using [Udev]{.application} instead of [**mknod**]{.command}.

*`-D valgrind=disabled`*: This parameter disables building libdrm with valgrind support. This fixes building some packages that use libdrm. Change this parameter to "enabled" (or remove it) if you need support for valgrind.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libdrm_amdgpu.so, libdrm_intel.so, libdrm_nouveau.so, libdrm_radeon.so, and libdrm.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libdrm and /usr/share/libdrm]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------------------------------
  []{#libdrm_amdgpu}[`libdrm_amdgpu.so`{.filename}]{.term}     contains the AMDGPU specific Direct Rendering Manager functions
  []{#libdrm_intel}[`libdrm_intel.so`{.filename}]{.term}       contains the Intel specific Direct Rendering Manager functions
  []{#libdrm_nouveau}[`libdrm_nouveau.so`{.filename}]{.term}   contains the open source nVidia (Nouveau) specific Direct Rendering Manager functions
  []{#libdrm_radeon}[`libdrm_radeon.so`{.filename}]{.term}     contains the AMD Radeon specific Direct Rendering Manager functions
  []{#libdrm-lib}[`libdrm.so`{.filename}]{.term}               contains the Direct Rendering Manager API functions
  ------------------------------------------------------------ ---------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libhandy1.md "libhandy-1.8.3"){accesskey="p"}

    libhandy-1.8.3

-   [Next](libepoxy.md "libepoxy-1.5.10"){accesskey="n"}

    libepoxy-1.5.10

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
