::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](zstd.md "Zstd-1.5.7"){accesskey="p"}

    Zstd-1.5.7

-   [Next](readline.md "Readline-8.3"){accesskey="n"}

    Readline-8.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-file}8.11. File-5.47 {#file-5.47 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The File package contains a utility for determining the type of a given file or files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [19 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.11.1. Installation of File {#installation-of-file .sect2}

Prepare File for compilation:

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

:::::::: {.content lang="en"}
## []{#contents-file}8.11.2. Contents of File {#contents-of-file .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed programs:** [file]{.segbody}
:::

::: seg
**Installed library:** [libmagic.so]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------
  []{#file}[[**file**]{.command}]{.term}        Tries to classify each given file; it does this by performing several tests---file system tests, magic number tests, and language tests
  []{#libmagic}[`libmagic`{.filename}]{.term}   Contains routines for magic number recognition, used by the [**file**]{.command} program
  --------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](zstd.md "Zstd-1.5.7"){accesskey="p"}

    Zstd-1.5.7

-   [Next](readline.md "Readline-8.3"){accesskey="n"}

    Readline-8.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
