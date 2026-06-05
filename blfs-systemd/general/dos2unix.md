::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](desktop-file-utils.md "desktop-file-utils-0.28"){accesskey="p"}

    desktop-file-utils-0.28

-   [Next](editorconfig-core-c.md "editorconfig-core-c-0.12.11"){accesskey="n"}

    editorconfig-core-c-0.12.11

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#dos2unix}dos2unix-7.5.6 {#dos2unix-7.5.6 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to dos2unix {#introduction-to-dos2unix .sect2}

The [dos2unix]{.application} package contains an any-to-any text format converter.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://downloads.sourceforge.net/dos2unix/dos2unix-7.5.6.tar.gz](https://downloads.sourceforge.net/dos2unix/dos2unix-7.5.6.tar.gz){.ulink}

-   Download MD5 sum: 0cda65d5e461b1d8162bf1194a669531

-   Download size: 976 KB

-   Estimated disk space required: 8.9 MB (with tests)

-   Estimated build time: less than 0.1 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of dos2unix {#installation-of-dos2unix .sect2}

Build [dos2unix]{.application} by running the following commands:

``` userinput
make
```

To test the results, issue: [**make check**]{.command}.

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
**Installed Program:** [dos2unix, mac2unix, unix2dos, and unix2mac]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/share/doc/dos2unix-7.5.6]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ----------------------------------------------------- --------------------------------------------------------
  []{#dos2unix-prog}[[**dos2unix**]{.command}]{.term}   converts plain text files in DOS format to Unix format
  []{#mac2unix}[[**mac2unix**]{.command}]{.term}        converts plain text files in Mac format to Unix format
  []{#unix2dos}[[**unix2dos**]{.command}]{.term}        converts plain text files in Unix format to DOS format
  []{#unix2mac}[[**unix2mac**]{.command}]{.term}        converts plain text files in Unix format to Mac format
  ----------------------------------------------------- --------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](desktop-file-utils.md "desktop-file-utils-0.28"){accesskey="p"}

    desktop-file-utils-0.28

-   [Next](editorconfig-core-c.md "editorconfig-core-c-0.12.11"){accesskey="n"}

    editorconfig-core-c-0.12.11

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
