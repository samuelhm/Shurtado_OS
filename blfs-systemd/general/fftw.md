::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](fast_float.md "fast_float-8.2.6"){accesskey="p"}

    fast_float-8.2.6

-   [Next](fmt.md "fmt-12.1.0"){accesskey="n"}

    fmt-12.1.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#fftw}fftw-3.3.11 {#fftw-3.3.11 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to fftw {#introduction-to-fftw .sect2}

FFTW is a C subroutine library for computing the discrete Fourier transform (DFT) in one or more dimensions, of arbitrary input size, and of both real and complex data (as well as of even/odd data, i.e. the discrete cosine/sine transforms or DCT/DST).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.fftw.org/fftw-3.3.11.tar.gz](https://www.fftw.org/fftw-3.3.11.tar.gz){.ulink}

-   Download MD5 sum: 40ec8d0447d03b8f01f8c90aa77bd16f

-   Download size: 4.2 MB

-   Estimated disk space required: 71 MB

-   Estimated build time: 1.6 SBU (add 3.4 SBU for tests, both using parallelism=4)
:::
:::::

:::: {.installation lang="en"}
## Installation of fftw {#installation-of-fftw .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

We build fftw three times for different libraries in different numerical precisions: the default double precision floating point, the older 32-bit (single precision) version named float which sacrifices precision for speed, and the long double which offers increased precision at the cost of slower execution.
:::

The first build is for double precision arithmetic. Install [fftw]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --enable-threads \
            --enable-sse2    \
            --enable-avx     \
            --enable-avx2    &&
make
```

To test the results, issue: [**make check**]{.command}. On 32-bit systems, the tests can take substantially longer than they would on 64-bit machines.

Now, as the `root`{.systemitem} user:

``` root
make install
```

Now build single precision:

``` userinput
make clean &&

./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --enable-threads \
            --enable-sse2    \
            --enable-avx     \
            --enable-avx2    \
            --enable-float   &&
make
```

As the `root`{.systemitem} user:

``` root
make install
```

Finally, build long double precision:

``` userinput
make clean &&

./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --enable-threads \
            --enable-long-double &&
make
```

As the `root`{.systemitem} user:

``` root
make install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-shared`* *`--disable-static`*: Use shared libs instead of static libs.

*`--enable-threads`*: This enables `libfftw3_threads.so`{.filename} to be compiled. It is used by e.g. the [gimp]{.application} plugin from [G'MIC](https://gmic.eu/){.ulink}.

*`--enable-{sse2,avx,avx2}`*: These enables building the optimized routines using SSE2, AVX, and AVX2 instructions. FFTW will check if these routines can be really used on the current CPU when the FFTW library is loaded, so a FFTW build with these routines enabled can still run on a CPU without SSE2, AVX, or AVX2. These options are not compatible with *`--enable-long-double`*.

*`--enable-float`*: This enables building the library that uses single precision floating point arithmetic. It is faster but less precise than the default double precision library. The library will be called `libfftw3f.so`{.filename} needed by [PulseAudio-17.0](../multimedia/pulseaudio.md "PulseAudio-17.0"){.xref}.

*`--enable-long-double`*: This enables building the library that uses higher precision long-double floating point arithmetic. The library will be called `libfftw3l.so`{.filename}.

`--enable-avx512`{.option}: This enables building the optimized routines using AVX512F instructions. FFTW will check if these routines can be really used on the current CPU when the FFTW library is loaded, so a FFTW build with these routines enabled can still run on a CPU without AVX512F. Use this option if the FFTW build will be used on a CPU with AVX512F. This option is not compatible with *`--enable-long-double`*.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fftw-wisdom and fftw-wisdom-to-conf]{.segbody}
:::

::: seg
**Installed Libraries:** [libfftw3.so, libfftw3_threads.so, libfftw3f.so, libfftw3f_threads.so, libfftw3l.so and libfftw3l_threads.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#fftw-wisdom}[[**fftw-wisdom**]{.command}]{.term}                   is a utility to generate FFTW wisdom files, which contain saved information about how to optimally compute (Fourier) transforms of various sizes
  []{#fftw-wisdom-to-conf}[[**fftw-wisdom-to-conf**]{.command}]{.term}   is a utility to generate C configuration routines from FFTW wisdom files, where the latter contain saved information about how to optimally compute (Fourier) transforms of various sizes
  []{#libfftw3}[`libfftw3.so`{.filename}]{.term}                         is the Fast Fourier Transform library
  []{#libfftw3_threads}[`libfftw3_threads.so`{.filename}]{.term}         is the threaded Fast Fourier Transform library
  []{#libfftw3f}[`libfftw3f.so`{.filename}]{.term}                       is the single-precision Fast Fourier Transform library, described as [“[float]{.quote}”]{.quote} for historic reasons
  []{#libfftw3f_threads}[`libfftw3f_threads.so`{.filename}]{.term}       is the threaded single-precision Fast Fourier Transform library
  []{#libfftw3l}[`libfftw3l.so`{.filename}]{.term}                       is the long double Fast Fourier Transform library
  []{#libfftw3l_threads}[`libfftw3l_threads.so`{.filename}]{.term}       is the threaded long double Fast Fourier Transform library
  ---------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](fast_float.md "fast_float-8.2.6"){accesskey="p"}

    fast_float-8.2.6

-   [Next](fmt.md "fmt-12.1.0"){accesskey="n"}

    fmt-12.1.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
