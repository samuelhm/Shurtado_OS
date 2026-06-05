::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](bison.md "Bison-3.8.2"){accesskey="p"}

    Bison-3.8.2

-   [Next](bash.md "Bash-5.3"){accesskey="n"}

    Bash-5.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-grep}8.36. Grep-3.12 {#grep-3.12 .sect1}

:::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Grep package contains programs for searching through the contents of files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.5 SBU]{.segbody}
:::

::: seg
**Required disk space:** [48 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.36.1. Installation of Grep {#installation-of-grep .sect2}

First, remove a warning about using egrep and fgrep that makes tests on some packages fail:

``` userinput
sed -i "s/echo/#echo/" src/egrep.sh
```

Prepare Grep for compilation:

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
## []{#contents-grep}8.36.2. Contents of Grep {#contents-of-grep .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed programs:** [egrep, fgrep, and grep]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------------ -----------------------------------------------------------------------------------------------------------
  []{#egrep}[[**egrep**]{.command}]{.term}   Prints lines matching an extended regular expression. It is obsolete, use [**grep -E**]{.command} instead
  []{#fgrep}[[**fgrep**]{.command}]{.term}   Prints lines matching a list of fixed strings. It is obsolete, use [**grep -F**]{.command} instead
  []{#grep}[[**grep**]{.command}]{.term}     Prints lines matching a basic regular expression
  ------------------------------------------ -----------------------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](bison.md "Bison-3.8.2"){accesskey="p"}

    Bison-3.8.2

-   [Next](bash.md "Bash-5.3"){accesskey="n"}

    Bash-5.3

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
