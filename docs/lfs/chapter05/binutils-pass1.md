::: navheader
#### Linux From Scratch - Version r13.0-131-systemd

### Chapter 5. Compiling a Cross-Toolchain

-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](gcc-pass1.md "GCC-16.1.0 - Pass 1"){accesskey="n"}

    GCC-16.1.0 - Pass 1

-   [Up](chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::

# []{#ch-tools-binutils-pass1}5.2. Binutils-2.46.0 - Pass 1 {#binutils-2.46.0---pass-1 .sect1}

:::::::::::::: {.wrap lang="en"}
::::::: {.package lang="en"}
The Binutils package contains a linker, an assembler, and other tools for handling object files.

:::::: segmentedlist
::::: seglistitem
::: seg
**Approximate build time:** [1 SBU]{.segbody}
:::

::: seg
**Required disk space:** [691 MB]{.segbody}
:::
:::::
::::::
:::::::

::::::: {.installation lang="en"}
## 5.2.1. Installation of Cross Binutils {#installation-of-cross-binutils .sect2}

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Go back and re-read the notes in the section titled [General Compilation Instructions](../partintro/generalinstructions.md "General Compilation Instructions"){.xref}. Understanding the notes labeled important can save you a lot of problems later.
:::

It is important that Binutils be the first package compiled because both Glibc and GCC perform various tests on the available linker and assembler to determine which of their own features to enable.

The Binutils documentation recommends building Binutils in a dedicated build directory:

``` userinput
mkdir -v build
cd       build
```

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

In order for the SBU values listed in the rest of the book to be of any use, measure the time it takes to build this package from the configuration, up to and including the first install. To achieve this easily, wrap the commands in a [**time**]{.command} command like this: **`time { ../configure ... && make && make install; }`**.
:::

Now prepare Binutils for compilation:

``` userinput
../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --enable-gprofng=no \
             --disable-werror    \
             --enable-new-dtags  \
             --enable-default-hash-style=gnu
```

:::: variablelist
**The meaning of the configure options:**

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Contrary to other packages, not all the options listed below appear when running [**./configure \--help**]{.command}. For example, to find the `--with-sysroot`{.option} option, you have to run [**ld/configure \--help**]{.command}. All the options can be listed at once with [**./configure \--help=recursive**]{.command}.
:::

[*`--prefix=$LFS/tools`*]{.term}

:   This tells the configure script to prepare to install the Binutils programs in the `$LFS/tools`{.filename} directory.

[*`--with-sysroot=$LFS`*]{.term}

:   For cross compilation, this tells the build system to look in \$LFS for the target system libraries as needed.

[`--target=$LFS_TGT`{.envar}]{.term}

:   Because the machine description in the `LFS_TGT`{.envar} variable is slightly different than the value returned by the [**config.guess**]{.command} script, this switch will tell the [**configure**]{.command} script to adjust binutil\'s build system for building a cross linker.

[*`--disable-nls`*]{.term}

:   This disables internationalization as i18n is not needed for the temporary tools.

[*`--enable-gprofng=no`*]{.term}

:   This disables building gprofng which is not needed for the temporary tools.

[*`--disable-werror`*]{.term}

:   This prevents the build from stopping in the event that there are warnings from the host\'s compiler.

[*`--enable-new-dtags`*]{.term}

:   This makes the linker use the ["[runpath]{.quote}"]{.quote} tag for embedding library search paths into executables and shared libraries, instead of the traditional ["[rpath]{.quote}"]{.quote} tag. It makes debugging dynamically linked executables easier and works around potential issues in the test suite of some packages.

[*`--enable-default-hash-style=gnu`*]{.term}

:   By default, the linker would generate both the GNU-style hash table and the classic ELF hash table for shared libraries and dynamically linked executables. The hash tables are only intended for a dynamic linker to perform symbol lookup. On LFS the dynamic linker (provided by the Glibc package) will always use the GNU-style hash table which is faster to query. So the classic ELF hash table is completely useless. This makes the linker only generate the GNU-style hash table by default, so we can avoid wasting time to generate the classic ELF hash table when we build the packages, or wasting disk space to store it.
::::

Continue with compiling the package:

``` userinput
make
```

Install the package:

``` userinput
make install
```
:::::::

::: {.content lang="en"}
Details on this package are located in [Section 8.21.2, "Contents of Binutils."](../chapter08/binutils.md#contents-binutils "8.21.2. Contents of Binutils"){.xref}
:::
::::::::::::::

::: navfooter
-   [Prev](introduction.md "Introduction"){accesskey="p"}

    Introduction

-   [Next](gcc-pass1.md "GCC-16.1.0 - Pass 1"){accesskey="n"}

    GCC-16.1.0 - Pass 1

-   [Up](chapter05.md "Chapter 5. Compiling a Cross-Toolchain"){accesskey="u"}

-   [Home](../index.md "Linux From Scratch - Version r13.0-131-systemd"){accesskey="h"}
:::
