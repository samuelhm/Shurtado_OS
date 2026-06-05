::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](gutenprint.md "Gutenprint-5.3.5"){accesskey="p"}

    Gutenprint-5.3.5

-   [Next](libppd.md "libppd-2.1.1"){accesskey="n"}

    libppd-2.1.1

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libcupsfilters}libcupsfilters-2.1.1 {#libcupsfilters-2.1.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to libcupsfilters {#introduction-to-libcupsfilters .sect2}

The [libcupsfilters]{.application} library contains filter functions for the data format conversion tasks needed in Printer Applications. It also contains several API functions for developing printer drivers/Printer Applications.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/OpenPrinting/libcupsfilters/releases/download/2.1.1/libcupsfilters-2.1.1.tar.xz](https://github.com/OpenPrinting/libcupsfilters/releases/download/2.1.1/libcupsfilters-2.1.1.tar.xz){.ulink}

-   Download MD5 sum: 1e3144c242e7ddcee112d41c79266885

-   Download size: 1.4 MB

-   Estimated disk space required: 39 MB (with tests)

-   Estimated build time: 0.1 SBU (Using parallelism=4; with tests)
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/libcupsfilters-2.1.1-security_fixes-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/libcupsfilters-2.1.1-security_fixes-1.patch){.ulink}
:::

### libcupsfilters Dependencies

#### Required

[Cups-2.4.19](cups.md "Cups-2.4.19"){.xref}, [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref}, [ghostscript-10.07.1](gs.md "ghostscript-10.07.1"){.xref} or [mupdf-1.26.12](mupdf.md "MuPDF-1.26.12"){.xref}, [Little CMS-2.19.1](../general/lcms2.md "Little CMS-2.19.1"){.xref}, [Poppler-26.06.0](../general/poppler.md "Poppler-26.06.0"){.xref}, and [Qpdf-12.3.2](../general/qpdf.md "Qpdf-12.3.2"){.xref}

#### Recommended

[Dejavu fonts](../x/TTF-and-OTF-fonts.md#dejavu-fonts "DejaVu fonts"){.xref} (the build fails if they are not installed, although they are only required for the tests), [libexif-0.6.26](../general/libexif.md "libexif-0.6.26"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}, and [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}
::::::

::: {.installation lang="en"}
## Installation of libcupsfilters {#installation-of-libcupsfilters .sect2}

First, fix 2 security vulnerabilities:

``` userinput
patch -Np1 -i ../libcupsfilters-2.1.1-security_fixes-1.patch
```

Install [libcupsfilters]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libcupsfilters-2.1.1 &&
make
```

To test the results, issue [**make check**]{.command}. DejaVu fonts are needed for the tests.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--disable-static`*: This switch prevents installation of static versions of the libraries.

`--with-test-font-path=`{.option}*`VALUE`*: If you wish to run the tests, but you do not have the default `/usr/share/fonts/dejavu/DejaVuSans.ttf`{.filename} font installed, use this switch to specify where `DejaVuSans.ttf`{.filename} (or perhaps some other text TTF font - though this is untested) is located.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libcupsfilters.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/cupsfilters, /usr/share/cups/{banners,charsets,data}, and /usr/share/doc/libcupsfilters-2.1.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------------- -------------------------------------
  []{#libcupsfilters-lib}[`libcupsfilters.so`{.filename}]{.term}   contains CUPS filters API functions
  ---------------------------------------------------------------- -------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gutenprint.md "Gutenprint-5.3.5"){accesskey="p"}

    Gutenprint-5.3.5

-   [Next](libppd.md "libppd-2.1.1"){accesskey="n"}

    libppd-2.1.1

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
