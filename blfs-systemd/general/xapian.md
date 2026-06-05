::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](wv.md "wv-1.2.9"){accesskey="p"}

    wv-1.2.9

-   [Next](graphlib.md "Graphics and Font Libraries"){accesskey="n"}

    Graphics and Font Libraries

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#xapian}Xapian-2.0.0 {#xapian-2.0.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to xapian {#introduction-to-xapian .sect2}

Xapian is an open source search engine library.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://oligarchy.co.uk/xapian/2.0.0/xapian-core-2.0.0.tar.xz](https://oligarchy.co.uk/xapian/2.0.0/xapian-core-2.0.0.tar.xz){.ulink}

-   Download MD5 sum: 8105ac73b1a6510501ecea8f0e78b9b3

-   Download size: 3.3 MB

-   Estimated disk space required: 174 MB (add 157 MB for tests)

-   Estimated build time: 0.6 SBU (add 7.0 SBU for tests; both using parallelism=4)
:::

### Xapian Dependencies

#### Optional

[Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref} (for tests)
:::::

::: {.installation lang="en"}
## Installation of Xapian {#installation-of-xapian .sect2}

Install [Xapian]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xapian-core-2.0.0 &&
make
```

To run the test suite, issue: [**make check**]{.command}.

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
**Installed Programs:** [copydatabase, simpleexpand, simpleindex, simplesearch, xapian-check, xapian-compact, xapian-config, xapian-delve, xapian-metadata, xapian-pos, xapian-progsrv, xapian-quest, xapian-replicate, xapian-replicate-server, and xapian-tcpsrv]{.segbody}
:::

::: seg
**Installed Libraries:** [libxapian.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/xapian, /usr/lib/cmake/xapian, /usr/share/doc/xapian-core-2.0.0, and /usr/share/xapian-core]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------------------------------------ --------------------------------------------------------------------------------------
  []{#copydatabase}[[**copydatabase**]{.command}]{.term}                         performs a document-by-document copy of one or more [Xapian]{.application} databases
  []{#xapian-quest}[[**xapian-quest**]{.command}]{.term}                         is a command line tool to search through a database
  []{#simpleexpand}[[**simpleexpand**]{.command}]{.term}                         is a simple example program demonstrating query expansion
  []{#simpleindex}[[**simpleindex**]{.command}]{.term}                           indexes each paragraph of a text file as a [Xapian]{.application} document
  []{#simplesearch}[[**simplesearch**]{.command}]{.term}                         is a simple command line search utility
  []{#xapian-check}[[**xapian-check**]{.command}]{.term}                         checks the consistency of a database or table
  []{#xapian-compact}[[**xapian-compact**]{.command}]{.term}                     compacts a database, or merges and compacts several databases
  []{#xapian-config}[[**xapian-config**]{.command}]{.term}                       reports information about the installed version of xapian
  []{#xapian-delve}[[**xapian-delve**]{.command}]{.term}                         inspects the contents of a [Xapian]{.application} database
  []{#xapian-metadata}[[**xapian-metadata**]{.command}]{.term}                   reads and writes user metadata
  []{#xapian-pos}[[**xapian-pos**]{.command}]{.term}                             inspects the contents of a flint table for development or debugging
  []{#xapian-progsrv}[[**xapian-progsrv**]{.command}]{.term}                     is a remote server for use with [ProgClient]{.application}
  []{#xapian-replicate}[[**xapian-replicate**]{.command}]{.term}                 replicates a database from a master server to a local copy
  []{#xapian-replicate-server}[[**xapian-replicate-server**]{.command}]{.term}   services database replication requests from clients
  []{#xapian-tcpsrv}[[**xapian-tcpsrv**]{.command}]{.term}                       is the TCP daemon for use with [Xapian]{.application}'s remote backend
  ------------------------------------------------------------------------------ --------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](wv.md "wv-1.2.9"){accesskey="p"}

    wv-1.2.9

-   [Next](graphlib.md "Graphics and Font Libraries"){accesskey="n"}

    Graphics and Font Libraries

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
