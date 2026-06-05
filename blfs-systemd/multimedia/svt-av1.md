::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 42. Multimedia Libraries and Drivers

-   [Prev](speex.md "Speex-1.2.1"){accesskey="p"}

    Speex-1.2.1

-   [Next](taglib.md "Taglib-2.3"){accesskey="n"}

    Taglib-2.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#svt-av1}SVT-AV1-4.1.0 {#svt-av1-4.1.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to SVT-AV1 {#introduction-to-svt-av1 .sect2}

The SVT-AV1 package contains an AV1 encoder.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.com/AOMediaCodec/SVT-AV1/-/archive/v4.1.0/SVT-AV1-v4.1.0.tar.gz](https://gitlab.com/AOMediaCodec/SVT-AV1/-/archive/v4.1.0/SVT-AV1-v4.1.0.tar.gz){.ulink}

-   Download MD5 sum: d365da75a7bce679594a575b17003a49

-   Download size: 11 MB

-   Estimated disk space required: 93 MB (add 648 MB for tests)

-   Estimated build time: 0.7 SBU (using parallelism=4; add 31 SBU for tests)
:::

### SVT-AV1 Dependencies

#### Required

[CMake-4.3.3](../general/cmake.md "CMake-4.3.3"){.xref}

#### Recommended

[NASM-3.01](../general/nasm.md "NASM-3.01"){.xref}

#### Optional

[Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

An Internet connection is needed for some tests of this package. The system certificate store may need to be set up with [make-ca-1.16.1](../postlfs/make-ca.md "make-ca-1.16.1"){.xref} before testing this package.
:::
::::::

::: {.installation lang="en"}
## Installation of SVT-AV1 {#installation-of-svt-av1 .sect2}

Install SVT-AV1 by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr   \
      -D CMAKE_BUILD_TYPE=Release    \
      -D CMAKE_SKIP_INSTALL_RPATH=ON \
      -D BUILD_SHARED_LIBS=ON        \
      -W no-dev -G Ninja .. &&

ninja
```

The test suite is very long and doesn't provide meaningful results. If you want to test the results anyway, issue:

``` userinput
cmake .. -D BUILD_TESTING=ON &&
ninja                        &&
ninja TestVectors            &&
SVT_AV1_TEST_VECTOR_PATH=$PWD/../test/vectors \
ctest -V -O testlog.txt --timeout 10800
```

On a relatively slow system, you may need to increase the timeout for the tests (see the SBU value for the tests on top of the page). In the SvtAv1ApiTests test, 12 `run_paramter_check`{.literal} subtests are known to fail. The test harness will download a copy of libaom (even if [libaom-3.14.1](libaom.md "libaom-3.14.1"){.xref} is already installed, the test harness is still unable to use the system installation) and some videos as test inputs.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D BUILD_SHARED_LIBS=ON`*: This parameter forces building shared versions of the libraries.

*`-D CMAKE_SKIP_INSTALL_RPATH=ON`*: This switch makes [**cmake**]{.command} remove hardcoded library search paths (rpath) when installing a binary executable file or a shared library. This package does not need rpath once it's installed into the standard location, and rpath may sometimes cause unwanted effects or even security issues.

`-D BUILD_TESTING=ON`{.option}: This option enables building the unit tests.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [SvtAv1EncApp]{.segbody}
:::

::: seg
**Installed Libraries:** [libSvtAv1Enc.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/svt-av1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ------------------------------------------------------------------
  []{#SvtAv1EncApp}[[**SvtAv1EncApp**]{.command}]{.term}   is the SVT-AV1 encoder utility
  []{#libSvtAv1Enc}[`libSvtAv1Enc.so`{.filename}]{.term}   contains functions that enable encoding files with the AV1 codec
  -------------------------------------------------------- ------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](speex.md "Speex-1.2.1"){accesskey="p"}

    Speex-1.2.1

-   [Next](taglib.md "Taglib-2.3"){accesskey="n"}

    Taglib-2.3

-   [Up](libdriv.md "Chapter 42. Multimedia Libraries and Drivers"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
