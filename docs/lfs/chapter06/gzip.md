::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](grep.md "Grep-3.12"){accesskey="p"}

    Grep-3.12

-   [Next](make.md "Make-4.4.1"){accesskey="n"}

    Make-4.4.1

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-gzip}6.11. Gzip-1.14 {#gzip-1.14 .sect1}

:::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Gzip package contains programs for compressing and decompressing files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [12 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 6.11.1. Installation of Gzip {#installation-of-gzip .sect2}

Prepare Gzip for compilation:

``` userinput
./configure --prefix=/usr --host=$LFS_TGT
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
Details on this package are located in [Section 8.65.2, "Contents of Gzip."](../chapter08/gzip.md#contents-gzip "8.65.2. Contents of Gzip"){.xref}
:::
::::::::::

::: navfooter
-   [Prev](grep.md "Grep-3.12"){accesskey="p"}

    Grep-3.12

-   [Next](make.md "Make-4.4.1"){accesskey="n"}

    Make-4.4.1

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
