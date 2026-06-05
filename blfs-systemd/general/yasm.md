::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](valgrind.md "Valgrind-3.27.1"){accesskey="p"}

    Valgrind-3.27.1

-   [Next](java.md "Java-21.0.10"){accesskey="n"}

    Java-21.0.10

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#yasm}yasm-1.3.0 {#yasm-1.3.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to yasm {#introduction-to-yasm .sect2}

[Yasm]{.application} is a complete rewrite of the [NASM-3.01](nasm.md "NASM-3.01"){.xref} assembler. It supports the x86 and AMD64 instruction sets, accepts NASM and GAS assembler syntaxes and outputs binary, ELF32 and ELF64 object formats.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz](https://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz){.ulink}

-   Download MD5 sum: fc9e586751ff789b34b1f21d572d96af

-   Download size: 1.5 MB

-   Estimated disk space required: 27 MB (additional 12 MB for the tests)

-   Estimated build time: 0.1 SBU (additional 0.1 SBU for the tests)
:::

### yasm Dependencies

#### Optional

[cython-3.2.5](python-modules.md#cython "Cython-3.2.5"){.xref} and [Python2](https://www.python.org/downloads/release/python-2718/){.ulink}
:::::

::: {.installation lang="en"}
## Installation of yasm {#installation-of-yasm .sect2}

First, fix a problem when building with gcc-15:

``` userinput
sed -e 's/def __cplusplus/ defined(__cplusplus) || __STDC_VERSION__ >= 202311L/' \
    -i libyasm/bitvect.h
```

Install [yasm]{.application} by running the following commands:

``` userinput
sed -i 's#) ytasm.*#)#' Makefile.in &&

./configure --prefix=/usr &&
make
```

To test the results, issue: [**make -j1 check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

[**sed -i 's#) ytasm.\*#)#' Makefile.in**]{.command}: This sed prevents it compiling 2 programs (vsyasm and ytasm) that are only of use on Microsoft Windows.
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Program:** [yasm]{.segbody}
:::

::: seg
**Installed Library:** [libyasm.a]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/libyasm]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  --------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  []{#yasm-prog}[[**yasm**]{.command}]{.term}   is a portable, retargetable assembler that supports the x86 and AMD64 instruction sets, accepts NASM and GAS assembler syntaxes and outputs binaries in ELF32 and ELF64 object formats
  []{#libyasm}[`libyasm.a`{.filename}]{.term}   provides all of the core functionality of [**yasm**]{.command}, for manipulating machine instructions and object file constructs
  --------------------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](valgrind.md "Valgrind-3.27.1"){accesskey="p"}

    Valgrind-3.27.1

-   [Next](java.md "Java-21.0.10"){accesskey="n"}

    Java-21.0.10

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
