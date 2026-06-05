::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](biber.md "biber-2.21"){accesskey="p"}

    biber-2.21

-   [Next](xindy.md "xindy-2.5.1"){accesskey="n"}

    xindy-2.5.1

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dvisvgm}dvisvgm-3.6 {#dvisvgm-3.6 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to dvisvgm {#introduction-to-dvisvgm .sect2}

The [dvisvgm]{.application} package converts DVI, EPS and PDF files to SVG format.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/mgieseki/dvisvgm/releases/download/3.6/dvisvgm-3.6.tar.gz](https://github.com/mgieseki/dvisvgm/releases/download/3.6/dvisvgm-3.6.tar.gz){.ulink}

-   Download MD5 sum: 46cf1f6d7092df0b65b68413ce19e1c2

-   Download size: 2.8 MB

-   Estimated disk space required: 268 MB (net 7 MB installed after overwriting files in \$TEXLIVE_PREFIX/texmf-dist/, add 948 MB for the tests)

-   Estimated build time: 0.8 SBU (add 0.5 SBU for the tests, both using parallelism=4)
:::

### dvisvgm Dependencies

#### Required

[Brotli-1.2.0](../general/brotli.md "brotli-1.2.0"){.xref}, [ghostscript-10.07.1](gs.md "ghostscript-10.07.1"){.xref}, [Potrace-1.16](../general/potrace.md "Potrace-1.16"){.xref}, and [texlive-20250308](texlive.md "texlive-20250308-source"){.xref}

#### Recommended

[WOFF2-1.0.2](../general/woff2.md "woff2-1.0.2"){.xref}

#### Optional

[asciidoc-10.2.1](../general/python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} with [xmlto-0.0.29](xmlto.md "xmlto-0.0.29"){.xref} and [libxslt-1.1.45](../general/libxslt.md "libxslt-1.1.45"){.xref}, [dblatex](https://dblatex.sourceforge.net/){.ulink} (with the above) and [xxHash](https://github.com/Cyan4973/xxHash/releases/latest){.ulink} (the current version is included in the tarball)
:::::

::: {.installation lang="en"}
## Installation of dvisvgm {#installation-of-dvisvgm .sect2}

The test suite assumes that a modern version of [Python]{.application} has been installed as plain [**python**]{.command}. Changing this to use [**python3**]{.command} requires a sed to one `Makefile.in`{.filename} file.

Install [dvisvgm]{.application} by running the following commands:

``` userinput
TEXARCH=$(uname -m | sed -e 's/i.86/i386/' -e 's/$/-linux/') &&

sed -i 's/python/&3/' tests/Makefile.in         &&
./configure                                     \
    --bindir=$TEXLIVE_PREFIX/bin/${TEXARCH}     \
    --mandir=$TEXLIVE_PREFIX/texmf-dist/doc/man \
    --with-kpathsea=$TEXLIVE_PREFIX             &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-kpathsea=$TEXLIVE_PREFIX`*: This allows the build system to find the headers for `kpathsea`{.filename}
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [dvisvgm]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- ---------------------------------------------------
  []{#dvisvgm-prog}[[**dvisvgm**]{.command}]{.term}   converts DVI, EPS and PDF files to the SVG format
  --------------------------------------------------- ---------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](biber.md "biber-2.21"){accesskey="p"}

    biber-2.21

-   [Next](xindy.md "xindy-2.5.1"){accesskey="n"}

    xindy-2.5.1

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
