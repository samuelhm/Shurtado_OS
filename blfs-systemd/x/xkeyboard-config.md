::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 24. Graphical Environments

-   [Prev](x7font.md "Xorg Fonts"){accesskey="p"}

    Xorg Fonts

-   [Next](xwayland.md "Xwayland-24.1.12"){accesskey="n"}

    Xwayland-24.1.12

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xkeyboard-config}XKeyboardConfig-2.47 {#xkeyboardconfig-2.47 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to XKeyboardConfig {#introduction-to-xkeyboardconfig .sect2}

The [XKeyboardConfig]{.application} package contains the keyboard configuration database for the X Window System.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.x.org/pub/individual/data/xkeyboard-config/xkeyboard-config-2.47.tar.xz](https://www.x.org/pub/individual/data/xkeyboard-config/xkeyboard-config-2.47.tar.xz){.ulink}

-   Download MD5 sum: 01e92dfd1af2ac2cc2c808f0811d8f0c

-   Download size: 912 KB

-   Estimated disk space required: 35 MB

-   Estimated build time: 0.1 SBU (with tests)
:::

### XKeyboardConfig Dependencies

#### Required

[Xorg Libraries](x7lib.md "Xorg Libraries"){.xref}

#### Optional (required for tests)

[libxkbcommon-1.13.2](../general/libxkbcommon.md "libxkbcommon-1.13.2"){.xref}, [pytest-9.0.3](../general/python-modules.md#pytest "Pytest-9.0.3"){.xref} with optionally [xdist](https://pypi.org/project/pytest-xdist/){.ulink} (speeds up the tests), and [Xorg Applications](x7app.md "Xorg Applications"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of XKeyboardConfig {#installation-of-xkeyboardconfig .sect2}

Install [XKeyboardConfig]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=$XORG_PREFIX --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

::: {.admon .important}
![\[Important\]](../images/important.png)

### Important

If upgrading from version 2.44 or earlier, the installation will fail if some files are not symbolic links. To fix this, run as the `root`{.systemitem} user:

``` root
if [ -d $XORG_PREFIX/share/X11/xkb ]; then
  rm -rf $XORG_PREFIX/share/X11/xkb
  rm -f  $XORG_PREFIX/share/man/man7/xkeyboard-config.7
  rm -f  $XORG_PREFIX/share/pkgconfig/xkeyboard-config.pc
fi
```
:::

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
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
**Installed Directory:** [`$XORG_PREFIX`{.envar}/share/X11/xkb]{.segbody}
:::
::::::
:::::::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](x7font.md "Xorg Fonts"){accesskey="p"}

    Xorg Fonts

-   [Next](xwayland.md "Xwayland-24.1.12"){accesskey="n"}

    Xwayland-24.1.12

-   [Up](installing.md "Chapter 24. Graphical Environments"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
