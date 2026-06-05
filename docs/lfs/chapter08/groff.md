::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](findutils.md "Findutils-4.10.0"){accesskey="p"}

    Findutils-4.10.0

-   [Next](grub.md "GRUB-2.14"){accesskey="n"}

    GRUB-2.14

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-groff}8.63. Groff-1.24.1 {#groff-1.24.1 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Groff package contains programs for processing and formatting text and images.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [108 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.63.1. Installation of Groff {#installation-of-groff .sect2}

Groff expects the environment variable `PAGE`{.envar} to contain the default paper size. For users in the United States, *`PAGE=letter`* is appropriate. Elsewhere, *`PAGE=A4`* may be more suitable. While the default paper size is configured during compilation, it can be overridden later by echoing either ["[A4]{.quote}"]{.quote} or ["[letter]{.quote}"]{.quote} to the `/etc/papersize`{.filename} file.

Prepare Groff for compilation:

``` userinput
PAGE=<paper_size> ./configure --prefix=/usr
```

Build the package:

``` userinput
make -j1
```

To test the results, issue:

``` userinput
make check
```

One test, neqn-smoke-test.sh, is known to fail.

Install the package:

``` userinput
make install
```
:::

:::::::: {.content lang="en"}
## []{#contents-groff}8.63.2. Contents of Groff {#contents-of-groff .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [addftinfo, afmtodit, chem, eqn, eqn2graph, gdiffmk, glilypond, gperl, gpinyin, grap2graph, grn, grodvi, groff, groffer, grog, grolbp, grolj4, gropdf, grops, grotty, hpftodit, indxbib, lkbib, lookbib, mmroff, neqn, nroff, pdfmom, pdfroff, pfbtops, pic, pic2graph, post-grohtml, preconv, pre-grohtml, refer, roff2dvi, roff2html, roff2pdf, roff2ps, roff2text, roff2x, soelim, tbl, tfmtodit, and troff]{.segbody}
:::

::: seg
**Installed directories:** [/usr/lib/groff and /usr/share/doc/groff-1.24.1, /usr/share/groff]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#addftinfo}[[**addftinfo**]{.command}]{.term}         Reads a troff font file and adds some additional font-metric information that is used by the [**groff**]{.command} system
  []{#afmtodit}[[**afmtodit**]{.command}]{.term}           Creates a font file for use with [**groff**]{.command} and [**grops**]{.command}
  []{#chem}[[**chem**]{.command}]{.term}                   Groff preprocessor for producing chemical structure diagrams
  []{#eqn}[[**eqn**]{.command}]{.term}                     Compiles descriptions of equations embedded within troff input files into commands that are understood by [**troff**]{.command}
  []{#eqn2graph}[[**eqn2graph**]{.command}]{.term}         Converts a troff EQN (equation) into a cropped image
  []{#gdiffmk}[[**gdiffmk**]{.command}]{.term}             Marks differences between groff/nroff/troff files
  []{#glilypond}[[**glilypond**]{.command}]{.term}         Transforms sheet music written in the lilypond language into the groff language
  []{#gperl}[[**gperl**]{.command}]{.term}                 Preprocessor for groff, allowing the insertion of perl code into groff files
  []{#gpinyin}[[**gpinyin**]{.command}]{.term}             Preprocessor for groff, allowing the insertion of Pinyin (Mandarin Chinese spelled with the Roman alphabet) into groff files.
  []{#grap2graph}[[**grap2graph**]{.command}]{.term}       Converts a grap program file into a cropped bitmap image (grap is an old Unix programming language for creating diagrams)
  []{#grn}[[**grn**]{.command}]{.term}                     A [**groff**]{.command} preprocessor for gremlin files
  []{#grodvi}[[**grodvi**]{.command}]{.term}               A driver for [**groff**]{.command} that produces TeX dvi format output files
  []{#groff}[[**groff**]{.command}]{.term}                 A front end to the groff document formatting system; normally, it runs the [**troff**]{.command} program and a post-processor appropriate for the selected device
  []{#groffer}[[**groffer**]{.command}]{.term}             Displays groff files and man pages on X and tty terminals
  []{#grog}[[**grog**]{.command}]{.term}                   Reads files and guesses which of the [**groff**]{.command} options `-e`{.option}, `-man`{.option}, `-me`{.option}, `-mm`{.option}, `-ms`{.option}, `-p`{.option}, `-s`{.option}, and `-t`{.option} are required for printing files, and reports the [**groff**]{.command} command including those options
  []{#grolbp}[[**grolbp**]{.command}]{.term}               Is a [**groff**]{.command} driver for Canon CAPSL printers (LBP-4 and LBP-8 series laser printers)
  []{#grolj4}[[**grolj4**]{.command}]{.term}               Is a driver for [**groff**]{.command} that produces output in PCL5 format suitable for an HP LaserJet 4 printer
  []{#gropdf}[[**gropdf**]{.command}]{.term}               Translates the output of GNU [**troff**]{.command} to PDF
  []{#grops}[[**grops**]{.command}]{.term}                 Translates the output of GNU [**troff**]{.command} to PostScript
  []{#grotty}[[**grotty**]{.command}]{.term}               Translates the output of GNU [**troff**]{.command} into a form suitable for typewriter-like devices
  []{#hpftodit}[[**hpftodit**]{.command}]{.term}           Creates a font file for use with [**groff -Tlj4**]{.command} from an HP-tagged font metric file
  []{#indxbib}[[**indxbib**]{.command}]{.term}             Creates an inverted index for the bibliographic databases with a specified file for use with [**refer**]{.command}, [**lookbib**]{.command}, and [**lkbib**]{.command}
  []{#lkbib}[[**lkbib**]{.command}]{.term}                 Searches bibliographic databases for references that contain specified keys and reports any references found
  []{#lookbib}[[**lookbib**]{.command}]{.term}             Prints a prompt on the standard error (unless the standard input is not a terminal), reads a line containing a set of keywords from the standard input, searches the bibliographic databases in a specified file for references containing those keywords, prints any references found on the standard output, and repeats this process until the end of input
  []{#mmroff}[[**mmroff**]{.command}]{.term}               A simple preprocessor for [**groff**]{.command}
  []{#neqn}[[**neqn**]{.command}]{.term}                   Formats equations for American Standard Code for Information Interchange (ASCII) output
  []{#nroff}[[**nroff**]{.command}]{.term}                 A script that emulates the [**nroff**]{.command} command using [**groff**]{.command}
  []{#pdfmom}[[**pdfmom**]{.command}]{.term}               Is a wrapper around groff that facilitates the production of PDF documents from files formatted with the mom macros.
  []{#pdfroff}[[**pdfroff**]{.command}]{.term}             Creates pdf documents using groff
  []{#pfbtops}[[**pfbtops**]{.command}]{.term}             Translates a PostScript font in `.pfb`{.filename} format to ASCII
  []{#pic}[[**pic**]{.command}]{.term}                     Compiles descriptions of pictures embedded within troff or TeX input files into commands understood by TeX or [**troff**]{.command}
  []{#pic2graph}[[**pic2graph**]{.command}]{.term}         Converts a PIC diagram into a cropped image
  []{#post-grohtml}[[**post-grohtml**]{.command}]{.term}   Translates the output of GNU [**troff**]{.command} to HTML
  []{#preconv}[[**preconv**]{.command}]{.term}             Converts encoding of input files to something GNU [**troff**]{.command} understands
  []{#pre-grohtml}[[**pre-grohtml**]{.command}]{.term}     Translates the output of GNU [**troff**]{.command} to HTML
  []{#refer}[[**refer**]{.command}]{.term}                 Copies the contents of a file to the standard output, except that lines between [*.\[*]{.emphasis} and [*.\]*]{.emphasis} are interpreted as citations, and lines between [*.R1*]{.emphasis} and [*.R2*]{.emphasis} are interpreted as commands for how citations are to be processed
  []{#roff2dvi}[[**roff2dvi**]{.command}]{.term}           Transforms roff files into DVI format
  []{#roff2html}[[**roff2html**]{.command}]{.term}         Transforms roff files into HTML format
  []{#roff2pdf}[[**roff2pdf**]{.command}]{.term}           Transforms roff files into PDFs
  []{#roff2ps}[[**roff2ps**]{.command}]{.term}             Transforms roff files into ps files
  []{#roff2text}[[**roff2text**]{.command}]{.term}         Transforms roff files into text files
  []{#roff2x}[[**roff2x**]{.command}]{.term}               Transforms roff files into other formats
  []{#soelim}[[**soelim**]{.command}]{.term}               Reads files and replaces lines of the form [*.so file*]{.emphasis} by the contents of the mentioned [*file*]{.emphasis}
  []{#tbl}[[**tbl**]{.command}]{.term}                     Compiles descriptions of tables embedded within troff input files into commands that are understood by [**troff**]{.command}
  []{#tfmtodit}[[**tfmtodit**]{.command}]{.term}           Creates a font file for use with [**groff -Tdvi**]{.command}
  []{#troff}[[**troff**]{.command}]{.term}                 Is highly compatible with Unix [**troff**]{.command}; it should usually be invoked using the [**groff**]{.command} command, which will also run preprocessors and post-processors in the appropriate order and with the appropriate options
  -------------------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](findutils.md "Findutils-4.10.0"){accesskey="p"}

    Findutils-4.10.0

-   [Next](grub.md "GRUB-2.14"){accesskey="n"}

    GRUB-2.14

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
