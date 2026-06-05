::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](cmake.md "CMake-4.3.3"){accesskey="p"}

    CMake-4.3.3

-   [Next](dtc.md "dtc-1.8.1"){accesskey="n"}

    dtc-1.8.1

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#doxygen}Doxygen-1.17.0 {#doxygen-1.17.0 .sect1}

:::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Doxygen {#introduction-to-doxygen .sect2}

The [Doxygen]{.application} package contains a documentation system for C++, C, Java, Objective-C, Corba IDL and to some extent PHP, C# and D. It is useful for generating HTML documentation and/or an off-line reference manual from a set of documented source files. There is also support for generating output in RTF, PostScript, hyperlinked PDF, compressed HTML, and Unix man pages. The documentation is extracted directly from the sources, which makes it much easier to keep the documentation consistent with the source code.

You can also configure [Doxygen]{.application} to extract the code structure from undocumented source files. This is very useful to quickly find your way in large source distributions. Used along with [Graphviz]{.application}, you can also visualize the relations between the various elements by means of include dependency graphs, inheritance diagrams, and collaboration diagrams, which are all generated automatically.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://doxygen.nl/files/doxygen-1.17.0.src.tar.gz](https://doxygen.nl/files/doxygen-1.17.0.src.tar.gz){.ulink}

-   Download MD5 sum: 7b721b8733c63d6751019da0d01d018b

-   Download size: 9.0 MB

-   Estimated disk space required: 428 MB (with tests)

-   Estimated build time: 1.2 SBU (with tests; both using parallelism=4)
:::

### Doxygen Dependencies

#### Required

[CMake-4.3.3](cmake.md "CMake-4.3.3"){.xref} and [git-2.54.0](git.md "Git-2.54.0"){.xref}

#### Recommended

[Qt-6.11.1](../x/qt6.md "Qt-6.11.1"){.xref} (for doxywizard)

#### Optional

[Graphviz-15.0.0](graphviz.md "Graphviz-15.0.0"){.xref}, [ghostscript-10.07.1](../pst/gs.md "ghostscript-10.07.1"){.xref}, [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref} (required for the tests), [LLVM-22.1.0](llvm.md "LLVM-22.1.0"){.xref} (with clang), [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} (or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref}), [xapian-2.0.0](xapian.md "Xapian-2.0.0"){.xref} (for doxyindexer), and [javacc](https://javacc.github.io/javacc/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of Doxygen {#installation-of-doxygen .sect2}

First, fix up some python scripts:

``` userinput
grep -rl '^#!.*python$' | xargs sed -i '1s/python/&3/'
```

Install [Doxygen]{.application} by running the following commands:

``` userinput
mkdir -v build &&
cd       build &&

cmake -G "Unix Makefiles"          \
      -D CMAKE_BUILD_TYPE=Release  \
      -D CMAKE_INSTALL_PREFIX=/usr \
      -D build_wizard=ON           \
      -D force_qt=Qt6              \
      -W no-dev .. &&
make
```

To test the results, issue: [**make tests**]{.command}. One test, 012_cite.dox, is known to fail if [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} or [install-tl-unx](../pst/tl-installer.md "install-tl-unx"){.xref} is not installed.

If you wish to generate the package documentation, you must have [Python]{.application}, [TeX Live]{.application} (for HTML docs) and [Ghostscript]{.application} (for PDF docs) installed, then issue the following command:

``` userinput
cmake  -D build_doc=ON \
       -D DOC_INSTALL_DIR=share/doc/doxygen-1.17.0 \
       .. &&
make docs
```

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -vm644 ../doc/*.1 /usr/share/man/man1
```

If you have generated the package documentation, then the man pages are automatically installed, and you do not need to run the last [**install ...**]{.command} command.
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

`-D build_wizard=OFF`{.option}: Use this switch if [Qt6]{.application} is not installed.

`-D build_search=ON`{.option}: Use this switch if [xapian]{.application} is installed and you wish to build external search tools ([**doxysearch.cgi**]{.command} and [**doxyindexer)**]{.command}.

`-D force_qt6=ON`{.option}: Use this switch to build [**doxywizard**]{.command} with Qt6 even if Qt5 is installed.

`-D use_libclang=ON`{.option}: Use this switch if [llvm]{.application} with [clang]{.application} are installed, to add support for libclang parsing.
:::

::: {.configuration lang="en"}
## Configuring Doxygen {#configuring-doxygen .sect2}

There is no real configuration necessary for the [Doxygen]{.application} package although three additional packages are required if you wish to use extended capabilities. If you require formulas to create PDF documentation, then you must have [texlive-20250308](../pst/texlive.md "texlive-20250308-source"){.xref} installed. If you require formulas to convert PostScript files to bitmaps, then you must have [ghostscript-10.07.1](../pst/gs.md "ghostscript-10.07.1"){.xref} installed.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [doxygen and optionally, doxywizard, doxyindexer and doxysearch.cgi]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/doxygen-1.17.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#doxygen-prog}[[**doxygen**]{.command}]{.term}            is a command-line based utility used to generate template configuration files and then generate documentation from these templates. Use [**doxygen --help**]{.command} for an explanation of the command-line parameters
  []{#doxywizard}[[**doxywizard**]{.command}]{.term}           is a GUI front-end for configuring and running [**doxygen**]{.command}
  []{#doxyindexer}[[**doxyindexer**]{.command}]{.term}         generates a search index called `doxysearch.db`{.filename} from one or more search data files produced by [**doxygen**]{.command}. See, e.g. [https://javacc.github.io/javacc/](https://javacc.github.io/javacc/){.ulink}
  []{#doxysearch.cgi}[[**doxysearch.cgi**]{.command}]{.term}   is a CGI program to search the data indexed by [**doxyindexer**]{.command}
  ------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](cmake.md "CMake-4.3.3"){accesskey="p"}

    CMake-4.3.3

-   [Next](dtc.md "dtc-1.8.1"){accesskey="n"}

    dtc-1.8.1

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
