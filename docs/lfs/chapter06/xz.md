::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](tar.md "Tar-1.35"){accesskey="p"}

    Tar-1.35

-   [Next](binutils-pass2.md "Binutils-2.46.0 - Pass 2"){accesskey="n"}

    Binutils-2.46.0 - Pass 2

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-xz}6.16. Xz-5.8.3 {#xz-5.8.3 .sect1}

:::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Xz package contains programs for compressing and decompressing files. It provides capabilities for the lzma and the newer xz compression formats. Compressing text files with [**xz**]{.command} yields a better compression percentage than with the traditional [**gzip**]{.command} or [**bzip2**]{.command} commands.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [24 MB]{.segbody}
:::
:::::
::::::
:::::::

::: {.installation lang="en"}
## 6.16.1. Installation of Xz {#installation-of-xz .sect2}

Prepare Xz for compilation:

``` userinput
./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.8.3
```

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make DESTDIR=$LFS install
```

Remove the libtool archive file because it is harmful for cross compilation:

``` userinput
rm -v $LFS/usr/lib/liblzma.la
```
:::

::: {.content lang="en"}
Details on this package are located in [Section 8.8.2, "Contents of Xz."](../chapter08/xz.md#contents-xz "8.8.2. Contents of Xz"){.xref}
:::
::::::::::

::: navfooter
-   [Prev](tar.md "Tar-1.35"){accesskey="p"}

    Tar-1.35

-   [Next](binutils-pass2.md "Binutils-2.46.0 - Pass 2"){accesskey="n"}

    Binutils-2.46.0 - Pass 2

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
