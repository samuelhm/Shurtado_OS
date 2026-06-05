::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](asciidoctor.md "Asciidoctor-2.0.26"){accesskey="p"}

    Asciidoctor-2.0.26

-   [Next](compface.md "Compface-1.5.2"){accesskey="n"}

    Compface-1.5.2

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#bogofilter}Bogofilter-1.2.5 {#bogofilter-1.2.5 .sect1}

::::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to Bogofilter {#introduction-to-bogofilter .sect2}

The [Bogofilter]{.application} application is a mail filter that classifies mail as spam or ham (non-spam) by a statistical analysis of the message's header and content (body).

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/bogofilter/bogofilter-1.2.5.tar.xz](https://downloads.sourceforge.net/bogofilter/bogofilter-1.2.5.tar.xz){.ulink}

-   Download MD5 sum: 8763f87adfff7b802ced177d8c654539

-   Download size: 784 KB

-   Estimated disk space required: 19 MB

-   Estimated build time: 0.1 SBU
:::

### Bogofilter Dependencies

#### Recommended

[gsl-2.8](gsl.md "gsl-2.8"){.xref} and [libxml2-2.15.3](libxml2.md "libxml2-2.15.3"){.xref}

#### Optional

[lmdb-0.9.35](../server/lmdb.md "lmdb-0.9.35"){.xref}, [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref}, [Berkeley DB](https://anduin.linuxfromscratch.org/BLFS/bdb/db-5.3.28.tar.gz){.ulink} (deprecated), [QDBM](https://dbmx.net/qdbm/){.ulink} and [TokyoCabinet](https://dbmx.net/tokyocabinet/){.ulink}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you do not install the recommended [gsl-2.8](gsl.md "gsl-2.8"){.xref} package then a statically linked shipped version will be used instead.
:::
::::::

:::: {.installation lang="en"}
## Installation of Bogofilter {#installation-of-bogofilter .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

If you plan to change the version of your database library on an existing installation, or to change to a different database, read the warning at the top of the RELEASE.NOTES file.
:::

Install [Bogofilter]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr                \
            --sysconfdir=/etc/bogofilter \
            --with-database=sqlite3      &&
make
```

To test the results, issue [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
::::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--with-database=sqlite3`*: This switch makes Bogofilter use sqlite as the database, instead of Berkeley DB.

`--with-database={lmdb,qdbm,tokyocabinet}`{.option}: This switch also allows to use lmdb, qdbm, or tokyocabinet as the database.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [bf_compact, bf_copy, bf_tar, bogofilter, bogolexer, bogotune, bogoupgrade and bogoutil]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/etc/bogofilter]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------------------- ---------------------------------------------------------------------------------------
  []{#bf_compact}[[**bf_compact**]{.command}]{.term}        creates a more compact bogofilter working directory with a dump/load cycle
  []{#bf_copy}[[**bf_copy**]{.command}]{.term}              copies a bogofilter working directory to another directory
  []{#bf_tar}[[**bf_tar**]{.command}]{.term}                bundles a bogofilter working directory in tar format and copies it to standard output
  []{#bogofilter-prog}[[**bogofilter**]{.command}]{.term}   is a fast Bayesian spam filter
  []{#bogolexer}[[**bogolexer**]{.command}]{.term}          is used to separate messages into tokens and to test new versions of the lexer.l code
  []{#bogotune}[[**bogotune**]{.command}]{.term}            attempts to find optimum parameter settings for bogofilter
  []{#bogoupgrade}[[**bogoupgrade**]{.command}]{.term}      upgrades the bogofilter database to the current version
  []{#bogoutil}[[**bogoutil**]{.command}]{.term}            dumps, loads, and maintains bogofilter database files
  --------------------------------------------------------- ---------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::::

::: navfooter
-   [Prev](asciidoctor.md "Asciidoctor-2.0.26"){accesskey="p"}

    Asciidoctor-2.0.26

-   [Next](compface.md "Compface-1.5.2"){accesskey="n"}

    Compface-1.5.2

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
