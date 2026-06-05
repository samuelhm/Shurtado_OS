::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](harfbuzz.md "harfBuzz-14.2.1"){accesskey="p"}

    harfBuzz-14.2.1

-   [Next](jasper.md "jasper-4.2.9"){accesskey="n"}

    jasper-4.2.9

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#imath}Imath-3.2.2 {#imath-3.2.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Imath {#introduction-to-imath .sect2}

[Imath]{.application} is a C++ and python library of 2D and 3D vector, matrix, and math operations for computer graphics.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/AcademySoftwareFoundation/Imath/releases/download/v3.2.2/Imath-3.2.2.tar.gz](https://github.com/AcademySoftwareFoundation/Imath/releases/download/v3.2.2/Imath-3.2.2.tar.gz){.ulink}

-   Download MD5 sum: 7389e3bb124012e7dbbb99c3b2a5323c

-   Download size: 668 KB

-   Estimated disk space required: 162 MB (with tests)

-   Estimated build time: 1.2 SBU (Using parallelism=4; with tests)
:::

### Imath Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Recommended

[Boost-1.91.0-1](boost.md "boost-1.91.0-1"){.xref} and [NumPy-2.4.6](python-modules.md#numpy "NumPy-2.4.6"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Imath {#installation-of-imath .sect2}

Install [Imath]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D PYTHON=ON                 \
      ..  &&
make
```

To test the results, issue: [**make test**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D PYTHON=ON`*: This option enables building the Python modules. It can be disabled if [NumPy-2.4.6](python-modules.md#numpy "NumPy-2.4.6"){.xref} is not installed.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libImath.so, libImath-3_2.so, libPyImath.so, and libPyImath_Python3_14-3_2.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/Imath and /usr/lib/cmake/Imath]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](harfbuzz.md "harfBuzz-14.2.1"){accesskey="p"}

    harfBuzz-14.2.1

-   [Next](jasper.md "jasper-4.2.9"){accesskey="n"}

    jasper-4.2.9

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
