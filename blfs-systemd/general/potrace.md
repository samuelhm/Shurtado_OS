::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](poppler.md "Poppler-26.06.0"){accesskey="p"}

    Poppler-26.06.0

-   [Next](qpdf.md "Qpdf-12.3.2"){accesskey="n"}

    Qpdf-12.3.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#potrace}Potrace-1.16 {#potrace-1.16 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Potrace {#introduction-to-potrace .sect2}

[Potrace™]{.application} is a tool for transforming a bitmap (PBM, PGM, PPM, or BMP format) into one of several vector file formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/potrace/potrace-1.16.tar.gz](https://downloads.sourceforge.net/potrace/potrace-1.16.tar.gz){.ulink}

-   Download MD5 sum: 5f0bd87ddd9a620b0c4e65652ef93d69

-   Download size: 644 KB

-   Estimated disk space required: 7.1 MB (including tests)

-   Estimated build time: less than 0.1 SBU (including tests)
:::

### Potrace Dependencies

#### Recommended

[LLVM-22.1.0](llvm.md "LLVM-22.1.0"){.xref} (including [**clang**]{.command})
:::::

::: {.installation lang="en"}
## Installation of Potrace {#installation-of-potrace .sect2}

Install [Potrace]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                        \
            --disable-static                     \
            --docdir=/usr/share/doc/potrace-1.16 \
            --enable-a4                          \
            --enable-metric                      \
            --with-libpotrace                    &&
make
```

To run the test suite, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-a4`*: Use A4 as the default paper size.

*`--enable-metric`*: Use metric units (centimeters) as default

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

*`--with-libpotrace`*: Install the library and headers.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [mkbitmap, potrace]{.segbody}
:::

::: seg
**Installed Libraries:** [libpotrace.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/potrace-1.16]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- ------------------------------------------------------------
  []{#mkbitmap}[[**mkbitmap**]{.command}]{.term}       transforms images into bitmaps with scaling and filtering
  []{#potrace-prog}[[**potrace**]{.command}]{.term}    transforms bitmaps into vector graphics
  []{#libpotrace}[`libpotrace.so`{.filename}]{.term}   is a library for transforming bitmaps into vector graphics
  ---------------------------------------------------- ------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](poppler.md "Poppler-26.06.0"){accesskey="p"}

    Poppler-26.06.0

-   [Next](qpdf.md "Qpdf-12.3.2"){accesskey="n"}

    Qpdf-12.3.2

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
