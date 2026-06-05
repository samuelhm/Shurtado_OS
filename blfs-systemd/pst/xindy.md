::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 51. Typesetting

-   [Prev](dvisvgm.md "dvisvgm-3.6"){accesskey="p"}

    dvisvgm-3.6

-   [Next](../appendices/creat-comm.md "Creative Commons License"){accesskey="n"}

    Creative Commons License

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xindy}xindy-2.5.1 {#xindy-2.5.1 .sect1}

:::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to xindy {#introduction-to-xindy .sect2}

[Xindy]{.application} is an index processor that can be used to generate book-like indexes for arbitrary document-preparation systems. This includes systems such as TeX and LaTeX, the roff-family, and SGML/XML-based systems (e.g., HTML) that process some kind of text and generate indexing information.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://tug.ctan.org/support/xindy/base/xindy-2.5.1.tar.gz](https://tug.ctan.org/support/xindy/base/xindy-2.5.1.tar.gz){.ulink}

-   Download MD5 sum: 221acfeeb0f6f8388f89a59c56491041

-   Download size: 506 KB

-   Estimated disk space required: 15 MB

-   Estimated build time: less than 0.1 SBU
:::

### Required Additional Downloads

::: itemizedlist
-   Required patch: [https://www.linuxfromscratch.org/patches/blfs/svn/xindy-2.5.1-upstream_fixes-2.patch](https://www.linuxfromscratch.org/patches/blfs/svn/xindy-2.5.1-upstream_fixes-2.patch){.ulink}
:::

### Xindy Dependencies

#### Required

[Clisp-2.49.95](../general/clisp.md "Clisp-2.49.95"){.xref} and [texlive-20250308](texlive.md "texlive-20250308-source"){.xref}
::::::

::: {.installation lang="en"}
## Installation of xindy {#installation-of-xindy .sect2}

Install [xindy]{.application} by running the following commands:

``` userinput
export TEXARCH=$(uname -m | sed -e 's/i.86/i386/' -e 's/$/-linux/') &&

sed -i "s/ grep -v '^;'/ awk NF/" make-rules/inputenc/Makefile.in &&

sed -i 's%\(indexentry\)%\1\\%' make-rules/inputenc/make-inp-rules.pl &&

patch -Np1 -i ../xindy-2.5.1-upstream_fixes-2.patch &&

./configure --prefix=$TEXLIVE_PREFIX              \
            --bindir=$TEXLIVE_PREFIX/bin/$TEXARCH \
            --datarootdir=$TEXLIVE_PREFIX         \
            --includedir=/usr/include             \
            --libdir=$TEXLIVE_PREFIX/texmf-dist   \
            --mandir=$TEXLIVE_PREFIX/texmf-dist/doc/man &&

make LC_ALL=POSIX
```

This package does not have a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i "s/ grep -v '\^;'/ awk NF/" ...**]{.command}: The build sorts files in latin{1..3} encodings to create latin.xdy, and unicode versions of these to create utf8.xdy after using [**grep -v '\^;'**]{.command} to remove blank lines. With [grep-2.23]{.application} any data not in the expected encoding is treated as binary, resulting in a useless file. This command uses an alternative way of removing blank lines.

[**sed -i 's%\\(indexentry\\)%\\1\\\\%' ...**]{.command}: A regexp contains `indexentry{`{.literal} - perl has warned about the unescaped left brace for some time and now treats it as illegal. Change it to `indexentry\{`{.literal}, doubling the backslash for [**sed**]{.command}.

[**patch -Np1 -i ../xindy-2.5.1-upstream_fixes-2.patch**]{.command}: [Xindy]{.application} is now maintained at CTAN. This patch updates the source with some of the changes made there (but ignoring changes which were only made to allow for spaces in pathnames and some trivial recent changes).

*`--prefix=`*, *`--bindir=`*, *`--datarootdir=`*, and other [“[dir]{.quote}”]{.quote} switches: these switches ensure that the files installed from source will overwrite any corresponding files previously installed by [install-tl-unx]{.application} so that the alternative methods of installing [texlive]{.application} are consistent.

*`--includedir=/usr/include`*: This parameter ensures that the `kpathsea`{.filename} headers from [texlive-20250308](texlive.md "texlive-20250308-source"){.xref} will be found.

[**make LC_ALL=POSIX**]{.command}: with the current version of [coreutils]{.application} it is essential to build [xindy]{.application} in the POSIX (or C) locale because in a UTF-8 locale the file `latin.xdy`{.filename} will contain only a heading and then a line '`Binary file (standard input) matches`{.literal}' instead of the many lines of [lisp]{.application} merge-rule commands it ought to contain.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [tex2xindy, texindy, xindy]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [\$TEXLIVE_PREFIX/texmf-dist/xindy]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ------------------------------------------------------------------------
  []{#tex2xindy}[[**tex2xindy**]{.command}]{.term}   transforms a LaTeX index file into a xindy raw index file
  []{#texindy}[[**texindy**]{.command}]{.term}       is a wrapper for xindy that turns on many LaTeX conventions by default
  []{#xindy-prog}[[**xindy**]{.command}]{.term}      creates a sorted and tagged index from a raw LaTeX index
  -------------------------------------------------- ------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](dvisvgm.md "dvisvgm-3.6"){accesskey="p"}

    dvisvgm-3.6

-   [Next](../appendices/creat-comm.md "Creative Commons License"){accesskey="n"}

    Creative Commons License

-   [Up](typesetting.md "Chapter 51. Typesetting"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
