::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](bc.md "Bc-7.0.3"){accesskey="p"}

    Bc-7.0.3

-   [Next](tcl.md "Tcl-8.6.18"){accesskey="n"}

    Tcl-8.6.18

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-flex}8.16. Flex-2.6.4 {#flex-2.6.4 .sect1}

:::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Flex package contains a utility for generating programs that recognize patterns in text.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [33 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.16.1. Installation of Flex {#installation-of-flex .sect2}

Prepare Flex for compilation:

``` userinput
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/flex-2.6.4
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

A few programs do not know about [**flex**]{.command} yet and try to run its predecessor, [**lex**]{.command}. To support those programs, create a symbolic link named `lex`{.filename} that runs `flex`{.filename} in [**lex**]{.command} emulation mode, and also create the man page of [**lex**]{.command} as a symlink:

``` userinput
ln -sv flex   /usr/bin/lex
ln -sv flex.1 /usr/share/man/man1/lex.1
```
:::

::::::::: {.content lang="en"}
## []{#contents-flex}8.16.2. Contents of Flex {#contents-of-flex .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed programs:** [flex, flex++ (link to flex), and lex (link to flex)]{.segbody}
:::

::: seg
**Installed libraries:** [libfl.so]{.segbody}
:::

::: seg
**Installed directory:** [/usr/share/doc/flex-2.6.4]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#flex}[[**flex**]{.command}]{.term}       A tool for generating programs that recognize patterns in text; it allows for the versatility to specify the rules for pattern-finding, eradicating the need to develop a specialized program
  []{#flexpp}[[**flex++**]{.command}]{.term}   An extension of flex, is used for generating C++ code and classes. It is a symbolic link to [**flex**]{.command}
  []{#lex}[[**lex**]{.command}]{.term}         A symbolic link that runs [**flex**]{.command} in [**lex**]{.command} emulation mode
  []{#libfl}[`libfl`{.filename}]{.term}        The `flex`{.filename} library
  -------------------------------------------- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
::::::::::::::::

::: navfooter
-   [Prev](bc.md "Bc-7.0.3"){accesskey="p"}

    Bc-7.0.3

-   [Next](tcl.md "Tcl-8.6.18"){accesskey="n"}

    Tcl-8.6.18

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
