::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](libdrm.md "Libdrm-2.4.134"){accesskey="p"}

    Libdrm-2.4.134

-   [Next](libnotify.md "libnotify-0.8.8"){accesskey="n"}

    libnotify-0.8.8

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libepoxy}libepoxy-1.5.10 {#libepoxy-1.5.10 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libepoxy {#introduction-to-libepoxy .sect2}

[libepoxy]{.application} is a library for handling OpenGL function pointer management.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libepoxy/1.5/libepoxy-1.5.10.tar.xz](https://download.gnome.org/sources/libepoxy/1.5/libepoxy-1.5.10.tar.xz){.ulink}

-   Download MD5 sum: 10c635557904aed5239a4885a7c4efb7

-   Download size: 220 KB

-   Estimated disk space required: 13 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### libepoxy Dependencies

#### Required

[Mesa-26.0.7](mesa.md "Mesa-26.0.7"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (for documentation)
:::::

::: {.installation lang="en"}
## Installation of libepoxy {#installation-of-libepoxy .sect2}

Install [libepoxy]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

To test the results, issue: [**ninja test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.

`-D docs=true`{.option}: If you have [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} installed, add this option to generate additional documentation.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libepoxy.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/epoxy]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------------------
  []{#libepoxy-lib}[`libepoxy.so`{.filename}]{.term}   contains API functions for handling OpenGL function pointer management
  ---------------------------------------------------- ------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libdrm.md "Libdrm-2.4.134"){accesskey="p"}

    Libdrm-2.4.134

-   [Next](libnotify.md "libnotify-0.8.8"){accesskey="n"}

    libnotify-0.8.8

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
