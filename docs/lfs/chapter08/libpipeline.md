::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 8. Installing Basic System Software

-   [Prev](kbd.md "Kbd-2.10.0"){accesskey="p"}

    Kbd-2.10.0

-   [Next](make.md "Make-4.4.1"){accesskey="n"}

    Make-4.4.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-system-libpipeline}8.68. Libpipeline-1.5.8 {#libpipeline-1.5.8 .sect1}

:::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Libpipeline package contains a library for manipulating pipelines of subprocesses in a flexible and convenient way.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [10 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 8.68.1. Installation of Libpipeline {#installation-of-libpipeline .sect2}

Prepare Libpipeline for compilation:

``` userinput
./configure --prefix=/usr
```

Compile the package:

``` userinput
make
```

The tests require the [Check]{.application} library that we\'ve removed from LFS.

Install the package:

``` userinput
make install
```
:::

::::::: {.content lang="en"}
## []{#contents-libpipeline}8.68.2. Contents of Libpipeline {#contents-of-libpipeline .sect2}

::::: segmentedlist
:::: seglistitem
::: seg
**Installed library:** [libpipeline.so]{.segbody}
:::
::::
:::::

::: variablelist
### Short Descriptions

  --------------------------------------------------- -------------------------------------------------------------------------
  []{#libpipeline}[`libpipeline`{.filename}]{.term}   This library is used to safely construct pipelines between subprocesses
  --------------------------------------------------- -------------------------------------------------------------------------
:::
:::::::
::::::::::::::

::: navfooter
-   [Prev](kbd.md "Kbd-2.10.0"){accesskey="p"}

    Kbd-2.10.0

-   [Next](make.md "Make-4.4.1"){accesskey="n"}

    Make-4.4.1

-   [Up](chapter08.md "Chapter 8. Installing Basic System Software"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
