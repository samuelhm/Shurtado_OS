::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](gawk.md "Gawk-5.4.0"){accesskey="p"}

    Gawk-5.4.0

-   [Next](gzip.md "Gzip-1.14"){accesskey="n"}

    Gzip-1.14

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-grep}6.10. Grep-3.12 {#grep-3.12 .sect1}

:::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Grep package contains programs for searching through the contents of files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [32 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 6.10.1. Installation of Grep {#installation-of-grep .sect2}

Prepare Grep for compilation:

``` userinput
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)
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
Details on this package are located in [Section 8.36.2, "Contents of Grep."](../chapter08/grep.md#contents-grep "8.36.2. Contents of Grep"){.xref}
:::
::::::::::

::: navfooter
-   [Prev](gawk.md "Gawk-5.4.0"){accesskey="p"}

    Gawk-5.4.0

-   [Next](gzip.md "Gzip-1.14"){accesskey="n"}

    Gzip-1.14

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
