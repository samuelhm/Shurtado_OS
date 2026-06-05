::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](libexif.md "libexif-0.6.26"){accesskey="p"}

    libexif-0.6.26

-   [Next](libheif.md "libheif-1.23.0"){accesskey="n"}

    libheif-1.23.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libgxps}libgxps-0.3.2 {#libgxps-0.3.2 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libgxps {#introduction-to-libgxps .sect2}

The [libgxps]{.application} package provides an interface to manipulate XPS documents.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/libgxps/0.3/libgxps-0.3.2.tar.xz](https://download.gnome.org/sources/libgxps/0.3/libgxps-0.3.2.tar.xz){.ulink}

-   Download MD5 sum: 0527ac7c8c405445e96a5baa6019a0c3

-   Download size: 80 KB

-   Estimated disk space required: 5.4 MB

-   Estimated build time: 0.1 SBU
:::

### Libgxps Dependencies

#### Required

[GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}, [libarchive-3.8.7](libarchive.md "libarchive-3.8.7"){.xref}, [libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libtiff-4.7.1](libtiff.md "libtiff-4.7.1"){.xref}, and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref}

#### Optional

[git-2.54.0](git.md "Git-2.54.0"){.xref} and [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Libgxps {#installation-of-libgxps .sect2}

Install [Libgxps]{.application} by running the following commands:

``` userinput
mkdir build &&
cd    build &&

meson setup --prefix=/usr --buildtype=release .. &&
ninja
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--buildtype=release`*: Specify a buildtype suitable for stable releases of the package, as the default may produce unoptimized binaries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [xpstojpeg, xpstopdf, xpstopng, xpstops, and xpstosvg]{.segbody}
:::

::: seg
**Installed Library:** [libgxps.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libgxps]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- -------------------------------------------------------
  []{#xpstojpeg}[[**xpstojpeg**]{.command}]{.term}   converts XPS documents to a JPEG image
  []{#xpstopdf}[[**xpstopdf**]{.command}]{.term}     converts XPS documents to PDF format
  []{#xpstopng}[[**xpstopng**]{.command}]{.term}     converts XPS documents to a PNG image
  []{#xpstops}[[**xpstops**]{.command}]{.term}       converts XPS documents to PostScript
  []{#xpstosvg}[[**xpstosvg**]{.command}]{.term}     converts XPS documents to SVG images
  []{#libgxps-lib}[`libgxps.so`{.filename}]{.term}   contains API functions for manipulating XPS documents
  -------------------------------------------------- -------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libexif.md "libexif-0.6.26"){accesskey="p"}

    libexif-0.6.26

-   [Next](libheif.md "libheif-1.23.0"){accesskey="n"}

    libheif-1.23.0

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
