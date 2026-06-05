::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 50. PostScript

-   [Prev](fop.md "fop-2.11"){accesskey="p"}

    fop-2.11

-   [Next](paps.md "paps-0.8.0"){accesskey="n"}

    paps-0.8.0

-   [Up](ps.md "Chapter 50. PostScript"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#mupdf}MuPDF-1.26.12 {#mupdf-1.26.12 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to MuPDF {#introduction-to-mupdf .sect2}

[MuPDF]{.application} is a lightweight PDF and XPS viewer.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.mupdf.com/downloads/archive/mupdf-1.26.12-source.tar.gz](https://www.mupdf.com/downloads/archive/mupdf-1.26.12-source.tar.gz){.ulink}

-   Download MD5 sum: d10eb7e1ef0f4a44f5c14a29b9d6f906

-   Download size: 62 MB

-   Estimated disk space required: 295 MB

-   Estimated build time: 0.2 SBU (Using parallelism=4)
:::

### MuPDF Dependencies

#### Required

[Xorg Libraries](../x/x7lib.md "Xorg Libraries"){.xref}

#### Recommended

[Brotli-1.2.0](../general/brotli.md "brotli-1.2.0"){.xref}, [Freeglut-3.8.0](../x/freeglut.md "Freeglut-3.8.0"){.xref}, [harfBuzz-14.2.1](../general/harfbuzz.md "harfBuzz-14.2.1"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [OpenJPEG-2.5.4](../general/openjpeg2.md "OpenJPEG-2.5.4"){.xref}, and [cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}

#### Optional

[zxing-cpp-3.0.2](../general/zxing-cpp.md "zxing-cpp-3.0.2"){.xref}, [xdg-utils-1.2.1](../xsoft/xdg-utils.md "xdg-utils-1.2.1"){.xref} (runtime), [jbig2dec](https://jbig2dec.com){.ulink}, and [MuJS](https://mujs.com/){.ulink}

#### Required (runtime)

[a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}
:::::

::: {.installation lang="en"}
## Installation of MuPDF {#installation-of-mupdf .sect2}

Install [MuPDF]{.application} by running the following commands:

``` userinput
cat > user.make << EOF &&
USE_SYSTEM_BROTLI := yes
USE_SYSTEM_FREETYPE := yes
USE_SYSTEM_HARFBUZZ := yes
USE_SYSTEM_JBIG2DEC := no
USE_SYSTEM_JPEGXR := no # not used without HAVE_JPEGXR
USE_SYSTEM_LCMS2 := no # lcms2mt is strongly preferred
USE_SYSTEM_LIBJPEG := yes
USE_SYSTEM_MUJS := no # build needs source anyway
USE_SYSTEM_OPENJPEG := yes
USE_SYSTEM_ZLIB := yes
USE_SYSTEM_GLUT := yes
USE_SYSTEM_CURL := yes
USE_SYSTEM_GUMBO := no
EOF

export XCFLAGS=-fPIC                      &&
make build=release shared=yes verbose=yes &&
unset XCFLAGS
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make prefix=/usr                         \
     shared=yes                          \
     docdir=/usr/share/doc/mupdf-1.26.12 \
     install                             &&

ln -sfv libmupdf.so.26.12 /usr/lib/libmupdf.so.26 &&
ln -sfv libmupdf.so.26   /usr/lib/libmupdf.so     &&
chmod 755 /usr/lib/libmupdf.so.26.12              &&

ln -sfv mupdf-x11 /usr/bin/mupdf
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**ln -sfv mupdf-x11 /usr/bin/mupdf**]{.command} : This symbolic link chooses between [**mupdf-gl**]{.command} and [**mupdf-x11**]{.command} when running [**mupdf**]{.command}.

`barcode=yes`{.option}: Pass this option to [**make**]{.command} if you want barcode support. This will use the [zxing-cpp]{.application} library included in the package. If you want to use the system [zxing-cpp-3.0.2](../general/zxing-cpp.md "zxing-cpp-3.0.2"){.xref}, you should add [**USE_SYSTEM_ZXINGCPP := yes**]{.command} to `user.make`{.filename}.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [mupdf (symlink), mupdf-gl, mupdf-x11, mupdf-x11-curl, muraster, and mutool]{.segbody}
:::

::: seg
**Installed Libraries:** [libmupdf.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/mupdf, /usr/share/doc/mupdf-1.26.12]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------
  []{#mupdf-prog}[[**mupdf**]{.command}]{.term}      is a program for viewing PDF, XPS, EPUB, and CBZ documents, and various image formats such as PNG, JPEG, GIFF, and TIFF
  []{#mupdf-gl}[[**mupdf-gl**]{.command}]{.term}     same as [**mupdf**]{.command}, using an opengl renderer
  []{#mupdf-x11}[[**mupdf-x11**]{.command}]{.term}   same as [**mupdf**]{.command}, using an X Window renderer
  []{#muraster}[[**muraster**]{.command}]{.term}     is a program used to perform rasterization tasks with PDF documents
  []{#mutool}[[**mutool**]{.command}]{.term}         is a program to perform various operations on PDF files, such as merging and cleaning PDF documents
  []{#libmupdf}[`libmupdf.so`{.filename}]{.term}     contains the mupdf API functions
  -------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](fop.md "fop-2.11"){accesskey="p"}

    fop-2.11

-   [Next](paps.md "paps-0.8.0"){accesskey="n"}

    paps-0.8.0

-   [Up](ps.md "Chapter 50. PostScript"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
