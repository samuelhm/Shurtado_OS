::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](keybinder-3.md "keybinder-3.0-0.3.2"){accesskey="p"}

    keybinder-3.0-0.3.2

-   [Next](libei.md "libei-1.6.0"){accesskey="n"}

    libei-1.6.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libadwaita1}libadwaita-1.9.1 {#libadwaita-1.9.1 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libadwaita {#introduction-to-libadwaita .sect2}

The [libadwaita]{.application} package provides additional GTK4 UI widgets for use in developing user interfaces. It is used primarily for GNOME applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libadwaita/1.9/libadwaita-1.9.1.tar.xz](https://download.gnome.org/sources/libadwaita/1.9/libadwaita-1.9.1.tar.xz){.ulink}

-   Download MD5 sum: 86f4222771dabbb396d516afbc287b1c

-   Download size: 2.7 MB

-   Estimated disk space required: 214 MB (with tests and docs)

-   Estimated build time: 1.3 SBU (with parallelism=4; with tests and docs)
:::

### libadwaita Dependencies

#### Required

[AppStream-1.1.2](../general/appstream.md "AppStream-1.1.2"){.xref}, [GTK-4.22.4](gtk4.md "GTK-4.22.4"){.xref}, and [sassc-3.6.2](../general/sassc.md "sassc-3.6.2"){.xref}

#### Recommended

[Vala-0.56.19](../general/vala.md "Vala-0.56.19"){.xref}

#### Optional

[Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} and [xdg-desktop-portal-1.20.4](xdg-desktop-portal.md "xdg-desktop-portal-1.20.4"){.xref} (for two tests)
:::::

::: {.installation lang="en"}
## Installation of libadwaita {#installation-of-libadwaita .sect2}

Install [libadwaita]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

If you have [Gi-DocGen-2026.1](../general/python-modules.md#gi-docgen "Gi-DocGen-2026.1"){.xref} installed and wish to build the API documentation for this package, issue:

``` userinput
sed "s/apiversion/'1.9.1'/" -i ../doc/meson.build &&
meson configure -D documentation=true             &&
ninja
```

To test the results, issue: [**ninja test**]{.command}. The tests must be run from a graphical session. Two tests will fail if [xdg-desktop-portal-1.20.4](xdg-desktop-portal.md "xdg-desktop-portal-1.20.4"){.xref} is not installed.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [adwaita-1-demo]{.segbody}
:::

::: seg
**Installed Libraries:** [libadwaita-1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libadwaita-1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ --------------------------------------------------------------------------
  []{#adwaita-1-demo}[[**adwaita-1-demo**]{.command}]{.term}   provides an example of how to use the [libadwaita]{.application} library
  []{#libadwaita-1}[`libadwaita-1.so`{.filename}]{.term}       provides additional GTK widgets for use in creating user interfaces
  ------------------------------------------------------------ --------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](keybinder-3.md "keybinder-3.0-0.3.2"){accesskey="p"}

    keybinder-3.0-0.3.2

-   [Next](libei.md "libei-1.6.0"){accesskey="n"}

    libei-1.6.0

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
