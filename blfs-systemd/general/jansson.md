::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](inih.md "inih-62"){accesskey="p"}

    inih-62

-   [Next](json-c.md "JSON-C-0.18"){accesskey="n"}

    JSON-C-0.18

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#jansson}Jansson-2.15.0 {#jansson-2.15.0 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Jansson {#introduction-to-jansson .sect2}

The [Jansson]{.application} package contains a library used to encode, decode, and manipulate JSON data.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/akheron/jansson/releases/download/v2.15.0/jansson-2.15.0.tar.bz2](https://github.com/akheron/jansson/releases/download/v2.15.0/jansson-2.15.0.tar.bz2){.ulink}

-   Download MD5 sum: 6077c52677206a84304979b226322283

-   Download size: 476 KB

-   Estimated disk space required: 8.4 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of Jansson {#installation-of-jansson .sect2}

Install [jansson]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr --disable-static &&
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
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Library:** [libjansson.so]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- --------------------------------------------------------------------
  []{#libjansson}[`libjansson.so`{.filename}]{.term}   contains an API for encoding, decoding, and manipulating JSON data
  ---------------------------------------------------- --------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](inih.md "inih-62"){accesskey="p"}

    inih-62

-   [Next](json-c.md "JSON-C-0.18"){accesskey="n"}

    JSON-C-0.18

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
