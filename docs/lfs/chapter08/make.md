::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](libpipeline.md "Libpipeline-1.5.8"){accesskey="p"}

    Libpipeline-1.5.8

-   [Next](patch.md "Patch-2.8"){accesskey="n"}

    Patch-2.8

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-make}8.69. Make-4.4.1 {#make-4.4.1 .sect1}

:::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Make package contains a program for controlling the generation of executables and other non-source files of a package from source files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.6 SBU]{.segbody}
:::

::: seg
**Required disk space:** [13 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.69.1. Installation of Make {#installation-of-make .sect2}

Prepare Make for compilation:

``` userinput
./configure --prefix=/usr
```

Compile the package:

``` userinput
make
```

To test the results, issue:

``` userinput
chown -R tester .
su tester -c "PATH=$PATH make check"
```

Install the package:

``` userinput
make install
```
:::

::::::: {.content lang="en"}
## []{#contents-make}8.69.2. Contents of Make {#contents-of-make .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed program:** [make]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ---------------------------------------- ------------------------------------------------------------------------------------------------------------------
  []{#make}[[**make**]{.command}]{.term}   Automatically determines which pieces of a package need to be (re)compiled and then issues the relevant commands
  ---------------------------------------- ------------------------------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](libpipeline.md "Libpipeline-1.5.8"){accesskey="p"}

    Libpipeline-1.5.8

-   [Next](patch.md "Patch-2.8"){accesskey="n"}

    Patch-2.8

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
