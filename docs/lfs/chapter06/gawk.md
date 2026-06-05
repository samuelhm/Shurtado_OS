::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](findutils.md "Findutils-4.10.0"){accesskey="p"}

    Findutils-4.10.0

-   [Next](grep.md "Grep-3.12"){accesskey="n"}

    Grep-3.12

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-gawk}6.9. Gawk-5.4.0 {#gawk-5.4.0 .sect1}

:::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Gawk package contains programs for manipulating text files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [49 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 6.9.1. Installation of Gawk {#installation-of-gawk .sect2}

First, ensure some unneeded files are not installed:

``` userinput
sed -i 's/extras//' Makefile.in
```

Prepare Gawk for compilation:

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
Details on this package are located in [Section 8.61.2, "Contents of Gawk."](../chapter08/gawk.md#contents-gawk "8.61.2. Contents of Gawk"){.xref}
:::
::::::::::

::: navfooter
-   [Prev](findutils.md "Findutils-4.10.0"){accesskey="p"}

    Findutils-4.10.0

-   [Next](grep.md "Grep-3.12"){accesskey="n"}

    Grep-3.12

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
