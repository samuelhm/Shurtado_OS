::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](texlive.md "texlive-20250308-source"){accesskey="p"}

    texlive-20250308-source

-   [Next](biber.md "biber-2.21"){accesskey="n"}

    biber-2.21

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#asymptote}asymptote-3.10 {#asymptote-3.10 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to asymptote {#introduction-to-asymptote .sect2}

[Asymptote]{.application} is a powerful descriptive vector graphics language that provides a natural coordinate-based framework for technical drawing. Labels and equations can be typeset with LaTeX. As well as EPS, PDF, and PNG output, it can produce WebGL 3D HTML rendering and (using [dvisvgm]{.application}) SVG output.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/asymptote/asymptote-3.10.src.tgz](https://downloads.sourceforge.net/asymptote/asymptote-3.10.src.tgz){.ulink}

-   Download MD5 sum: b89cc85a4621fa4afedcb5e988c625c7

-   Download size: 25 MB

-   Estimated disk space required: 335 MB (62 MB installed after overwriting files in \$TEXLIVE_PREFIX/texmf-dist/, with all the dependencies which are in BLFS)

-   Estimated build time: 0.8 SBU (using parallelism=4)
:::

### asymptote Dependencies

#### Required

[ghostscript-10.07.1](gs.md "ghostscript-10.07.1"){.xref} and [texlive-20250308](texlive.md "texlive-20250308-source"){.xref}

#### Recommended

[cURL-8.20.0](../basicnet/curl.md "cURL-8.20.0"){.xref}, [Freeglut-3.8.0](../x/freeglut.md "Freeglut-3.8.0"){.xref}, [GC-8.2.12](../general/gc.md "GC-8.2.12"){.xref}, [GLEW-2.3.1](../x/glew.md "GLEW-2.3.1"){.xref}, [GLM-1.0.3](../general/glm.md "GLM-1.0.3"){.xref} and [libtirpc-1.3.7](../basicnet/libtirpc.md "libtirpc-1.3.7"){.xref}

#### Recommended at runtime

[dvisvgm-3.6](dvisvgm.md "dvisvgm-3.6"){.xref} to allow svg output

#### Optional

[fftw-3.3.11](../general/fftw.md "fftw-3.3.11"){.xref}, [gsl-2.8](../general/gsl.md "gsl-2.8"){.xref}, [libsigsegv-2.15](../general/libsigsegv.md "libsigsegv-2.15"){.xref}, [rapidjson](https://github.com/Tencent/rapidjson/releases/){.ulink} to use [LSP](https://microsoft.github.io/language-server-protocol/implementors/tools/){.ulink} which can be used with [emacs](https://asymptote.sourceforge.io/doc/Language-server-protocol.md#index-LSP/){.ulink}, [click](https://pypi.org/project/click/){.ulink}, and [eigen](https://eigen.tuxfamily.org/){.ulink}

#### Optional (at runtime)

[ImageMagick-7.1.2-13](../general/imagemagick.md "ImageMagick-7.1.2-13"){.xref} to convert output to other formats such as JPEG or to create animated GIFs, [PyQt5](https://pypi.org/project/PyQt5/){.ulink} (not tested, has a build dependency of Qt5) to use xasy

Editor Notes: [https://wiki.linuxfromscratch.org/blfs/wiki/asymptote](https://wiki.linuxfromscratch.org/blfs/wiki/asymptote){.ulink}
:::::

:::: {.installation lang="en"}
## Installation of asymptote {#installation-of-asymptote .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Certain 3D PDF scripts may not work when invoked from pdflatex on some zen+ amdgpu APU machines.
:::

Install [asymptote]{.application} by running the following commands:

``` userinput
export TEXARCH=$(uname -m | sed -e 's/i.86/i386/' -e 's/$/-linux/') &&

./configure --prefix=$TEXLIVE_PREFIX                          \
            --bindir=$TEXLIVE_PREFIX/bin/$TEXARCH             \
            --datarootdir=$TEXLIVE_PREFIX/texmf-dist          \
            --infodir=$TEXLIVE_PREFIX/texmf-dist/doc/info     \
            --libdir=$TEXLIVE_PREFIX/texmf-dist               \
            --mandir=$TEXLIVE_PREFIX/texmf-dist/doc/man       \
            --disable-lsp                                     \
            --enable-gc=system                                \
            --with-latex=$TEXLIVE_PREFIX/texmf-dist/tex/latex \
            --with-context=$TEXLIVE_PREFIX/texmf-dist/tex/context/third &&

make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--prefix=`*, *`--bindir=`*, *`--datarootdir=`*, and other [“[dir]{.quote}”]{.quote} switches: these switches ensure that the files installed from source will overwrite any corresponding files previously installed by [install-tl-unx]{.application} so that the alternative methods of installing [texlive]{.application} are consistent.

*`--libdir=$TEXLIVE_PREFIX/texmf-dist`*: This parameter ensures that the `asymptote`{.filename} directory will similarly overwrite any files installed by install-tl-unx.

*`--disable-lsp`*: The Language Server Protocol is enabled by default, with several third-party sources included, but it does not build unless boost and rapidjson have been installed.

*`--enable-gc=system`*: this ensures that the system version of `libgc.so`{.filename} will be used instead of the version shipped with this package.

*`--with-latex=`* *`--with-context=`*: These switches ensure that style files and a tex file will be installed into the [texlive]{.application} directories instead of creating a `texmf-local`{.filename} directory for them.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [asy and xasy]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [\$TEXLIVE_PREFIX/texmf-dist/asymptote, \$TEXLIVE_PREFIX/doc/asymptote, and \$TEXLIVE_PREFIX/info/asymptote]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------- -------------------------------------------------
  []{#asy}[[**asy**]{.command}]{.term}     is a vector graphics program
  []{#xasy}[[**xasy**]{.command}]{.term}   is a Python3 script providing a Qt5 GUI for asy
  ---------------------------------------- -------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](texlive.md "texlive-20250308-source"){accesskey="p"}

    texlive-20250308-source

-   [Next](biber.md "biber-2.21"){accesskey="n"}

    biber-2.21

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
