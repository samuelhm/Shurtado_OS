::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](ncurses.md "Ncurses-6.6"){accesskey="p"}

    Ncurses-6.6

-   [Next](psmisc.md "Psmisc-23.7"){accesskey="n"}

    Psmisc-23.7

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-sed}8.32. Sed-4.10 {#sed-4.10 .sect1}

::::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Sed package contains a stream editor.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.3 SBU]{.segbody}
:::

::: seg
**Required disk space:** [30 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.32.1. Installation of Sed {#installation-of-sed .sect2}

Prepare Sed for compilation:

``` userinput
./configure --prefix=/usr
```

Compile the package and generate the HTML documentation:

``` userinput
make
make html
```

To test the results, issue:

``` userinput
chown -R tester .
su tester -c "PATH=$PATH make check"
```

Install the package and its documentation:

``` userinput
make install
install -vDm644 doc/sed.html -t /usr/share/doc/sed-4.10
```
:::

:::::::: {.content lang="en"}
## []{#contents-sed}8.32.2. Contents of Sed {#contents-of-sed .sect2}

:::::: segmentedlist
::::: seglistitem
::: seg
**Installed program:** [sed]{.segbody}
:::

::: seg
**Installed directory:** [/usr/share/doc/sed-4.10]{.segbody}
:::
:::::
::::::

::: variablelist
### Short Descriptions

  -------------------------------------- ----------------------------------------------------
  []{#sed}[[**sed**]{.command}]{.term}   Filters and transforms text files in a single pass
  -------------------------------------- ----------------------------------------------------
:::
::::::::
:::::::::::::::

::: navfooter
-   [Prev](ncurses.md "Ncurses-6.6"){accesskey="p"}

    Ncurses-6.6

-   [Next](psmisc.md "Psmisc-23.7"){accesskey="n"}

    Psmisc-23.7

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
