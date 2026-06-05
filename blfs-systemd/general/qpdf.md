::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](potrace.md "Potrace-1.16"){accesskey="p"}

    Potrace-1.16

-   [Next](sassc.md "sassc-3.6.2"){accesskey="n"}

    sassc-3.6.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#qpdf}Qpdf-12.3.2 {#qpdf-12.3.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Qpdf {#introduction-to-qpdf .sect2}

The [Qpdf]{.application} package contains command-line programs and a library that does structural, content-preserving transformations on PDF files.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/qpdf/qpdf/releases/download/v12.3.2/qpdf-12.3.2.tar.gz](https://github.com/qpdf/qpdf/releases/download/v12.3.2/qpdf-12.3.2.tar.gz){.ulink}

-   Download MD5 sum: 6740cb19ae3c9ecdc9c1d012449de1c3

-   Download size: 19 MB

-   Estimated disk space required: 358 MB (add 2 MB for tests)

-   Estimated build time: 0.6 SBU (using parallelism=4; add 0.5 SBU for tests)
:::

### Qpdf Dependencies

#### Required

[libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}

#### Optional

[ghostscript-10.07.1](../pst/gs.md "ghostscript-10.07.1"){.xref}, [GnuTLS-3.8.13](../postlfs/gnutls.md "GnuTLS-3.8.13"){.xref}, [libtiff-4.7.1](libtiff.md "libtiff-4.7.1"){.xref}, [sphinx-9.1.0](python-modules.md#sphinx "Sphinx-9.1.0"){.xref} with [sphinx_rtd_theme-3.1.0](python-modules.md#sphinx_rtd_theme "Sphinx_rtd_theme-3.1.0"){.xref}, and [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Qpdf {#installation-of-qpdf .sect2}

Install [Qpdf]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

cmake -D CMAKE_INSTALL_PREFIX=/usr \
      -D CMAKE_BUILD_TYPE=Release  \
      -D BUILD_STATIC_LIBS=OFF     \
      -D CMAKE_INSTALL_DOCDIR=/usr/share/doc/qpdf-12.3.2 \
      .. &&
make
```

To test the results, issue: [**ctest**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [fix-qdf, qpdf, and zlib-flate]{.segbody}
:::

::: seg
**Installed Library:** [libqpdf.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/cmake/qpdf, /usr/include/qpdf, and /usr/share/doc/qpdf-12.3.2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ----------------------------------------------------------------
  []{#fix-qdf}[[**fix-qdf**]{.command}]{.term}         is used to repair PDF files in QDF form after editing
  []{#qpdf-prog}[[**qpdf**]{.command}]{.term}          is used to convert one PDF file to another equivalent PDF file
  []{#zlib-flate}[[**zlib-flate**]{.command}]{.term}   is a raw zlib compression program
  []{#libqpdf}[`libqpdf.so`{.filename}]{.term}         contains the [Qpdf]{.application} API functions
  ---------------------------------------------------- ----------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](potrace.md "Potrace-1.16"){accesskey="p"}

    Potrace-1.16

-   [Next](sassc.md "sassc-3.6.2"){accesskey="n"}

    sassc-3.6.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
