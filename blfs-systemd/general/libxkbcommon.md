::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libuv.md "libuv-1.52.1"){accesskey="p"}

    libuv-1.52.1

-   [Next](libxml2.md "libxml2-2.15.3"){accesskey="n"}

    libxml2-2.15.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libxkbcommon}libxkbcommon-1.13.2 {#libxkbcommon-1.13.2 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libxkbcommon {#introduction-to-libxkbcommon .sect2}

[libxkbcommon]{.application} is a keymap compiler and support library which processes a reduced subset of keymaps as defined by the XKB specification.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/lfs-book/libxkbcommon/archive/v1.13.2/libxkbcommon-1.13.2.tar.gz](https://github.com/lfs-book/libxkbcommon/archive/v1.13.2/libxkbcommon-1.13.2.tar.gz){.ulink}

-   Download MD5 sum: 07f838f575d62c267cfc53eaf5ee739b

-   Download size: 1.2 MB

-   Estimated disk space required: 45 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

On GitHub we've forked the upstream repository into our own `lfs-book`{.literal} namespace and recreated a tag for the release. This is done to ensure the downloaded tarball file name to be correct and consistent (i.e. it shouldn't change when using the browser instead of a tool like [**wget**]{.command}). Our tag and the upstream release tag are on the same commit, so we've not introduced any change to the tarball content except the name of its top-level directory (that Git does not track).
:::

### libxkbcommon Dependencies

#### Required

[xkeyboard-config-2.47](../x/xkeyboard-config.md "XKeyboardConfig-2.47"){.xref} (runtime)

#### Recommended

[libxcb-1.17.0](../x/libxcb.md "libxcb-1.17.0"){.xref}, [Wayland-1.25.0](wayland.md "Wayland-1.25.0"){.xref}, and [wayland-protocols-1.48](wayland-protocols.md "Wayland-Protocols-1.48"){.xref}

#### Optional

[Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} (for generating the documentation) and [**Xvfb**]{.command} (from [Xorg-Server-21.1.23](../x/xorg-server.md "Xorg-Server-21.1.23"){.xref} or [Xwayland-24.1.12](../x/xwayland.md "Xwayland-24.1.12"){.xref})
::::::

::: {.installation lang="en"}
## Installation of libxkbcommon {#installation-of-libxkbcommon .sect2}

Install [libxkbcommon]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..             \
      --prefix=/usr        \
      --buildtype=release  \
      -D enable-docs=false &&
ninja
```

To test the results, ensure [**Xvfb**]{.command} and [xkeyboard-config-2.47](../x/xkeyboard-config.md "XKeyboardConfig-2.47"){.xref} are available, then issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D enable-docs=true`{.option}: This switch enables documentation generation. [Doxygen-1.17.0](doxygen.md "Doxygen-1.17.0"){.xref} is required.

[**mv -v /usr/share/doc/libxkbcommon{,-1.13.2}**]{.command}: If you built the documentation, use this command to install it in a versioned directory.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xkbcli]{.segbody}
:::

::: seg
**Installed Libraries:** [libxkbcommon.so, libxkbcommon-x11.so, and libxkbregistry.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/xkbcommon, /usr/libexec/xkbcommon, and (optionally) /usr/share/doc/libxkbcommon-1.13.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- ------------------------------------------------------------------------------------
  []{#xkbcli}[[**xkbcli**]{.command}]{.term}                       provides a debugger and compiler for XKB keymaps
  []{#libxkbcommon-lib}[`libxkbcommon.so`{.filename}]{.term}       contains the [libxkbcommon]{.application} API functions
  []{#libxkbcommon-x11}[`libxkbcommon-x11.so`{.filename}]{.term}   contains the [libxkbcommon]{.application} X11 specific API functions
  []{#libxkbregistry}[`libxkbregistry.so`{.filename}]{.term}       contains a list of available XKB models, layouts, and variants for a given ruleset
  ---------------------------------------------------------------- ------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](libuv.md "libuv-1.52.1"){accesskey="p"}

    libuv-1.52.1

-   [Next](libxml2.md "libxml2-2.15.3"){accesskey="n"}

    libxml2-2.15.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
