::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 25. Graphical Environment Libraries

-   [Prev](gtksourceview5.md "gtksourceview5-5.20.0"){accesskey="p"}

    gtksourceview5-5.20.0

-   [Next](kcolorpicker.md "kColorPicker-0.3.1"){accesskey="n"}

    kColorPicker-0.3.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#imlib2}imlib2-1.12.6 {#imlib2-1.12.6 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to imlib2 {#introduction-to-imlib2 .sect2}

[imlib2]{.application} is a graphics library for fast file loading, saving, rendering and manipulation.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/enlightenment/imlib2-1.12.6.tar.xz](https://downloads.sourceforge.net/enlightenment/imlib2-1.12.6.tar.xz){.ulink}

-   Download MD5 sum: 8c66b4dabc52225562324be5a994accf

-   Download size: 828 KB

-   Estimated disk space required: 20 MB (with docs)

-   Estimated build time: 0.2 SBU (with docs)
:::

### imlib2 Dependencies

#### Required

[Xorg Libraries](x7lib.md "Xorg Libraries"){.xref}

#### Recommended

[giflib-6.1.3](../general/giflib.md "giflib-6.1.3"){.xref} and [librsvg-2.62.3](../general/librsvg.md "librsvg-2.62.3"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} (for API documentation), [highway-1.4.0](../general/highway.md "highway-1.4.0"){.xref}, [libheif-1.23.0](../general/libheif.md "libheif-1.23.0"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libjxl-0.11.2](../general/libjxl.md "libjxl-0.11.2"){.xref}, [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}, [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, [libid3tag](https://sourceforge.net/projects/mad){.ulink}, [libspectre](https://www.freedesktop.org/wiki/Software/libspectre){.ulink}
:::::

::: {.installation lang="en"}
## Installation of imlib2 {#installation-of-imlib2 .sect2}

Install [imlib2]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you generated the API documentation, install it as the `root`{.systemitem} user:

``` root
install -v -m755 -d            /usr/share/doc/imlib2-1.12.6/html &&
install -v -m644    doc/html/* /usr/share/doc/imlib2-1.12.6/html
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--enable-doc-build`{.option}: This switch generates the API documentation. [Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref} must be installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [imlib2_bumpmap, imlib2_colorspace, imlib2_conv, imlib2_grab, imlib2_load, imlib2_poly, imlib2_show, imlib2_test, and imlib2_view]{.segbody}
:::

::: seg
**Installed Libraries:** [libImlib2.so and various filters and image loader modules.]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/imlib2, /usr/share/doc/imlib2-1.12.6, and /usr/share/imlib2]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------ --------------------------------------------------------------------------
  []{#imlib2_bumpmap}[[**imlib2_bumpmap**]{.command}]{.term}         is to test the [imlib2]{.application} bumpmap function
  []{#imlib2_colorspace}[[**imlib2_colorspace**]{.command}]{.term}   is to test the [imlib2]{.application} colorspace function
  []{#imlib2_conv}[[**imlib2_conv**]{.command}]{.term}               converts images between formats
  []{#imlib2_grab}[[**imlib2_grab**]{.command}]{.term}               takes screenshots
  []{#imlib2_load}[[**imlib2_load**]{.command}]{.term}               loads and caches images
  []{#imlib2_poly}[[**imlib2_poly**]{.command}]{.term}               is to test the [imlib2]{.application} poly function
  []{#imlib2_show}[[**imlib2_show**]{.command}]{.term}               is an [imlib2]{.application} program test
  []{#imlib2_test}[[**imlib2_test**]{.command}]{.term}               is an [imlib2]{.application} program test
  []{#imlib2_view}[[**imlib2_view**]{.command}]{.term}               displays image files
  []{#libImlib2}[`libImlib2.so`{.filename}]{.term}                   provides the functions for programs to handle various image data formats
  ------------------------------------------------------------------ --------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gtksourceview5.md "gtksourceview5-5.20.0"){accesskey="p"}

    gtksourceview5-5.20.0

-   [Next](kcolorpicker.md "kColorPicker-0.3.1"){accesskey="n"}

    kColorPicker-0.3.1

-   [Up](lib.md "Chapter 25. Graphical Environment Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
