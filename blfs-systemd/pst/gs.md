::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 46. Printing

-   [Prev](cups-filters.md "cups-filters-2.0.1"){accesskey="p"}

    cups-filters-2.0.1

-   [Next](gutenprint.md "Gutenprint-5.3.5"){accesskey="n"}

    Gutenprint-5.3.5

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gs}ghostscript-10.07.1 {#ghostscript-10.07.1 .sect1}

::::::::::::::::::: {.sect1 lang="en"}
::::::: {.package lang="en"}
## Introduction to Ghostscript {#introduction-to-ghostscript .sect2}

[Ghostscript]{.application} is a versatile processor for PostScript data with the ability to render PostScript to different targets. It is a mandatory part of the cups printing stack.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs10071/ghostscript-10.07.1.tar.xz](https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs10071/ghostscript-10.07.1.tar.xz){.ulink}

-   Download MD5 sum: 9e987b203c535d3c7829e1daefb85e98

-   Download size: 66 MB

-   Estimated disk space required: 1.1 GB (with fonts and libgs.so)

-   Estimated build time: 1.9 SBU (Using parallelism=4; with libgs.so)
:::

### Additional Downloads

If you wish, you can download additional fonts.

::: itemizedlist
**Standard Fonts**

-   Download (HTTP): [https://downloads.sourceforge.net/gs-fonts/ghostscript-fonts-std-8.11.tar.gz](https://downloads.sourceforge.net/gs-fonts/ghostscript-fonts-std-8.11.tar.gz){.ulink}

-   Download MD5 sum: 6865682b095f8c4500c54b285ff05ef6

-   Download size: 3.7 MB
:::

::: itemizedlist
**Other Fonts**

-   Download (HTTP): [https://downloads.sourceforge.net/gs-fonts/gnu-gs-fonts-other-6.0.tar.gz](https://downloads.sourceforge.net/gs-fonts/gnu-gs-fonts-other-6.0.tar.gz){.ulink}

-   Download MD5 sum: 33457d3f37de7ef03d2eea05a9e6aa4f

-   Download size: 796 KB
:::

### Ghostscript Dependencies

#### Recommended

[Cups-2.4.19](cups.md "Cups-2.4.19"){.xref} (required for building the [“[cups]{.quote}”]{.quote} device backend, which is needed by [cups-filters]{.application}), [Fontconfig-2.18.1](../general/fontconfig.md "Fontconfig-2.18.1"){.xref} (required if you are installing any of the suggested fonts), [FreeType-2.14.3](../general/freetype2.md "FreeType-2.14.3"){.xref}, [Little CMS-2.19.1](../general/lcms2.md "Little CMS-2.19.1"){.xref}, [libjpeg-turbo-3.1.4.1](../general/libjpeg.md "libjpeg-turbo-3.1.4.1"){.xref}, [libpng-1.6.58](../general/libpng.md "libpng-1.6.58"){.xref}, [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}, and [OpenJPEG-2.5.4](../general/openjpeg2.md "OpenJPEG-2.5.4"){.xref}

#### Optional

[Cairo-1.18.4](../x/cairo.md "Cairo-1.18.4"){.xref}, [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}, [libidn-1.43](../general/libidn.md "libidn-1.43"){.xref}, [libpaper-2.2.8](../general/libpaper.md "libpaper-2.2.8"){.xref}, [libwebp-1.6.0](../general/libwebp.md "libwebp-1.6.0"){.xref}, and [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}
:::::::

::::: {.installation lang="en"}
## Installation of Ghostscript {#installation-of-ghostscript .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The [Ghostscript]{.application} build system is not user-friendly. In order to use system copies of various graphics libraries, you must do it using unconventional methods.
:::

[Ghostscript]{.application} includes (old) copies of several libraries. Some of these seem to have been patched to fix known vulnerabilities, but others of these copies are less-well maintained. To ensure that any future fixes are applied throughout the whole system, it is recommended that you first install the released versions of these libraries and then configure [Ghostscript]{.application} to link to them.

If you have installed the recommended dependencies on your system, remove the copies of [freetype]{.application}, [lcms2]{.application}, [libjpeg]{.application}, [libpng]{.application}, and [openjpeg]{.application}:

``` userinput
rm -rf freetype lcms2mt jpeg libpng openjpeg
```

Compile [Ghostscript]{.application}:

``` userinput
rm -rf zlib &&

./configure --prefix=/usr           \
            --disable-compile-inits \
            --with-system-libtiff   \
            CFLAGS="${CFLAGS:--g -O3} -fPIC" &&
make
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

The shared library depends on [GTK-3.24.52](../x/gtk3.md "GTK-3.24.52"){.xref}. It is only used by external programs like [asymptote-3.10](asymptote.md "asymptote-3.10"){.xref}, [dvisvgm-3.6](dvisvgm.md "dvisvgm-3.6"){.xref}, and [ImageMagick-7.1.2-13](../general/imagemagick.md "ImageMagick-7.1.2-13"){.xref}.
:::

To compile the shared library `libgs.so`{.filename}, run the following additional command as an unprivileged user:

``` userinput
make so
```

This package does not come with a test suite. A set of example files may be used for testing, but it is only possible after installation of the package.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you built the shared library, install it with:

``` root
make soinstall                                     &&
install -v -m644 base/*.h /usr/include/ghostscript &&
ln -sfvn ghostscript /usr/include/ps
```

Now make the documentation accessible from a standard place:

``` root
mv -v /usr/share/doc/ghostscript/10.07.1 /usr/share/doc/ghostscript-10.07.1 &&
rmdir /usr/share/doc/ghostscript                                            &&
cp -r examples/ -T /usr/share/ghostscript/10.07.1/examples
```

If you have downloaded the fonts, unpack them to `/usr/share/ghostscript`{.filename} and ensure the ownership of the files are `root`{.systemitem}: `root`{.systemitem}.

``` root
tar -xvf ../ghostscript-fonts-std-8.11.tar.gz -C /usr/share/ghostscript --no-same-owner &&
tar -xvf ../gnu-gs-fonts-other-6.0.tar.gz     -C /usr/share/ghostscript --no-same-owner &&
fc-cache -v /usr/share/ghostscript/fonts/
```

You can now test the rendering of various postscript and pdf files from the `/usr/share/ghostscript/10.07.1/examples`{.filename} . To do this, run the following command (in a X11 session):

``` userinput
gs -q -dBATCH /usr/share/ghostscript/10.07.1/examples/tiger.eps
```
:::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**rm -rf zlib**]{.command} : [zlib]{.application} was installed as part of LFS.

*`--disable-compile-inits`*: This option makes [**gs**]{.command} and `libgs.so`{.filename} slightly smaller.

*`--with-system-libtiff`*: Remove this option if you've not installed [libtiff-4.7.1](../general/libtiff.md "libtiff-4.7.1"){.xref}.

*`CFLAGS="${CFLAGS:--g -O3} -fPIC"`*: These flags are needed to prevent a linker error during the build process.

[**install -v -m644 base/\*.h...**]{.command} : Some packages ([ImageMagick]{.application} is one) need the [Ghostscript]{.application} interface headers in place to link to the shared library. These commands install the headers.

[**ln -sfvn ghostscript /usr/include/ps**]{.command}: Some packages expect to find the interface headers in an alternate location.

[**mv -v /usr/share/doc/ghostscript/10.07.1 /usr/share/doc/ghostscript-10.07.1**]{.command}: This moves the documentation to where it is expected to be found.

`--disable-cups`{.option}: This option will save a tiny amount of space by not linking [**gs**]{.command} and `libgs.so`{.filename} to the [Cups-2.4.19](cups.md "Cups-2.4.19"){.xref} libraries if you have installed those.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [dvipdf, eps2eps, gs, gsbj, gsc (from soinstall), gsdj, gsdj500, gslj, gslp, gsnd, gsx (from soinstall), lprsetup.sh, pdf2dsc, pdf2ps, pf2afm, pfbtopfa, pphs, printafm, ps2ascii, ps2epsi, ps2pdf, ps2pdf12, ps2pdf13, ps2pdf14, ps2pdfwr, ps2ps, ps2ps2, and unix-lpr.sh]{.segbody}
:::

::: seg
**Installed Library:** [libgs.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/ghostscript, /usr/share/ghostscript, and /usr/share/doc/ghostscript-10.07.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#gplgs-prog}[[**gs**]{.command}]{.term}    is an interpreter for Adobe Systems' PostScript(tm) and Portable Document Format (PDF)
  []{#libgs.so}[`libgs.so`{.filename}]{.term}   provides [Ghostscript]{.application} functionality to other programs, such as [GSView]{.application}, [ImageMagick]{.application}, and [libspectre]{.application}
  --------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::

[Ghostscript]{.application} provides many different scripts used to convert PostScript, PDF, and other formats. Please refer to the HTML documentation or the man pages for information about the capabilities provided.
:::::::::
:::::::::::::::::::

::: navfooter
-   [Prev](cups-filters.md "cups-filters-2.0.1"){accesskey="p"}

    cups-filters-2.0.1

-   [Next](gutenprint.md "Gutenprint-5.3.5"){accesskey="n"}

    Gutenprint-5.3.5

-   [Up](printing.md "Chapter 46. Printing"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
