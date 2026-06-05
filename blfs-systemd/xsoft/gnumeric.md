::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 39. Office Programs

-   [Prev](office.md "Office Programs"){accesskey="p"}

    Office Programs

-   [Next](libreoffice.md "LibreOffice-26.2.2"){accesskey="n"}

    LibreOffice-26.2.2

-   [Up](office.md "Chapter 39. Office Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gnumeric}Gnumeric-1.12.61 {#gnumeric-1.12.61 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Gnumeric {#introduction-to-gnumeric .sect2}

The [Gnumeric]{.application} package contains a spreadsheet program which is useful for mathematical analysis.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://download.gnome.org/sources/gnumeric/1.12/gnumeric-1.12.61.tar.xz](https://download.gnome.org/sources/gnumeric/1.12/gnumeric-1.12.61.tar.xz){.ulink}

-   Download MD5 sum: 8c6cbffb41eb2a8ffb97708e21482d7f

-   Download size: 17 MB

-   Estimated disk space required: 254 MB (add 7 MB for tests)

-   Estimated build time: 1.9 SBU (add 2.6 SBU for tests; both using parallelism=4)
:::

### Gnumeric Dependencies

#### Required

[GOffice-0.10.61](../x/goffice010.md "GOffice-0.10.61"){.xref} and [itstool-2.0.7](../pst/itstool.md "itstool-2.0.7"){.xref}

#### Recommended Runtime

An icon theme such as [adwaita-icon-theme-50.0](../x/adwaita-icon-theme.md "adwaita-icon-theme-50.0"){.xref}, [oxygen-icons-6.1.0](../x/oxygen-icons.md "oxygen-icons-6.1.0"){.xref}, or [gnome-icon-theme-3.12.0](../x/gnome-icon-theme.md "gnome-icon-theme-3.12.0"){.xref}, [a graphical environment](../x/installing.md "Chapter 24. Graphical Environments"){.xref}, and [Yelp-49.0](../gnome/yelp.md "Yelp-49.0"){.xref} for the built-in help functionality

#### Optional

[DConf-0.49.0](../gnome/dconf.md "DConf-0.49.0 / DConf-Editor-49.0"){.xref} (to prevent some test failures), [GLib-2.88.1](../general/glib2.md "GLib-2.88.1"){.xref} (with GObject Introspection), [PyGObject-3.56.3](../general/python-modules.md#pygobject3 "PyGObject-3.56.3"){.xref}, [Valgrind-3.27.1](../general/valgrind.md "Valgrind-3.27.1"){.xref} (for some tests), [dblatex](https://dblatex.sourceforge.net/){.ulink} (for PDF docs), [libgda](https://www.gnome-db.org/){.ulink}, [Mono](https://www.mono-project.com/){.ulink}, [pxlib](https://pxlib.sourceforge.net/){.ulink}, and [Psiconv](https://frodo.looijaard.name/project/psiconv){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Gnumeric {#installation-of-gnumeric .sect2}

Install [Gnumeric]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr  &&
make
```

This package must be installed before the test suite is run.

Now, as the `root`{.systemitem} user:

``` root
make install
```

To run the tests, issue [**make check**]{.command}. Tests should be run from an active X session, and [DConf-0.49.0](../gnome/dconf.md "DConf-0.49.0 / DConf-Editor-49.0"){.xref} should be installed to prevent some failures. Four tests are known to fail. Additional failures may occur if valgrind is installed.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`--enable-pdfdocs`{.option}: Use this switch if you have installed dblatex and wish to create PDF docs.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [gnumeric (symlink), gnumeric-1.12.61, ssconvert, ssdiff, ssgrep, and ssindex]{.segbody}
:::

::: seg
**Installed Libraries:** [libspreadsheet.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/libspreadsheet-1.12, /usr/lib/gnumeric, /usr/lib/goffice/0.10/plugins/gnumeric, /usr/share/gnumeric, and /usr/share/help/{C,cs,de,es}/gnumeric]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ -------------------------------------------------------------------------------------------------
  []{#gnumeric-prog}[[**gnumeric**]{.command}]{.term}          is a symlink to [**gnumeric-1.12.61**]{.command}
  []{#gnumeric-1}[[**gnumeric-1.12.61**]{.command}]{.term}     is [GNOME]{.application}'s spreadsheet application
  []{#ssconvert}[[**ssconvert**]{.command}]{.term}             is a command line utility to convert spreadsheet files between various spreadsheet file formats
  []{#ssdiff}[[**ssdiff**]{.command}]{.term}                   is a command line utility to compare two spreadsheets
  []{#ssgrep}[[**ssgrep**]{.command}]{.term}                   is a command line utility to search spreadsheets for strings
  []{#ssindex}[[**ssindex**]{.command}]{.term}                 is a command line utility to generate index data for spreadsheet files
  []{#libspreadsheet}[`libspreadsheet.so`{.filename}]{.term}   contains the gnumeric API functions
  ------------------------------------------------------------ -------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](office.md "Office Programs"){accesskey="p"}

    Office Programs

-   [Next](libreoffice.md "LibreOffice-26.2.2"){accesskey="n"}

    LibreOffice-26.2.2

-   [Up](office.md "Chapter 39. Office Programs"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
