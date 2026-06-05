::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](gdbm.md "GDBM-1.26"){accesskey="p"}

    GDBM-1.26

-   [Next](expat.md "Expat-2.8.1"){accesskey="n"}

    Expat-2.8.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-gperf}8.40. Gperf-3.3 {#gperf-3.3 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
Gperf generates a perfect hash function from a key set.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [12 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.40.1. Installation of Gperf {#installation-of-gperf .sect2}

Prepare Gperf for compilation:

``` userinput
./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.3
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
## []{#contents-gperf}8.40.2. Contents of Gperf {#contents-of-gperf .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed program:** [gperf]{.segbody}
:::

::: seg
**Installed directory:** [/usr/share/doc/gperf-3.3]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  ------------------------------------------ -----------------------------------------
  []{#gperf}[[**gperf**]{.command}]{.term}   Generates a perfect hash from a key set
  ------------------------------------------ -----------------------------------------
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](gdbm.md "GDBM-1.26"){accesskey="p"}

    GDBM-1.26

-   [Next](expat.md "Expat-2.8.1"){accesskey="n"}

    Expat-2.8.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
