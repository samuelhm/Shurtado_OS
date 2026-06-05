::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 9. General Libraries

-   [Prev](libatasmart.md "libatasmart-0.19"){accesskey="p"}

    libatasmart-0.19

-   [Next](libblockdev.md "libblockdev-3.5.0"){accesskey="n"}

    libblockdev-3.5.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#libatomic_ops}libatomic_ops-7.10.0 {#libatomic_ops-7.10.0 .sect1}

::::::::::::::: {.sect1 lang="en"}
::::: {.package lang="en"}
## Introduction to libatomic_ops {#introduction-to-libatomic_ops .sect2}

[libatomic_ops]{.application} provides implementations for atomic memory update operations on a number of architectures. This allows direct use of these in reasonably portable code. Unlike earlier similar packages, this one explicitly considers memory barrier semantics, and allows the construction of code that involves minimum overhead across a variety of architectures.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://github.com/bdwgc/libatomic_ops/releases/download/v7.10.0/libatomic_ops-7.10.0.tar.gz](https://github.com/bdwgc/libatomic_ops/releases/download/v7.10.0/libatomic_ops-7.10.0.tar.gz){.ulink}

-   Download MD5 sum: 1de9631daa0781a8c5a8457053d57cf0

-   Download size: 532 KB

-   Estimated disk space required: 6.2 MB (with tests)

-   Estimated build time: 0.1 SBU (with tests)
:::
:::::

::: {.installation lang="en"}
## Installation of libatomic_ops {#installation-of-libatomic_ops .sect2}

Install [libatomic_ops]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static \
            --docdir=/usr/share/doc/libatomic_ops-7.10.0 &&
make
```

To check the results, issue [**make check**]{.command}.

Now, as the `root`{.systemitem} user:

``` root
make install
```
:::

::: {.commands lang="en"}
## Command Explanations {#command-explanations .sect2}

*`--enable-shared`*: This switch enables building of the `libatomic_ops`{.filename} shared libraries.

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
**Installed Libraries:** [libatomic_ops.so and libatomic_ops_gpl.so]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/include/libatomic_ops and /usr/share/doc/libatomic_ops-7.10.0]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  -------------------------------------------------------------- -------------------------------------------------
  []{#libatomic_ops-lib}[`libatomic_ops.so`{.filename}]{.term}   contains functions for atomic memory operations
  -------------------------------------------------------------- -------------------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](libatasmart.md "libatasmart-0.19"){accesskey="p"}

    libatasmart-0.19

-   [Next](libblockdev.md "libblockdev-3.5.0"){accesskey="n"}

    libblockdev-3.5.0

-   [Up](genlib.md "Chapter 9. General Libraries"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
