::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](meson.md "Meson-1.11.1"){accesskey="p"}

    Meson-1.11.1

-   [Next](coreutils.md "Coreutils-9.11"){accesskey="n"}

    Coreutils-9.11

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-kmod}8.58. Kmod-34.2 {#kmod-34.2 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Kmod package contains libraries and utilities for loading kernel modules

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [6.7 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.58.1. Installation of Kmod {#installation-of-kmod .sect2}

Prepare Kmod for compilation:

``` userinput
mkdir -p build
cd       build

meson setup --prefix=/usr ..    \
            --buildtype=release \
            -D manpages=false
```

::: variablelist
**The meaning of the configure options:**

[*`-D manpages=false`*]{.term}

:   This option disables generating the man pages which requires an external program.
:::

Compile the package:

``` userinput
ninja
```

The test suite of this package requires raw kernel headers (not the ["[sanitized]{.quote}"]{.quote} kernel headers installed earlier), which are beyond the scope of LFS.

Now install the package:

``` userinput
ninja install
```
::::

:::::::: {.content lang="en"}
## []{#contents-kmod}8.58.2. Contents of Kmod {#contents-of-kmod .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [depmod (link to kmod), insmod (link to kmod), kmod, lsmod (link to kmod), modinfo (link to kmod), modprobe (link to kmod), and rmmod (link to kmod)]{.segbody}
:::

::: seg
**Installed library:** [libkmod.so]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#depmod}[[**depmod**]{.command}]{.term}       Creates a dependency file based on the symbols it finds in the existing set of modules; this dependency file is used by [**modprobe**]{.command} to automatically load the required modules
  []{#insmod}[[**insmod**]{.command}]{.term}       Installs a loadable module in the running kernel
  []{#kmod}[[**kmod**]{.command}]{.term}           Loads and unloads kernel modules
  []{#lsmod}[[**lsmod**]{.command}]{.term}         Lists currently loaded modules
  []{#modinfo}[[**modinfo**]{.command}]{.term}     Examines an object file associated with a kernel module and displays any information that it can glean
  []{#modprobe}[[**modprobe**]{.command}]{.term}   Uses a dependency file, created by [**depmod**]{.command}, to automatically load relevant modules
  []{#rmmod}[[**rmmod**]{.command}]{.term}         Unloads modules from the running kernel
  []{#libkmod}[`libkmod`{.filename}]{.term}        This library is used by other programs to load and unload kernel modules
  ------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::
::::::::::::::::

::: navfooter
-   [Prev](meson.md "Meson-1.11.1"){accesskey="p"}

    Meson-1.11.1

-   [Next](coreutils.md "Coreutils-9.11"){accesskey="n"}

    Coreutils-9.11

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
