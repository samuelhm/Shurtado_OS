::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 11. General Utilities

-   [Prev](tidy-html5.md "tidy-html5-5.8.0"){accesskey="p"}

    tidy-html5-5.8.0

-   [Next](tree.md "tree-2.3.2"){accesskey="n"}

    tree-2.3.2

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#time}Time-1.10 {#time-1.10 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Time {#introduction-to-time .sect2}

The [time]{.application} utility is a program that measures many of the CPU resources, such as time and memory, that other programs use. The GNU version can format the output in arbitrary ways by using a printf-style format string to include various resource measurements.

Although the shell has a builtin command providing similar functionalities, this utility is required by the LSB.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://ftpmirror.gnu.org/time/time-1.10.tar.gz](https://ftpmirror.gnu.org/time/time-1.10.tar.gz){.ulink}

-   Download MD5 sum: ded256bf7d215594fb3b51d3d9d74e15

-   Download size: 832 KB

-   Estimated disk space required: 6.2 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of Time {#installation-of-time .sect2}

Install [Time]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
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
**Installed Program:** [time]{.segbody}
:::

::: seg
**Installed Library:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- ------------------------------------------------------
  []{#time-prog}[[**time**]{.command}]{.term}   reports various statistics about an executed command
  --------------------------------------------- ------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](tidy-html5.md "tidy-html5-5.8.0"){accesskey="p"}

    tidy-html5-5.8.0

-   [Next](tree.md "tree-2.3.2"){accesskey="n"}

    tree-2.3.2

-   [Up](genutils.md "Chapter 11. General Utilities"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
