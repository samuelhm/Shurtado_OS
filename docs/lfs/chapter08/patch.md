::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](make.md "Make-4.4.1"){accesskey="p"}

    Make-4.4.1

-   [Next](tar.md "Tar-1.35"){accesskey="n"}

    Tar-1.35

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-patch}8.70. Patch-2.8 {#patch-2.8 .sect1}

:::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Patch package contains a program for modifying or creating files by applying a ["[patch]{.quote}"]{.quote} file typically created by the [**diff**]{.command} program.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [14 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.70.1. Installation of Patch {#installation-of-patch .sect2}

Prepare Patch for compilation:

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
## []{#contents-patch}8.70.2. Contents of Patch {#contents-of-patch .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed program:** [patch]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  ------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#patch}[[**patch**]{.command}]{.term}   Modifies files according to a patch file (A patch file is normally a difference listing created with the [**diff**]{.command} program. By applying these differences to the original files, [**patch**]{.command} creates the patched versions.)
  ------------------------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](make.md "Make-4.4.1"){accesskey="p"}

    Make-4.4.1

-   [Next](tar.md "Tar-1.35"){accesskey="n"}

    Tar-1.35

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
