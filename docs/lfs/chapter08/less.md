::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](inetutils.md "Inetutils-2.8"){accesskey="p"}

    Inetutils-2.8

-   [Next](perl.md "Perl-5.42.2"){accesskey="n"}

    Perl-5.42.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-less}8.43. Less-702 {#less-702 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Less package contains a text file viewer.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [17 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 8.43.1. Installation of Less {#installation-of-less .sect2}

Prepare Less for compilation:

``` userinput
./configure --prefix=/usr --sysconfdir=/etc
```

::: variablelist
**The meaning of the configure options:**

[*`--sysconfdir=/etc`*]{.term}

:   This option tells the programs created by the package to look in `/etc`{.filename} for the configuration files.
:::

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
::::

::::::: {.content lang="en"}
## []{#contents-less}8.43.2. Contents of Less {#contents-of-less .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed programs:** [less, lessecho, and lesskey]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------
  []{#less}[[**less**]{.command}]{.term}           A file viewer or pager; it displays the contents of the given file, letting the user scroll, find strings, and jump to marks
  []{#lessecho}[[**lessecho**]{.command}]{.term}   Needed to expand meta-characters, such as [*\**]{.emphasis} and [*?*]{.emphasis}, in filenames on Unix systems
  []{#lesskey}[[**lesskey**]{.command}]{.term}     Used to specify the key bindings for [**less**]{.command}
  ------------------------------------------------ ------------------------------------------------------------------------------------------------------------------------------
:::
:::::::
:::::::::::::::

::: navfooter
-   [Prev](inetutils.md "Inetutils-2.8"){accesskey="p"}

    Inetutils-2.8

-   [Next](perl.md "Perl-5.42.2"){accesskey="n"}

    Perl-5.42.2

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
