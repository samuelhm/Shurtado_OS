::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](m4.md "M4-1.4.21"){accesskey="p"}

    M4-1.4.21

-   [Next](flex.md "Flex-2.6.4"){accesskey="n"}

    Flex-2.6.4

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-bc}8.15. Bc-7.0.3 {#bc-7.0.3 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Bc package contains an arbitrary precision numeric processing language.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [7.8 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.15.1. Installation of Bc {#installation-of-bc .sect2}

Prepare Bc for compilation:

``` userinput
CC='gcc -std=c99' ./configure --prefix=/usr -G -O3 -r
```

::: variablelist
**The meaning of the configure options:**

[*`CC='gcc -std=c99'`*]{.term}

:   This parameter specifies the compiler and C standard to use.

[*`-G`*]{.term}

:   Omit parts of the test suite that won\'t work until the bc program has been installed.

[*`-O3`*]{.term}

:   Specify the optimization to use.

[*`-r`*]{.term}

:   Enable the use of [Readline]{.application} to improve the line editing feature of bc.
:::

Compile the package:

``` userinput
make
```

To test bc, run:

``` userinput
make test
```

Install the package:

``` userinput
make install
```
::::

::::::: {.content lang="en"}
## []{#contents-bc}8.15.2. Contents of Bc {#contents-of-bc .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed programs:** [bc and dc]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------ ------------------------------------------
  []{#bc}[[**bc**]{.command}]{.term}   A command line calculator
  []{#dc}[[**dc**]{.command}]{.term}   A reverse-polish command line calculator
  ------------------------------------ ------------------------------------------
:::
:::::::
:::::::::::::::

::: navfooter
-   [Prev](m4.md "M4-1.4.21"){accesskey="p"}

    M4-1.4.21

-   [Next](flex.md "Flex-2.6.4"){accesskey="n"}

    Flex-2.6.4

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
