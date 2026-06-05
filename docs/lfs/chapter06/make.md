::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](gzip.md "Gzip-1.14"){accesskey="p"}

    Gzip-1.14

-   [Next](patch.md "Patch-2.8"){accesskey="n"}

    Patch-2.8

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-make}6.12. Make-4.4.1 {#make-4.4.1 .sect1}

:::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Make package contains a program for controlling the generation of executables and other non-source files of a package from source files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [less than 0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [15 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 6.12.1. Installation of Make {#installation-of-make .sect2}

Prepare Make for compilation:

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
Details on this package are located in [Section 8.69.2, "Contents of Make."](../chapter08/make.md#contents-make "8.69.2. Contents of Make"){.xref}
:::
::::::::::

::: navfooter
-   [Prev](gzip.md "Gzip-1.14"){accesskey="p"}

    Gzip-1.14

-   [Next](patch.md "Patch-2.8"){accesskey="n"}

    Patch-2.8

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
