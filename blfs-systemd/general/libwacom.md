::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libxslt.md "libxslt-1.1.45"){accesskey="p"}

    libxslt-1.1.45

-   [Next](libyaml.md "libyaml-0.2.5"){accesskey="n"}

    libyaml-0.2.5

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libwacom}libwacom-2.19.0 {#libwacom-2.19.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libwacom {#introduction-to-libwacom .sect2}

The [libwacom]{.application} package contains a library used to identify graphics tablets from Wacom or various other vendors and their model-specific features.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/linuxwacom/libwacom/releases/download/libwacom-2.19.0/libwacom-2.19.0.tar.xz](https://github.com/linuxwacom/libwacom/releases/download/libwacom-2.19.0/libwacom-2.19.0.tar.xz){.ulink}

-   Download MD5 sum: 471f8da9fc4ff7adc5463d34cc657e4f

-   Download size: 184 KB

-   Estimated disk space required: 12 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::

### libwacom Dependencies

#### Required

[libevdev-1.13.6](../x/x7driver.md#libevdev "libevdev 1.13.6"){.xref} and [libgudev-238](libgudev.md "libgudev-238"){.xref}

#### Recommended

[libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref}, [git-2.54.0](git.md "Git-2.54.0"){.xref}, [librsvg-2.62.3](librsvg.md "librsvg-2.62.3"){.xref}, [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref} (optional for some tests), and [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} with [python-libevdev](https://pypi.org/project/libevdev/){.ulink} and [pyudev](https://pypi.org/project/pyudev/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of libwacom {#installation-of-libwacom .sect2}

Install [libwacom]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..            \
      --prefix=/usr       \
      --buildtype=release \
      -D tests=disabled   &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. To run additional tests, install [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref}, python-libevdev, and pyudev, then remove the "-D tests=disabled" option from the meson line above.

If upgrading from a previous version of libwacom, remove the old device database installation to prevent a potential duplicated match of devices in case some old database files are not overwritten:

``` root
rm -rf /usr/share/libwacom
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

*`-D tests=disabled`*: This parameter disables some of the more advanced tests because they require [pytest-9.0.3](python-modules.md#pytest "Pytest-9.0.3"){.xref} and other two Python modules beyond the scope of BLFS to work properly.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [libwacom-list-devices, libwacom-list-local-devices, libwacom-show-stylus, and libwacom-update-db]{.segbody}
:::

::: seg
**Installed Libraries:** [libwacom.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libwacom-1.0 and /usr/share/libwacom]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------------------------------- ----------------------------------------------------------------------
  []{#libwacom-list-devices}[[**libwacom-list-devices**]{.command}]{.term}               lists all tablet devices that are supported by libwacom
  []{#libwacom-list-local-devices}[[**libwacom-list-local-devices**]{.command}]{.term}   lists tablet devices that are connected to the system
  []{#libwacom-show-stylus}[[**libwacom-show-stylus**]{.command}]{.term}                 lists tablet stylus IDs
  []{#libwacom-update-db}[[**libwacom-update-db**]{.command}]{.term}                     updates the system according to the current set of tablet data files
  []{#libwacom-lib}[`libwacom.so`{.filename}]{.term}                                     contains functions used for accessing Wacom information
  -------------------------------------------------------------------------------------- ----------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libxslt.md "libxslt-1.1.45"){accesskey="p"}

    libxslt-1.1.45

-   [Next](libyaml.md "libyaml-0.2.5"){accesskey="n"}

    libyaml-0.2.5

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
