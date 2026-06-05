::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](file.md "File-5.47"){accesskey="p"}

    File-5.47

-   [Next](gawk.md "Gawk-5.4.0"){accesskey="n"}

    Gawk-5.4.0

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-findutils}6.8. Findutils-4.10.0 {#findutils-4.10.0 .sect1}

:::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Findutils package contains programs to find files. Programs are provided to search through all the files in a directory tree and to create, maintain, and search a database (often faster than the recursive find, but unreliable unless the database has been updated recently). Findutils also supplies the [**xargs**]{.command} program, which can be used to run a specified command on each file selected by a search.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.2 SBU]{.segbody}
:::

::: seg
**Required disk space:** [48 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 6.8.1. Installation of Findutils {#installation-of-findutils .sect2}

Prepare Findutils for compilation:

``` userinput
./configure --prefix=/usr                   \
            --localstatedir=/var/lib/locate \
            --host=$LFS_TGT                 \
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
Details on this package are located in [Section 8.62.2, "Contents of Findutils."](../chapter08/findutils.md#contents-findutils "8.62.2. Contents of Findutils"){.xref}
:::
::::::::::

::: navfooter
-   [Prev](file.md "File-5.47"){accesskey="p"}

    File-5.47

-   [Next](gawk.md "Gawk-5.4.0"){accesskey="n"}

    Gawk-5.4.0

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
