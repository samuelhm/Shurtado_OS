::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](sed.md "Sed-4.10"){accesskey="p"}

    Sed-4.10

-   [Next](xz.md "Xz-5.8.3"){accesskey="n"}

    Xz-5.8.3

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-tar}6.15. Tar-1.35 {#tar-1.35 .sect1}

:::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Tar package provides the ability to create tar archives as well as perform various other kinds of archive manipulation. Tar can be used on previously created archives to extract files, to store additional files, or to update or list files which were already stored.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [42 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 6.15.1. Installation of Tar {#installation-of-tar .sect2}

Prepare Tar for compilation:

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
Details on this package are located in [Section 8.71.2, "Contents of Tar."](../chapter08/tar.md#contents-tar "8.71.2. Contents of Tar"){.xref}
:::
::::::::::

::: navfooter
-   [Prev](sed.md "Sed-4.10"){accesskey="p"}

    Sed-4.10

-   [Next](xz.md "Xz-5.8.3"){accesskey="n"}

    Xz-5.8.3

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
