::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](openjpeg2.md "OpenJPEG-2.5.4"){accesskey="p"}

    OpenJPEG-2.5.4

-   [Next](poppler.md "Poppler-26.06.0"){accesskey="n"}

    Poppler-26.06.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#pixman}Pixman-0.46.4 {#pixman-0.46.4 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Pixman {#introduction-to-pixman .sect2}

The [Pixman]{.application} package contains a library that provides low-level pixel manipulation features such as image compositing and trapezoid rasterization.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.cairographics.org/releases/pixman-0.46.4.tar.gz](https://www.cairographics.org/releases/pixman-0.46.4.tar.gz){.ulink}

-   Download MD5 sum: c08173c8e1d2cc79428d931c13ffda59

-   Download size: 808 KB

-   Estimated disk space required: 28 MB (With tests)

-   Estimated build time: 0.1 SBU (Using parallelism=4; with tests)
:::

### Pixman Dependencies

#### Optional

[libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref} and [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref} (for tests and demos)
:::::

::: {.installation lang="en"}
## Installation of Pixman {#installation-of-pixman .sect2}

Install [Pixman]{.application} by running the following commands:

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
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libpixman-1.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/pixman-1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------
  []{#libpixman}[`libpixman-1.so`{.filename}]{.term}   contains functions that provide low-level pixel manipulation features
  ---------------------------------------------------- -----------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](openjpeg2.md "OpenJPEG-2.5.4"){accesskey="p"}

    OpenJPEG-2.5.4

-   [Next](poppler.md "Poppler-26.06.0"){accesskey="n"}

    Poppler-26.06.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
