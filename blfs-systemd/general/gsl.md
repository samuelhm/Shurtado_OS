<div class="navheader">
#### Beyond Linux<sup>®</sup> From Scratch <span class="phrase">(systemd</span> Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](gmmlib.md "gmmlib-22.10.0")

    gmmlib-22.10.0

-   [Next](gspell.md "gspell-1.14.3")

    gspell-1.14.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>

# gsl-2.8 {#gsl-2.8}

<div class="sect1" lang="en">
<div class="package" lang="en">
## Introduction to Gsl {#introduction-to-gsl}

The GNU Scientific Library (GSL) is a numerical library for C and C++ programmers. It provides a wide range of mathematical routines such as random number generators, special functions and least-squares fitting.

<div class="admon note">
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
</div>

### Package Information

<div class="itemizedlist">
-   Download (HTTP): <a class="ulink" href="https://ftpmirror.gnu.org/gsl/gsl-2.8.tar.gz">https://ftpmirror.gnu.org/gsl/gsl-2.8.tar.gz</a>

-   Download MD5 sum: 182ec03204f164e67238c9116591a37d

-   Download size: 8.6 MB

-   Estimated disk space required: 223 MB (with tests, without docs)

-   Estimated build time: 1.0 SBU (Using parallelism=4; with tests, without docs)
</div>

### Gsl Dependencies

#### Optional

<a class="xref" href="python-modules.md#sphinx_rtd_theme" title="Sphinx_rtd_theme-3.1.0">sphinx_rtd_theme-3.1.0</a>
</div>

<div class="installation" lang="en">
## Installation of Gsl {#installation-of-gsl}

Install <span class="application">Gsl</span> by running the following commands:

```bash
./configure --prefix=/usr --disable-static &&
make
```

If you have <a class="xref" href="python-modules.md#sphinx_rtd_theme" title="Sphinx_rtd_theme-3.1.0">sphinx_rtd_theme-3.1.0</a> installed, build the documentation with:

```bash
make html
```

To test the results, issue: <span class="command"><strong>make check</strong></span>.

Now, as the <code class="systemitem">root</code> user:

```bash
make install
```

If you built the documentation, install it (as <code class="systemitem">root</code>) with:

```bash
mkdir                   /usr/share/doc/gsl-2.8 &&
cp -R doc/_build/html/* /usr/share/doc/gsl-2.8
```
</div>

<div class="commands" lang="en">
## Command Explanations {#command-explanations}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
</div>

<div class="content" lang="en">
## Contents {#contents}

<div class="segmentedlist">
<div class="seglistitem">
<div class="seg">
**Installed Programs:** <span class="segbody">gsl-config, gsl-histogram, and gsl-randist</span>
</div>

<div class="seg">
**Installed Libraries:** <span class="segbody">libgslcblas.so and libgsl.so</span>
</div>

<div class="seg">
**Installed Directory:** <span class="segbody">/usr/include/gsl and /usr/share/doc/gsl-2.8</span>
</div>
</div>
</div>

<div class="variablelist">
### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------
  <a id="gsl-config"></a><span class="command"><span class="term"><strong>gsl-config</strong></span></span>         is a shell script to get the version number and compiler flags of the installed <span class="application">Gsl</span> library
  <a id="gsl-histogram"></a><span class="command"><span class="term"><strong>gsl-histogram</strong></span></span>   is a demonstration program for the GNU Scientific Library that computes a histogram from data taken from stdin
  <a id="gsl-randist"></a><span class="command"><span class="term"><strong>gsl-randist</strong></span></span>       is a demonstration program for the GNU Scientific Library that generates random samples from various distributions
  <a id="libgslcblas"></a><span class="term"><code class="filename">libgslcblas.so</code></span>       contains functions that implement a C interface to Basic Linear Algebra Subprograms
  <a id="libgsl.so"></a><span class="term"><code class="filename">libgsl.so</code></span>              contains functions that provide a collection of numerical routines for scientific computing
  ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------
</div>
</div>
</div>

<div class="navfooter">
-   [Prev](gmmlib.md "gmmlib-22.10.0")

    gmmlib-22.10.0

-   [Next](gspell.md "gspell-1.14.3")

    gspell-1.14.3

-   [Up](genlib.md "Chapter 9. General Libraries")

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790")
</div>
