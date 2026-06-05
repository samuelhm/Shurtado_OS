<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](fast_float.md "fast_float-8.2.6")

    fast_float-8.2.6

-   [Next](fmt.md "fmt-12.1.0")

    fmt-12.1.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# fftw-3.3.11 {#fftw-3.3.11}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to fftw {#introduction-to-fftw}

FFTW is a C subroutine library for computing the discrete Fourier transform (DFT) in one or more dimensions, of arbitrary input size, and of both real and complex data (as well as of even/odd data, i.e. the discrete cosine/sine transforms or DCT/DST).

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://www.fftw.org/fftw-3.3.11.tar.gz">https://www.fftw.org/fftw-3.3.11.tar.gz</a>

-   Download MD5 sum: 40ec8d0447d03b8f01f8c90aa77bd16f

-   Download size: 4.2 MB

-   Estimated disk space required: 71 MB

-   Estimated build time: 1.6 SBU (add 3.4 SBU for tests, both using parallelism=4)
</div>
</div>

<div class="installation" lang="en">
## Installation of fftw {#installation-of-fftw}

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

We build fftw three times for different libraries in different numerical precisions: the default double precision floating point, the older 32-bit (single precision) version named float which sacrifices precision for speed, and the long double which offers increased precision at the cost of slower execution.
</div>

The first build is for double precision arithmetic. Install <span class="application">fftw</span> by running the following commands:

```bash
./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --enable-threads \
            --enable-sse2    \
            --enable-avx     \
            --enable-avx2    &&
make
```

To test the results, issue: <span class="command"><strong>make check</strong></span>. On 32-bit systems, the tests can take substantially longer than they would on 64-bit machines.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

Now build single precision:

```bash
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

As the <code class="systemitem">root</code> user:

```bash
make install
```

Finally, build long double precision:

```bash
make clean &&

./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --enable-threads \
            --enable-long-double &&
make
```

As the <code class="systemitem">root</code> user:

```bash
make install
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--enable-shared`* *`--disable-static`*: Use shared libs instead of static libs.

*`--enable-threads`*: This enables <code class="filename">libfftw3_threads.so</code> to be compiled. It is used by e.g. the <span class="application">gimp</span> plugin from <a class="ulink" href="https://gmic.eu/">G'MIC</a>.

*`--enable-{sse2,avx,avx2}`*: These enables building the optimized routines using SSE2, AVX, and AVX2 instructions. FFTW will check if these routines can be really used on the current CPU when the FFTW library is loaded, so a FFTW build with these routines enabled can still run on a CPU without SSE2, AVX, or AVX2. These options are not compatible with *`--enable-long-double`*.

*`--enable-float`*: This enables building the library that uses single precision floating point arithmetic. It is faster but less precise than the default double precision library. The library will be called <code class="filename">libfftw3f.so</code> needed by <a class="xref" href="../multimedia/pulseaudio.md" title="PulseAudio-17.0">PulseAudio-17.0</a>.

*`--enable-long-double`*: This enables building the library that uses higher precision long-double floating point arithmetic. The library will be called <code class="filename">libfftw3l.so</code>.

<code class="option">--enable-avx512</code>: This enables building the optimized routines using AVX512F instructions. FFTW will check if these routines can be really used on the current CPU when the FFTW library is loaded, so a FFTW build with these routines enabled can still run on a CPU without AVX512F. Use this option if the FFTW build will be used on a CPU with AVX512F. This option is not compatible with *`--enable-long-double`*.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">fftw-wisdom and fftw-wisdom-to-conf</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libfftw3.so, libfftw3_threads.so, libfftw3f.so, libfftw3f_threads.so, libfftw3l.so and libfftw3l_threads.so</span>
</div>

<div class="seg">
**Installed Directories:** <span class="segbody">None</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  <a id="fftw-wisdom"></a><span class="command"><span class="term"><strong>fftw-wisdom</strong></span></span>                   is a utility to generate FFTW wisdom files, which contain saved information about how to optimally compute (Fourier) transforms of various sizes
  <a id="fftw-wisdom-to-conf"></a><span class="command"><span class="term"><strong>fftw-wisdom-to-conf</strong></span></span>   is a utility to generate C configuration routines from FFTW wisdom files, where the latter contain saved information about how to optimally compute (Fourier) transforms of various sizes
  <a id="libfftw3"></a><span class="term"><code class="filename">libfftw3.so</code></span>                         is the Fast Fourier Transform library
  <a id="libfftw3_threads"></a><span class="term"><code class="filename">libfftw3_threads.so</code></span>         is the threaded Fast Fourier Transform library
  <a id="libfftw3f"></a><span class="term"><code class="filename">libfftw3f.so</code></span>                       is the single-precision Fast Fourier Transform library, described as <span class="quote">“<span class="quote">float</span>”</span> for historic reasons
  <a id="libfftw3f_threads"></a><span class="term"><code class="filename">libfftw3f_threads.so</code></span>       is the threaded single-precision Fast Fourier Transform library
  <a id="libfftw3l"></a><span class="term"><code class="filename">libfftw3l.so</code></span>                       is the long double Fast Fourier Transform library
  <a id="libfftw3l_threads"></a><span class="term"><code class="filename">libfftw3l_threads.so</code></span>       is the threaded long double Fast Fourier Transform library
  ---------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](fast_float.md "fast_float-8.2.6")

    fast_float-8.2.6

-   [Next](fmt.md "fmt-12.1.0")

    fmt-12.1.0

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
