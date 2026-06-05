::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](genutils.md "General Utilities"){accesskey="p"}

    General Utilities

-   [Next](bogofilter.md "Bogofilter-1.2.5"){accesskey="n"}

    Bogofilter-1.2.5

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#asciidoctor}Asciidoctor-2.0.26 {#asciidoctor-2.0.26 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Asciidoctor {#introduction-to-asciidoctor .sect2}

Asciidoctor is a fast, open source text processor and publishing toolchain for converting AsciiDoc content to HTML5, DocBook, PDF, and other formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/asciidoctor/asciidoctor/archive/v2.0.26/asciidoctor-2.0.26.tar.gz](https://github.com/asciidoctor/asciidoctor/archive/v2.0.26/asciidoctor-2.0.26.tar.gz){.ulink}

-   Download MD5 sum: 2bfb3830092af1dc213a99e785688372

-   Download size: 1.6 MB

-   Estimated disk space required: 5.5 MB

-   Estimated build time: less than 0.1 SBU
:::

### Asciidoctor Dependencies

#### Required

[Ruby-4.0.5](ruby.md "Ruby-4.0.5"){.xref}
:::::

:::: {.installation lang="en"}
## Installation of Asciidoctor {#installation-of-asciidoctor .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

When building this package, the following message may appear:

``` screen
fatal: not a git repository (or any of the parent directories): .git
```

. This is normal, and the package will continue building past this point.
:::

Build the Ruby gem:

``` userinput
gem build asciidoctor.gemspec
```

The test suite needs many Ruby gems beyond the scope of BLFS.

Now, as the `root`{.systemitem} user:

``` root
gem install asciidoctor-2.0.26.gem &&
install -vm644 man/asciidoctor.1 /usr/share/man/man1
```
::::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [asciidoctor]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/lib/ruby/gems/4.0.0/gems/asciidoctor-2.0.26 and /usr/lib/ruby/gems/4.0.0/doc/asciidoctor-2.0.26]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------------- --------------------------------------------------------------------
  []{#asciidoctor-prog}[[**asciidoctor**]{.command}]{.term}   converts AsciiDoc source files to HTML, DocBook, and other formats
  ----------------------------------------------------------- --------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](genutils.md "General Utilities"){accesskey="p"}

    General Utilities

-   [Next](bogofilter.md "Bogofilter-1.2.5"){accesskey="n"}

    Bogofilter-1.2.5

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
