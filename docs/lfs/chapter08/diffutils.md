::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](coreutils.md "Coreutils-9.11"){accesskey="p"}

    Coreutils-9.11

-   [Next](gawk.md "Gawk-5.4.0"){accesskey="n"}

    Gawk-5.4.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-diffutils}8.60. Diffutils-3.12 {#diffutils-3.12 .sect1}

:::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Diffutils package contains programs that show the differences between files or directories.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.5 SBU]{.segbody}
:::

::: seg
**Required disk space:** [51 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.60.1. Installation of Diffutils {#installation-of-diffutils .sect2}

Prepare Diffutils for compilation:

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
:::

::::::: {.content lang="en"}
## []{#contents-diffutils}8.60.2. Contents of Diffutils {#contents-of-diffutils .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed programs:** [cmp, diff, diff3, and sdiff]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------------ -------------------------------------------------------------------------------
  []{#cmp}[[**cmp**]{.command}]{.term}       Compares two files and reports any differences byte by byte
  []{#diff}[[**diff**]{.command}]{.term}     Compares two files or directories and reports which lines in the files differ
  []{#diff3}[[**diff3**]{.command}]{.term}   Compares three files line by line
  []{#sdiff}[[**sdiff**]{.command}]{.term}   Merges two files and interactively outputs the results
  ------------------------------------------ -------------------------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](coreutils.md "Coreutils-9.11"){accesskey="p"}

    Coreutils-9.11

-   [Next](gawk.md "Gawk-5.4.0"){accesskey="n"}

    Gawk-5.4.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
