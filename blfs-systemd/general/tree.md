::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](time.md "Time-1.10"){accesskey="p"}

    Time-1.10

-   [Next](unixodbc.md "unixODBC-2.3.14"){accesskey="n"}

    unixODBC-2.3.14

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#tree}tree-2.3.2 {#tree-2.3.2 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to tree {#introduction-to-tree .sect2}

The [tree]{.application} application is useful to display a directory tree's contents, including files, subdirectories, and links.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://gitlab.com/OldManProgrammer/unix-tree/-/archive/2.3.2/unix-tree-2.3.2.tar.bz2](https://gitlab.com/OldManProgrammer/unix-tree/-/archive/2.3.2/unix-tree-2.3.2.tar.bz2){.ulink}

-   Download MD5 sum: 1f87820af612c03bfcc0fe7800ce0c71

-   Download size: 60 KB

-   Estimated disk space required: 832 KB

-   Estimated build time: less than 0.1 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of tree {#installation-of-tree .sect2}

Install [tree]{.application} by running the following commands:

``` userinput
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make PREFIX=/usr MANDIR=/usr/share/man install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [tree]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------- -----------------------------------------
  []{#tree-app}[[**tree**]{.command}]{.term}   displays a directory tree in a terminal
  -------------------------------------------- -----------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](time.md "Time-1.10"){accesskey="p"}

    Time-1.10

-   [Next](unixodbc.md "unixODBC-2.3.14"){accesskey="n"}

    unixODBC-2.3.14

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
