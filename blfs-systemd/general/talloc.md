::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](spirv-llvm-translator.md "SPIRV-LLVM-Translator-22.1.2"){accesskey="p"}

    SPIRV-LLVM-Translator-22.1.2

-   [Next](uchardet.md "Uchardet-0.0.8"){accesskey="n"}

    Uchardet-0.0.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#talloc}Talloc-2.4.4 {#talloc-2.4.4 .sect1}

:::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to Talloc {#introduction-to-talloc .sect2}

[Talloc]{.application} provides a hierarchical, reference counted memory pool system with destructors. It is the core memory allocator used in [Samba]{.application}.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.samba.org/ftp/talloc/talloc-2.4.4.tar.gz](https://www.samba.org/ftp/talloc/talloc-2.4.4.tar.gz){.ulink}

-   Download MD5 sum: a385dd581b4b588873338d182294cf36

-   Download size: 672 KB

-   Estimated disk space required: 11 MB (with tests)

-   Estimated build time: 0.4 SBU (with tests)
:::

### Talloc Dependencies

#### Optional

[docbook-xml-4.5](../pst/docbook.md "docbook-xml-4.5"){.xref}, [docbook-xsl-nons-1.79.2](../pst/docbook-xsl.md "docbook-xsl-nons-1.79.2"){.xref} and [libxslt-1.1.45](libxslt.md "libxslt-1.1.45"){.xref} (To generate man pages), [GDB-17.2](gdb.md "GDB-17.2"){.xref}, [git-2.54.0](git.md "Git-2.54.0"){.xref}, [libnsl-2.0.1](../basicnet/libnsl.md "libnsl-2.0.1"){.xref}, [libtirpc-1.3.7](../basicnet/libtirpc.md "libtirpc-1.3.7"){.xref}, [Valgrind-3.27.1](valgrind.md "Valgrind-3.27.1"){.xref}, and [xfsprogs-7.0.1](../postlfs/xfsprogs.md "xfsprogs-7.0.1"){.xref}
:::::

::: {.installation lang="en"}
## Installation of Talloc {#installation-of-talloc .sect2}

Install [Talloc]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

To check the results, issue [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [None]{.segbody}
:::

::: seg
**Installed Libraries:** [libpytalloc-util.cpython-314-\<arch\>-linux-gnu.so, libtalloc.so, and talloc.cpython-314-\<arch\>-linux-gnu.so (Python 3 Module)]{.segbody}
:::

::: seg
**Installed Directories:** [None]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------- ----------------------------------------------------------------------
  []{#libtalloc}[`libtalloc.so`{.filename}]{.term}   contains a replacement for the [Glibc]{.application} malloc function
  -------------------------------------------------- ----------------------------------------------------------------------
:::
:::::::::
::::::::::::::

::: navfooter
-   [Prev](spirv-llvm-translator.md "SPIRV-LLVM-Translator-22.1.2"){accesskey="p"}

    SPIRV-LLVM-Translator-22.1.2

-   [Next](uchardet.md "Uchardet-0.0.8"){accesskey="n"}

    Uchardet-0.0.8

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
