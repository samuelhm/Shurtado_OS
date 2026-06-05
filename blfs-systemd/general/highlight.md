::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](gtk-doc.md "GTK-Doc-1.36.1"){accesskey="p"}

    GTK-Doc-1.36.1

-   [Next](ibus.md "ibus-1.5.34"){accesskey="n"}

    ibus-1.5.34

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#highlight}Highlight-4.20 {#highlight-4.20 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Highlight {#introduction-to-highlight .sect2}

[Highlight]{.application} is a utility that converts source code to formatted text with syntax highlighting.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [http://www.andre-simon.de/zip/highlight-4.20.tar.bz2](http://www.andre-simon.de/zip/highlight-4.20.tar.bz2){.ulink}

-   Download MD5 sum: 72d35e33f50616e45e4b8b5d3204a4bd

-   Download size: 1.5 MB

-   Estimated disk space required: 33 MB (with gui)

-   Estimated build time: 0.2 SBU (Using parallelism=4; with gui)
:::

### Highlight Dependencies

#### Required

[Boost-1.91.0-1](boost.md "boost-1.91.0-1"){.xref} and [Lua-5.4.8](lua.md "Lua-5.4.8"){.xref}

#### Optional

[Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref} (to build the GUI front-end)
:::::

::: {.installation lang="en"}
## Installation of Highlight {#installation-of-highlight .sect2}

For consistency, do not compress man pages.

``` userinput
sed -i '/GZIP/s/^/#/' makefile
```

To build [Highlight]{.application} run the following command:

``` userinput
make
```

To build the [qt6]{.application} GUI front-end, run the following command:

``` userinput
make doc_dir=/usr/share/doc/highlight-4.20/ gui
```

This package does not come with a test suite.

To install [Highlight]{.application}, run the following command as the `root`{.systemitem} user:

``` root
make doc_dir=/usr/share/doc/highlight-4.20/ install
```

To install the GUI program, run the following command as the `root`{.systemitem} user:

``` userinput
make install-gui
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`doc_dir=/usr/share/doc/highlight-4.20/`*: installs the highlight documentation into a versioned directory. This parameter is also needed for [**make gui**]{.command}, because its value would be hardcoded into the gui executable. Note that the trailing [“[/]{.quote}”]{.quote} is necessary.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [highlight and highlight-gui (optional)]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/highlight, /usr/share/doc/highlight-4.20, and /usr/share/highlight]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- --------------------------------------------------------------------
  []{#highlight-prog}[[**highlight**]{.command}]{.term}      is a universal source code to formatted text converter
  []{#highlight-gui}[[**highlight-gui**]{.command}]{.term}   is the [qt6]{.application} interface to [**highlight**]{.command}.
  ---------------------------------------------------------- --------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gtk-doc.md "GTK-Doc-1.36.1"){accesskey="p"}

    GTK-Doc-1.36.1

-   [Next](ibus.md "ibus-1.5.34"){accesskey="n"}

    ibus-1.5.34

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
