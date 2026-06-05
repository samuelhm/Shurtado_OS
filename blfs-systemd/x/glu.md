::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](glslang.md "glslang-16.3.0"){accesskey="p"}

    glslang-16.3.0

-   [Next](goffice010.md "GOffice-0.10.61"){accesskey="n"}

    GOffice-0.10.61

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#glu}GLU-9.0.3 {#glu-9.0.3 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to GLU {#introduction-to-glu .sect2}

This package provides the Mesa OpenGL Utility library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you have installed [libglvnd](https://glfs-book.github.io/glfs/shareddeps/libglvnd.md){.ulink}, please install the GLFS version of [GLU](https://glfs-book.github.io/glfs/shareddeps/glu.md){.ulink} instead so that the library functions as expected.
:::

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://archive.mesa3d.org/glu/glu-9.0.3.tar.xz](https://archive.mesa3d.org/glu/glu-9.0.3.tar.xz){.ulink}

-   Download MD5 sum: 06a4fff9179a98ea32ef41b6d83f6b19

-   Download size: 216 KB

-   Estimated disk space required: 5.9 MB

-   Estimated build time: 0.2 SBU
:::

### GLU Dependencies

#### Required

[Mesa-26.0.7](mesa.md "Mesa-26.0.7"){.xref}
::::::

::: {.installation lang="en"}
## Installation of GLU {#installation-of-glu .sect2}

Install [GLU]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup ..              \
      --prefix=$XORG_PREFIX \
      --buildtype=release   \
      -D gl_provider=gl     \
      -D default_library=shared &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D default_library=shared`*: This switch prevents building and installing the static library.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libGLU.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------- ----------------------------------------------------
  []{#libGLU}[`libGLU.so`{.filename}]{.term}   is the [Mesa]{.application} OpenGL Utility library
  -------------------------------------------- ----------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](glslang.md "glslang-16.3.0"){accesskey="p"}

    glslang-16.3.0

-   [Next](goffice010.md "GOffice-0.10.61"){accesskey="n"}

    GOffice-0.10.61

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
