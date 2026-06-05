::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](gmmlib.md "gmmlib-22.10.0"){accesskey="p"}

    gmmlib-22.10.0

-   [Next](gspell.md "gspell-1.14.3"){accesskey="n"}

    gspell-1.14.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gsl}gsl-2.8 {#gsl-2.8 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gsl {#introduction-to-gsl .sect2}

The GNU Scientific Library (GSL) is a numerical library for C and C++ programmers. It provides a wide range of mathematical routines such as random number generators, special functions and least-squares fitting.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/gsl/gsl-2.8.tar.gz](https://ftpmirror.gnu.org/gsl/gsl-2.8.tar.gz){.ulink}

-   Download MD5 sum: 182ec03204f164e67238c9116591a37d

-   Download size: 8.6 MB

-   Estimated disk space required: 223 MB (with tests, without docs)

-   Estimated build time: 1.0 SBU (Using parallelism=4; with tests, without docs)
:::

### Gsl Dependencies

#### Optional

[sphinx_rtd_theme-3.1.0](python-modules.md#sphinx_rtd_theme "Sphinx_rtd_theme-3.1.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Gsl {#installation-of-gsl .sect2}

Install [Gsl]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

If you have [sphinx_rtd_theme-3.1.0](python-modules.md#sphinx_rtd_theme "Sphinx_rtd_theme-3.1.0"){.xref} installed, build the documentation with:

``` userinput
make html
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you built the documentation, install it (as `root`{.systemitem}) with:

``` root
mkdir                   /usr/share/doc/gsl-2.8 &&
cp -R doc/_build/html/* /usr/share/doc/gsl-2.8
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gsl-config, gsl-histogram, and gsl-randist]{.segbody}
:::

::: seg
**Installed Libraries:** [libgslcblas.so and libgsl.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/gsl and /usr/share/doc/gsl-2.8]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------
  []{#gsl-config}[[**gsl-config**]{.command}]{.term}         is a shell script to get the version number and compiler flags of the installed [Gsl]{.application} library
  []{#gsl-histogram}[[**gsl-histogram**]{.command}]{.term}   is a demonstration program for the GNU Scientific Library that computes a histogram from data taken from stdin
  []{#gsl-randist}[[**gsl-randist**]{.command}]{.term}       is a demonstration program for the GNU Scientific Library that generates random samples from various distributions
  []{#libgslcblas}[`libgslcblas.so`{.filename}]{.term}       contains functions that implement a C interface to Basic Linear Algebra Subprograms
  []{#libgsl.so}[`libgsl.so`{.filename}]{.term}              contains functions that provide a collection of numerical routines for scientific computing
  ---------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gmmlib.md "gmmlib-22.10.0"){accesskey="p"}

    gmmlib-22.10.0

-   [Next](gspell.md "gspell-1.14.3"){accesskey="n"}

    gspell-1.14.3

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
