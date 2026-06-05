::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libadwaita.md "libadwaita-1.9.1"){accesskey="p"}

    libadwaita-1.9.1

-   [Next](libhandy1.md "libhandy-1.8.3"){accesskey="n"}

    libhandy-1.8.3

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libei}libei-1.6.0 {#libei-1.6.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libei {#introduction-to-libei .sect2}

The [libei]{.application} package contains a set of libraries for handling emulated inputs. It is primarily aimed at the Wayland stack.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.freedesktop.org/libinput/libei/-/archive/1.6.0/libei-1.6.0.tar.bz2](https://gitlab.freedesktop.org/libinput/libei/-/archive/1.6.0/libei-1.6.0.tar.bz2){.ulink}

-   Download MD5 sum: 08186470213bdba5a4e58d322368f31d

-   Download size: 192 KB

-   Estimated disk space required: 7.0 MB

-   Estimated build time: less than 0.1 SBU
:::

### libei Dependencies

#### Optional

[libevdev-1.13.6](x7driver.md#libevdev "libevdev 1.13.6"){.xref}, [libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref}, [libxml2-2.15.3](../general/libxml2.md "libxml2-2.15.3"){.xref}, [munit](https://github.com/nemequ/munit){.ulink}, and [structlog](https://pypi.org/project/structlog/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libei {#installation-of-libei .sect2}

Install [libei]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release -D tests=disabled &&
ninja
```

This package does come with a test suite, but it requires an external dependency. If you have both [munit](https://github.com/nemequ/munit){.ulink} and [structlog](https://pypi.org/project/structlog/){.ulink} installed, and you wish to run the test suite, run the following commands:

``` userinput
meson configure -D tests=enabled &&
ninja test
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D tests=disabled`*: This switch avoids a dependency on [munit](https://github.com/nemequ/munit){.ulink}. Remove this switch if you have [munit]{.application} installed and wish to run the test suite.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libei.so, libeis.so, and liboeffis.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libei-1.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- -------------------------------------------------------------------------------------
  []{#libei-lib}[`libei.so`{.filename}]{.term}   provides a client side implementation for handling Emulated Input
  []{#libeis}[`libeis.so`{.filename}]{.term}     provides a server side implementation for handling Emulated Input
  []{#liboffis}[`liboffis`{.filename}]{.term}    provides DBus communication services between libei and the XDG RemoteDesktop portal
  ---------------------------------------------- -------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libadwaita.md "libadwaita-1.9.1"){accesskey="p"}

    libadwaita-1.9.1

-   [Next](libhandy1.md "libhandy-1.8.3"){accesskey="n"}

    libhandy-1.8.3

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
