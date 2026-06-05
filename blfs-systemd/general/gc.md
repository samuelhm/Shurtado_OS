::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](gcc.md "GCC-16.1.0"){accesskey="p"}

    GCC-16.1.0

-   [Next](gdb.md "GDB-17.2"){accesskey="n"}

    GDB-17.2

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#gc}GC-8.2.12 {#gc-8.2.12 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to GC {#introduction-to-gc .sect2}

The [GC]{.application} package contains the Boehm-Demers-Weiser conservative garbage collector, which can be used as a garbage collecting replacement for the C malloc function or C++ new operator. It allows you to allocate memory basically as you normally would, without explicitly deallocating memory that is no longer useful. The collector automatically recycles memory when it determines that it can no longer be otherwise accessed. The collector is also used by a number of programming language implementations that either use C as intermediate code, want to facilitate easier interoperation with C libraries, or just prefer the simple collector interface. Alternatively, the garbage collector may be used as a leak detector for C or C++ programs, though that is not its primary goal.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/bdwgc/bdwgc/releases/download/v8.2.12/gc-8.2.12.tar.gz](https://github.com/bdwgc/bdwgc/releases/download/v8.2.12/gc-8.2.12.tar.gz){.ulink}

-   Download MD5 sum: 5e7c74f8bd57f64d3f86673ff3c17230

-   Download size: 1.2 MB

-   Estimated disk space required: 9.4 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::

### GC Dependencies

#### Optional

[libatomic_ops-7.10.0](libatomic_ops.md "libatomic_ops-7.10.0"){.xref}
:::::

::: {.installation lang="en"}
## Installation of GC {#installation-of-gc .sect2}

Install [GC]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr      \
            --enable-cplusplus \
            --disable-static   \
            --docdir=/usr/share/doc/gc-8.2.12 &&
make
```

To test the results, issue: [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install &&
install -v -m644 doc/gc.man /usr/share/man/man3/gc_malloc.3
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--docdir=/usr/share/doc/gc-8.2.12`*: This option is used so the package will install the documentation in a versioned directory.

*`--enable-cplusplus`*: This parameter enables the building and installing of the C++ library along with the standard C library.

*`--disable-static`*: This switch prevents installation of static versions of the libraries.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libcord.so, libgc.so, libgccpp.so, and libgctba.so]{.segbody}
:::

::: seg
**Installed Directories:** [/usr/include/gc and /usr/share/doc/gc-8.2.12]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ------------------------------------------------ -------------------------------------------------------------------------------------------------------------------
  []{#libcord}[`libcord.so`{.filename}]{.term}     contains a tree-based string library
  []{#libgc}[`libgc.so`{.filename}]{.term}         contains a C interface to the conservative garbage collector, primarily designed to replace the C malloc function
  []{#libgccpp}[`libgccpp.so`{.filename}]{.term}   contains a C++ interface to the conservative garbage collector
  []{#libgctba}[`libgctba.so`{.filename}]{.term}   contains a C++ interface to throw bad allocations
  ------------------------------------------------ -------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](gcc.md "GCC-16.1.0"){accesskey="p"}

    GCC-16.1.0

-   [Next](gdb.md "GDB-17.2"){accesskey="n"}

    GDB-17.2

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
