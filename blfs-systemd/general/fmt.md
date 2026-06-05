::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](fftw.md "fftw-3.3.11"){accesskey="p"}

    fftw-3.3.11

-   [Next](glib2.md "GLib-2.88.1"){accesskey="n"}

    GLib-2.88.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fmt}fmt-12.1.0 {#fmt-12.1.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to fmt {#introduction-to-fmt .sect2}

The [fmt]{.application} package is an open-source formatting library providing a fast and safe alternative to C stdio and C++ iostreams.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/fmtlib/fmt/archive/12.1.0/fmt-12.1.0.tar.gz](https://github.com/fmtlib/fmt/archive/12.1.0/fmt-12.1.0.tar.gz){.ulink}

-   Download MD5 sum: 92eb6f492e4838e5f024ce5207beafc7

-   Download size: 696 KB

-   Estimated disk space required: 45 MB (with tests)

-   Estimated build time: 0.4 SBU (using parallelism=4; with tests)
:::

### Fmt Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}
:::::

::: {.installation lang="en"}
## Installation of fmt {#installation-of-fmt .sect2}

Install [fmt]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr     \
      -D CMAKE_INSTALL_LIBDIR=/usr/lib \
      -D BUILD_SHARED_LIBS=ON          \
      -D FMT_TEST=OFF                  \
      -G Ninja ..                      &&
ninja
```

To test the results, issue:

``` userinput
cmake -D FMT_TEST=ON .. &&
ninja                   &&
ninja test
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D FMT_TEST=OFF`*: This switch initializes the package tests. It will be overridden if the instructions for running the test suite is used.
:::

:::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libfmt.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/fmt and /usr/lib/cmake/fmt]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](fftw.md "fftw-3.3.11"){accesskey="p"}

    fftw-3.3.11

-   [Next](glib2.md "GLib-2.88.1"){accesskey="n"}

    GLib-2.88.1

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
