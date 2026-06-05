::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 6. Cross Compiling Temporary Tools

-   [Prev](xz.md "Xz-5.8.3"){accesskey="p"}

    Xz-5.8.3

-   [Next](gcc-pass2.md "GCC-16.1.0 - Pass 2"){accesskey="n"}

    GCC-16.1.0 - Pass 2

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-binutils-pass2}6.17. Binutils-2.46.0 - Pass 2 {#binutils-2.46.0---pass-2 .sect1}

::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Binutils package contains a linker, an assembler, and other tools for handling object files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [0.4 SBU]{.segbody}
:::

::: seg
**Required disk space:** [557 MB]{.segbody}
:::
:::::
::::::
:::::::

:::: {.installation lang="en"}
## 6.17.1. Installation of Binutils {#installation-of-binutils .sect2}

Binutils building system relies on an shipped libtool copy to link against internal static libraries, but the libiberty and zlib copies shipped in the package do not use libtool. This inconsistency may cause produced binaries mistakenly linked against libraries from the host distro. Work around this issue:

``` userinput
sed '6031s/$add_dir//' -i ltmain.sh
```

Create a separate build directory again:

``` userinput
mkdir -v build
cd       build
```

Prepare Binutils for compilation:

``` userinput
../configure                   \
    --prefix=/usr              \
    --build=$(../config.guess) \
    --host=$LFS_TGT            \
    --disable-nls              \
    --enable-shared            \
    --enable-gprofng=no        \
    --disable-werror           \
    --enable-64-bit-bfd        \
    --enable-new-dtags         \
    --enable-default-hash-style=gnu
```

::: variablelist
**The meaning of the new configure options:**

[*`--enable-shared`*]{.term}

:   Builds `libbfd`{.filename} as a shared library.

[*`--enable-64-bit-bfd`*]{.term}

:   Enables 64-bit support (on hosts with smaller word sizes). This may not be needed on 64-bit systems, but it does no harm.
:::

Compile the package:

``` userinput
make
```

Install the package:

``` userinput
make DESTDIR=$LFS install
```

Remove the libtool archive files because they are harmful for cross compilation, and remove unnecessary static libraries:

``` userinput
rm -v $LFS/usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes,sframe}.{a,la}
```
::::

::: {.content lang="en"}
Details on this package are located in [Section 8.21.2, "Contents of Binutils."](../chapter08/binutils.md#contents-binutils "8.21.2. Contents of Binutils"){.xref}
:::
:::::::::::

::: navfooter
-   [Prev](xz.md "Xz-5.8.3"){accesskey="p"}

    Xz-5.8.3

-   [Next](gcc-pass2.md "GCC-16.1.0 - Pass 2"){accesskey="n"}

    GCC-16.1.0 - Pass 2

-   [Up](chapter06.md "Chapter 6. Cross Compiling Temporary Tools"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
