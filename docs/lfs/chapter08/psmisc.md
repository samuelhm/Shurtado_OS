::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](sed.md "Sed-4.10"){accesskey="p"}

    Sed-4.10

-   [Next](gettext.md "Gettext-1.0"){accesskey="n"}

    Gettext-1.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-psmisc}8.33. Psmisc-23.7 {#psmisc-23.7 .sect1}

:::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Psmisc package contains programs for displaying information about running processes.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [6.7 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.33.1. Installation of Psmisc {#installation-of-psmisc .sect2}

Prepare Psmisc for compilation:

``` userinput
./configure --prefix=/usr
```

Compile the package:

``` userinput
make
```

To run the test suite, run:

``` userinput
make check
```

Install the package:

``` userinput
make install
```
:::

::::::: {.content lang="en"}
## []{#contents-psmisc}8.33.2. Contents of Psmisc {#contents-of-psmisc .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed programs:** [fuser, killall, peekfd, prtstat, pslog, pstree, and pstree.x11 (link to pstree)]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------- -----------------------------------------------------------------------------------------------
  []{#fuser}[[**fuser**]{.command}]{.term}             Reports the Process IDs (PIDs) of processes that use the given files or file systems
  []{#killall}[[**killall**]{.command}]{.term}         Kills processes by name; it sends a signal to all processes running any of the given commands
  []{#peekfd}[[**peekfd**]{.command}]{.term}           Peek at file descriptors of a running process, given its PID
  []{#prtstat}[[**prtstat**]{.command}]{.term}         Prints information about a process
  []{#pslog}[[**pslog**]{.command}]{.term}             Reports current logs path of a process
  []{#pstree}[[**pstree**]{.command}]{.term}           Displays running processes as a tree
  []{#pstree.x11}[[**pstree.x11**]{.command}]{.term}   Same as [**pstree**]{.command}, except that it waits for confirmation before exiting
  ---------------------------------------------------- -----------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](sed.md "Sed-4.10"){accesskey="p"}

    Sed-4.10

-   [Next](gettext.md "Gettext-1.0"){accesskey="n"}

    Gettext-1.0

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
