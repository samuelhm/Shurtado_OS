::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](lua.md "Lua-5.4.8"){accesskey="p"}

    Lua-5.4.8

-   [Next](mercurial.md "Mercurial-7.2.2"){accesskey="n"}

    Mercurial-7.2.2

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#luajit}luajit-20260213 {#luajit-20260213 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to luajit {#introduction-to-luajit .sect2}

The [luajit]{.application} package contains a Just-In-Time compiler for Lua. It is often used as scripting middleware, and it is high performance while also having a low memory footprint.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://anduin.linuxfromscratch.org/BLFS/luajit/luajit-20260213.tar.xz](https://anduin.linuxfromscratch.org/BLFS/luajit/luajit-20260213.tar.xz){.ulink}

-   Download MD5 sum: 6459b2696188b74edf950926cb3bacd1

-   Download size: 736 KB

-   Estimated disk space required: 9.1 MB

-   Estimated build time: 0.2 SBU
:::
:::::

::: {.installation lang="en"}
## Installation of luajit {#installation-of-luajit .sect2}

Install [luajit]{.application} by running the following commands:

``` userinput
make PREFIX=/usr amalg
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make PREFIX=/usr install &&
rm -v /usr/lib/libluajit-5.1.a
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`amalg`*: This ensures an amalgamated build, i.e. the LuaJIT core is compiled as one huge C file, allowing GCC to generate faster and shorter code.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [luajit (symlink to luajit-2.1.ROLLING) and luajit-2.1.ROLLING]{.segbody}
:::

::: seg
**Installed Libraries:** [libluajit-5.1.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/luajit-2.1 and /usr/share/luajit-2.1]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------------------- -------------------------------------------------------
  []{#luajit-prog}[[**luajit**]{.command}]{.term}            provides a Just-In-Time compiler for Lua
  []{#libluajit-5.1}[`libluajit-5.1.so`{.filename}]{.term}   contains an API for the Just-In-Time compiler for Lua
  ---------------------------------------------------------- -------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](lua.md "Lua-5.4.8"){accesskey="p"}

    Lua-5.4.8

-   [Next](mercurial.md "Mercurial-7.2.2"){accesskey="n"}

    Mercurial-7.2.2

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
