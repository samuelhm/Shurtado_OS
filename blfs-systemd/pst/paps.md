::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 50. PostScript

-   [Prev](mupdf.md "MuPDF-1.26.12"){accesskey="p"}

    MuPDF-1.26.12

-   [Next](typesetting.md "Typesetting"){accesskey="n"}

    Typesetting

-   [Up](ps.md "Chapter 50. PostScript"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#paps}paps-0.8.0 {#paps-0.8.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to paps {#introduction-to-paps .sect2}

[paps]{.application} is a text to PostScript converter that works through [Pango]{.application}. Its input is a UTF-8 encoded text file and it outputs vectorized PostScript. It may be used for printing any complex script supported by [Pango]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/dov/paps/releases/download/v0.8.0/paps-0.8.0.tar.gz](https://github.com/dov/paps/releases/download/v0.8.0/paps-0.8.0.tar.gz){.ulink}

-   Download MD5 sum: 6bd661b8fd224adc3343a91e6521a4f2

-   Download size: 220 KB

-   Estimated disk space required: 4.0 MB

-   Estimated build time: less than 0.1 SBU
:::

### Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/paps-0.8.0-fmt_fix-1.patch](https://www.linuxfromscratch.org/patches/blfs/svn/paps-0.8.0-fmt_fix-1.patch){.ulink}
:::

### paps Dependencies

#### Required

[fmt-12.1.0](../general/fmt.md "fmt-12.1.0"){.xref}, [Intltool-0.51.0](../general/intltool.md "Intltool-0.51.0"){.xref}, and [Pango-1.57.1](../x/pango.md "Pango-1.57.1"){.xref}

#### Optional

[Doxygen-1.17.0](../general/doxygen.md "Doxygen-1.17.0"){.xref}
::::::

::: {.installation lang="en"}
## Installation of paps {#installation-of-paps .sect2}

First fix problems with glib-2.81.0 and fmt-12.1.0 or later:

``` userinput
sed -i -r 's/g_utf8_(next|offset)/(char*) &/' src/paps.cc &&
patch -Np1 -i ../paps-0.8.0-fmt_fix-1.patch
```

Install [paps]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-Werror \
            --mandir=/usr/share/man &&
make
```

This package does not come with a test suite.

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
**Installed Program:** [paps]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- --------------------------------------------------------------------------
  []{#paps-prog}[[**paps**]{.command}]{.term}   is a text to PostScript converter that supports UTF-8 character encoding
  --------------------------------------------- --------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](mupdf.md "MuPDF-1.26.12"){accesskey="p"}

    MuPDF-1.26.12

-   [Next](typesetting.md "Typesetting"){accesskey="n"}

    Typesetting

-   [Up](ps.md "Chapter 50. PostScript"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
