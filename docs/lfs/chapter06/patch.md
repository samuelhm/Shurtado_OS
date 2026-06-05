::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](make.md "Make-4.4.1"){accesskey="p"}

    Make-4.4.1

-   [Next](sed.md "Sed-4.10"){accesskey="n"}

    Sed-4.10

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-patch}6.13. Patch-2.8 {#patch-2.8 .sect1}

:::::::::: {.wrap lang="en"}
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
## 6.13.1. Installation of Patch {#installation-of-patch .sect2}

Prepare Patch for compilation:

``` userinput
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
```

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make DESTDIR=$LFS install
```
:::

::: {.content lang="en"}
Details on this package are located in [Section 8.70.2, "Contents of Patch."](../chapter08/patch.md#contents-patch "8.70.2. Contents of Patch"){.xref}
:::
::::::::::

::: navfooter
-   [Prev](make.md "Make-4.4.1"){accesskey="p"}

    Make-4.4.1

-   [Next](sed.md "Sed-4.10"){accesskey="n"}

    Sed-4.10

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
