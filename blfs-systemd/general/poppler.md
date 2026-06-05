::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 10. Graphics and Font Libraries

-   [Prev](pixman.md "Pixman-0.46.4"){accesskey="p"}

    Pixman-0.46.4

-   [Next](potrace.md "Potrace-1.16"){accesskey="n"}

    Potrace-1.16

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#poppler}Poppler-26.06.0 {#poppler-26.06.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Poppler {#introduction-to-poppler .sect2}

The [Poppler]{.application} package contains a PDF rendering library and command line tools used to manipulate PDF files. This is useful for providing PDF rendering functionality as a shared library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://poppler.freedesktop.org/poppler-26.06.0.tar.xz](https://poppler.freedesktop.org/poppler-26.06.0.tar.xz){.ulink}

-   Download MD5 sum: 2fc51d2fea21cef7a3de7d445afb600f

-   Download size: 2.0 MB

-   Estimated disk space required: 1.1 GB (with Qt6 library and tests)

-   Estimated build time: 1.3 SBU (with parallelism=4, tests, and Qt6 library)
:::

### Additional Downloads

::: itemizedlist
**Poppler Encoding Data**

-   Download (HTTP): [https://poppler.freedesktop.org/poppler-data-0.4.12.tar.gz](https://poppler.freedesktop.org/poppler-data-0.4.12.tar.gz){.ulink}

-   Download MD5 sum: 67ee4a40aa830b1f6e2560ce5f6471ba

-   Download size: 4.3 MB

-   Estimated disk space required: 26 MB

-   Estimated build time: less than 0.1 SBU
:::

The additional package consists of encoding files for use with [Poppler]{.application}. The encoding files are optional and [Poppler]{.application} will automatically read them if they are present. When installed, they enable [Poppler]{.application} to render CJK and Cyrillic properly.

### Poppler Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref}, [Fontconfig-2.18.1](fontconfig.md "Fontconfig-2.18.1"){.xref}, and [GLib-2.88.1](glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection)

#### Recommended

[Boost-1.91.0-1](boost.md "boost-1.91.0-1"){.xref}, [Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref}, [gpgmepp-2.1.0](../postlfs/gpgmepp.md "gpgmepp-2.1.0"){.xref}, [Little CMS-2.19.1](lcms2.md "Little CMS-2.19.1"){.xref}, [libjpeg-turbo-3.1.4.1](libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libpng-1.6.58](libpng.md "libpng-1.6.58"){.xref}, [libtiff-4.7.1](libtiff.md "libtiff-4.7.1"){.xref}, [nss-3.124](../postlfs/nss.md "NSS-3.124"){.xref}, [OpenJPEG-2.5.4](openjpeg2.md "OpenJPEG-2.5.4"){.xref}, and [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref} (required for PDF support in [okular-26.04.1](../kde/okular.md "okular-26.04.1"){.xref})

#### Optional

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [gdk-pixbuf-2.44.6](../x/gdk-pixbuf.md "gdk-pixbuf-2.44.6"){.xref}, [git-2.54.0](git.md "Git-2.54.0"){.xref} (for downloading test files), [GTK-Doc-1.36.1](gtk-doc.md "GTK-Doc-1.36.1"){.xref} and [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}
::::::

::: {.installation lang="en"}
## Installation of Poppler {#installation-of-poppler .sect2}

Now, install [Poppler]{.application} by running the following commands:

``` userinput
mkdir build                         &&
cd    build                         &&

cmake -D CMAKE_BUILD_TYPE=Release   \
      -D CMAKE_INSTALL_PREFIX=/usr  \
      -D TESTDATADIR=$PWD/testfiles \
      -D ENABLE_QT5=OFF             \
      -D ENABLE_UNSTABLE_API_ABI_HEADERS=ON \
      -G Ninja ..                   &&
ninja
```

In order to run the test suite, some testcases are needed and can be obtained only from a git repository. The command to download them is: [**git clone --depth 1 https://gitlab.freedesktop.org/poppler/test.git testfiles**]{.command}. Then issue: [**LC_ALL=en_US.UTF-8 ninja test**]{.command}. One test, check_qt6_signature_basics, is known to fail.

Now, as the `root`{.systemitem} user:

``` root
ninja install
```

To install the documentation, run the following commands as `root`{.systemitem}:

``` root
install -v -m755 -d           /usr/share/doc/poppler-26.06.0 &&
cp -vr ../glib/reference/html /usr/share/doc/poppler-26.06.0
```

### Poppler Data

If you downloaded the additional encoding data package, install it by issuing the following commands:

``` userinput
tar -xf ../../poppler-data-0.4.12.tar.gz &&
cd poppler-data-0.4.12
```

Now, as the `root`{.systemitem} user:

``` root
make prefix=/usr install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`-D CMAKE_BUILD_TYPE=Release`*: This switch is used to apply a higher level of compiler optimizations.

*`-D TESTDATADIR=$PWD/testfiles`*: Tells the test programs where the auxiliary files are located.

*`-D ENABLE_QT5=OFF`*: This switch is needed to prevent an error when Qt5 is not installed.

*`-D ENABLE_UNSTABLE_API_ABI_HEADERS=ON`*: Installs some old [Xpdf]{.application} headers required by certain programs.

`-D ENABLE_GTK_DOC=ON`{.option}: Use this parameter if GTK-Doc is installed and you wish to rebuild and install the API documentation.

`-D ENABLE_QT6=OFF`{.option}: Use this parameter if [Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref} is not installed.

`-D ENABLE_BOOST=OFF`{.option}: Use this parameter if you have not installed [boost]{.application} (the Splash backend for Qt6 recommends boost).

`-D ENABLE_NSS3=OFF`{.option}: Use this parameter if you have not installed [nss]{.application}.

`-D ENABLE_GPGME=OFF`{.option}: Use this parameter if you have not installed [gpgme]{.application}.

`-D ENABLE_LIBTIFF=OFF`{.option}: Use this parameter if you have not installed [libtiff]{.application}.

[**LC_ALL=en_US.UTF-8 ninja test**]{.command}: Runs the test suite. The environment variable LC_ALL=en_US.UTF-8 is only needed if the default locale does not include UTF-8.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [pdfattach, pdfdetach, pdffonts, pdfimages, pdfinfo, pdfseparate, pdfsig, pdftocairo, pdftohtml, pdftoppm, pdftops, pdftotext, and pdfunite]{.segbody}
:::

::: seg
**Installed Libraries:** [libpoppler.so, libpoppler-cpp.so, libpoppler-glib.so, and (optionally) libpoppler-qt6.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/poppler, /usr/share/poppler, and /usr/share/doc/poppler-26.06.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
  []{#pdfattach}[[**pdfattach**]{.command}]{.term}               adds a new embedded file to an existing PDF file
  []{#pdfdetach}[[**pdfdetach**]{.command}]{.term}               lists or extracts embedded files from PDF files
  []{#pdffonts}[[**pdffonts**]{.command}]{.term}                 lists the fonts used in a PDF file along with various information for each font
  []{#pdfimages}[[**pdfimages**]{.command}]{.term}               saves images from a PDF file as PPM, PBM, or JPEG files
  []{#pdfinfo}[[**pdfinfo**]{.command}]{.term}                   prints the contents of the 'Info' dictionary (plus some other useful information) from a PDF file
  []{#pdfseparate}[[**pdfseparate**]{.command}]{.term}           extracts single pages from a PDF file
  []{#pdfsig}[[**pdfsig**]{.command}]{.term}                     verifies the digital signatures in a PDF document
  []{#pdftocairo}[[**pdftocairo**]{.command}]{.term}             converts a PDF file to one of several formats (PNG, JPEG, PDF, PS, EPS, SVG) using the cairo output device of the poppler library
  []{#pdftohtml}[[**pdftohtml**]{.command}]{.term}               converts a PDF file to HTML
  []{#pdftoppm}[[**pdftoppm**]{.command}]{.term}                 converts PDF files to PBM, PGM and PPM formats
  []{#pdftops}[[**pdftops**]{.command}]{.term}                   converts PDF files to Postscript format
  []{#pdftotext}[[**pdftotext**]{.command}]{.term}               converts PDF files to plain text
  []{#pdfunite}[[**pdfunite**]{.command}]{.term}                 merges several PDF files, in the order of their occurrence on the command line, to one PDF output file
  []{#libpoppler}[`libpoppler.so`{.filename}]{.term}             contains the API functions to render PDF files
  []{#libpoppler-cpp}[`libpoppler-cpp.so`{.filename}]{.term}     is a C++ backend for rendering PDF files
  []{#libpoppler-glib}[`libpoppler-glib.so`{.filename}]{.term}   is a wrapper library used to interface the PDF rendering functions with [GTK+]{.application}
  []{#libpoppler-qt6}[`libpoppler-qt6.so`{.filename}]{.term}     is a wrapper library used to interface the PDF rendering functions with [Qt]{.application}6
  -------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](pixman.md "Pixman-0.46.4"){accesskey="p"}

    Pixman-0.46.4

-   [Next](potrace.md "Potrace-1.16"){accesskey="n"}

    Potrace-1.16

-   [Up](graphlib.md "Chapter 10. Graphics and Font Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
