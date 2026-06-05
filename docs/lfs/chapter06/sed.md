::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](patch.md "Patch-2.8"){accesskey="p"}

    Patch-2.8

-   [Next](tar.md "Tar-1.35"){accesskey="n"}

    Tar-1.35

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-sed}6.14. Sed-4.10 {#sed-4.10 .sect1}

:::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Sed package contains a stream editor.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [21 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 6.14.1. Installation of Sed {#installation-of-sed .sect2}

Prepare Sed for compilation:

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
Details on this package are located in [Section 8.32.2, "Contents of Sed."](../chapter08/sed.md#contents-sed "8.32.2. Contents of Sed"){.xref}
:::
::::::::::

::: navfooter
-   [Prev](patch.md "Patch-2.8"){accesskey="p"}

    Patch-2.8

-   [Next](tar.md "Tar-1.35"){accesskey="n"}

    Tar-1.35

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
