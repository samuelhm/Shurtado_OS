::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](exempi.md "Exempi-2.6.6"){accesskey="p"}

    Exempi-2.6.6

-   [Next](fftw.md "fftw-3.3.11"){accesskey="n"}

    fftw-3.3.11

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fast_float}fast_float-8.2.6 {#fast_float-8.2.6 .sect1}

:::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Fast_float {#introduction-to-fast_float .sect2}

[Fast_float]{.application} provides a set of C++ header files for efficient string to float operations.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/fastfloat/fast_float/archive/v8.2.6/fast_float-8.2.6.tar.gz](https://github.com/fastfloat/fast_float/archive/v8.2.6/fast_float-8.2.6.tar.gz){.ulink}

-   Download MD5 sum: 2dd9de13bb1c2bf22017e5d12c537123

-   Download size: 132 KB

-   Estimated disk space required: 1.5 MB (add 620 MB for tests)

-   Estimated build time: less than 0.1 SBU (add 0.3 SBU for tests, depending on network connection)
:::

### Fast_float Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}

#### Optional

[git-2.54.0](git.md "Git-2.54.0"){.xref} (for downloading some tests) and [doctest](https://github.com/doctest/doctest){.ulink}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
::::::

::: {.installation lang="en"}
## Installation of Fast_float {#installation-of-fast_float .sect2}

Install [fast_float]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -G Ninja ..
```

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

To test the results, issue: [**cmake .. -D FASTFLOAT_TEST=ON && ninja && ninja test**]{.command}. Note that the tests download some test files and the external doctest test framework from the Internet, and the doctest package would have been installed if the test suite had run before [**ninja install**]{.command}, so don't run the test suite before installation.
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
**Installed Directories:** [/usr/include/fast_float and /usr/share/cmake/FastFloat]{.segbody}
:::
::::::
:::::::
::::::::
::::::::::::::

::: navfooter
-   [Prev](exempi.md "Exempi-2.6.6"){accesskey="p"}

    Exempi-2.6.6

-   [Next](fftw.md "fftw-3.3.11"){accesskey="n"}

    fftw-3.3.11

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
