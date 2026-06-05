::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](gettext.md "Gettext-1.0"){accesskey="p"}

    Gettext-1.0

-   [Next](grep.md "Grep-3.12"){accesskey="n"}

    Grep-3.12

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-bison}8.35. Bison-3.8.2 {#bison-3.8.2 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Bison package contains a parser generator.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [2.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [63 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.35.1. Installation of Bison {#installation-of-bison .sect2}

Prepare Bison for compilation:

``` userinput
./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.8.2
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

::::::::: {.content lang="en"}
## []{#contents-bison}8.35.2. Contents of Bison {#contents-of-bison .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [bison and yacc]{.segbody}
:::

::: seg
**Installed library:** [liby.a]{.segbody}
:::

::: seg
**Installed directory:** [/usr/share/bison]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#bison}[[**bison**]{.command}]{.term}   Generates, from a series of rules, a program for analyzing the structure of text files; Bison is a replacement for Yacc (Yet Another Compiler Compiler)
  []{#yacc}[[**yacc**]{.command}]{.term}     A wrapper for [**bison**]{.command}, meant for programs that still call [**yacc**]{.command} instead of [**bison**]{.command}; it calls [**bison**]{.command} with the *`-y`* option
  []{#liby}[`liby`{.filename}]{.term}        The Yacc library containing implementations of Yacc-compatible `yyerror`{.function} and `main`{.function} functions; this library is normally not very useful, but POSIX requires it
  ------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](gettext.md "Gettext-1.0"){accesskey="p"}

    Gettext-1.0

-   [Next](grep.md "Grep-3.12"){accesskey="n"}

    Grep-3.12

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
