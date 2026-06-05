::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](tar.md "Tar-1.35"){accesskey="p"}

    Tar-1.35

-   [Next](vim.md "Vim-9.2.0567"){accesskey="n"}

    Vim-9.2.0567

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-texinfo}8.72. Texinfo-7.3 {#texinfo-7.3 .sect1}

::::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Texinfo package contains programs for reading, writing, and converting info pages.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.3 SBU]{.segbody}
:::

::: seg
**Required disk space:** [160 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.72.1. Installation of Texinfo {#installation-of-texinfo .sect2}

Prepare Texinfo for compilation:

``` userinput
./configure --prefix=/usr
```

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
make check
```

Install the package:

``` userinput
make install
```

Optionally, install the components belonging in a TeX installation:

``` userinput
make TEXMF=/usr/share/texmf install-tex
```

::: variablelist
**The meaning of the make parameter:**

[*`TEXMF=/usr/share/texmf`*]{.term}

:   The `TEXMF`{.envar} makefile variable holds the location of the root of the TeX tree if, for example, a TeX package will be installed later.
:::

The Info documentation system uses a plain text file to hold its list of menu entries. The file is located at `/usr/share/info/dir`{.filename}. Unfortunately, due to occasional problems in the Makefiles of various packages, it can sometimes get out of sync with the info pages installed on the system. If the `/usr/share/info/dir`{.filename} file ever needs to be recreated, the following optional commands will accomplish the task:

``` userinput
pushd /usr/share/info
  rm -v dir
  for f in *
    do install-info $f dir 2>/dev/null
  done
popd
```
::::

::::::::: {.content lang="en"}
## []{#contents-texinfo}8.72.2. Contents of Texinfo {#contents-of-texinfo .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [info, install-info, makeinfo (link to texi2any), pdftexi2dvi, pod2texi, texi2any, texi2dvi, texi2pdf, and texindex]{.segbody}
:::

::: seg
**Installed library:** [MiscXS.so, Parsetexi.so, and XSParagraph.so (all in /usr/lib/texinfo)]{.segbody}
:::

::: seg
**Installed directories:** [/usr/share/texinfo and /usr/lib/texinfo]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#info}[[**info**]{.command}]{.term}                   Used to read info pages which are similar to man pages, but often go much deeper than just explaining all the available command line options \[For example, compare [**man bison**]{.command} and [**info bison**]{.command}.\]
  []{#install-info}[[**install-info**]{.command}]{.term}   Used to install info pages; it updates entries in the [**info**]{.command} index file
  []{#makeinfo}[[**makeinfo**]{.command}]{.term}           Translates the given Texinfo source documents into info pages, plain text, or HTML
  []{#pdftexi2dvi}[[**pdftexi2dvi**]{.command}]{.term}     Used to format the given Texinfo document into a Portable Document Format (PDF) file
  []{#pod2texi}[[**pod2texi**]{.command}]{.term}           Converts Pod to Texinfo format
  []{#texi2any}[[**texi2any**]{.command}]{.term}           Translate Texinfo source documentation to various other formats
  []{#texi2dvi}[[**texi2dvi**]{.command}]{.term}           Used to format the given Texinfo document into a device-independent file that can be printed
  []{#texi2pdf}[[**texi2pdf**]{.command}]{.term}           Used to format the given Texinfo document into a Portable Document Format (PDF) file
  []{#texindex}[[**texindex**]{.command}]{.term}           Used to sort Texinfo index files
  -------------------------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](tar.md "Tar-1.35"){accesskey="p"}

    Tar-1.35

-   [Next](vim.md "Vim-9.2.0567"){accesskey="n"}

    Vim-9.2.0567

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
