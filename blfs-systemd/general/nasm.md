::: navheader
#### Beyond Linux^®^ From Scratch [(systemd]{.phrase} Edition) - Version r13.0-790

### Chapter 13. Programming

-   [Prev](mercurial.md "Mercurial-7.2.2"){accesskey="p"}

    Mercurial-7.2.2

-   [Next](patchelf.md "Patchelf-0.18.0"){accesskey="n"}

    Patchelf-0.18.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::

# []{#nasm}NASM-3.01 {#nasm-3.01 .sect1}

::::::::::::::: {.sect1 lang="en"}
:::::: {.package lang="en"}
## Introduction to NASM {#introduction-to-nasm .sect2}

[NASM]{.application} (Netwide Assembler) is an 80x86 assembler designed for portability and modularity. It includes a disassembler as well.

::: {.admon .note}
![\[Note\]](../images/note.png)

### Note

Development versions of BLFS may not build or run some packages properly if LFS or dependencies have been updated since the most recent stable versions of the books.
:::

### Package Information

::: itemizedlist
-   Download (HTTP): [https://www.nasm.us/pub/nasm/releasebuilds/3.01/nasm-3.01.tar.xz](https://www.nasm.us/pub/nasm/releasebuilds/3.01/nasm-3.01.tar.xz){.ulink}

-   Download MD5 sum: 8414016d6ad0e113958c29066dfcc550

-   Download size: 1.4 MB

-   Estimated disk space required: 70 MB

-   Estimated build time: 0.2 SBU
:::

### Additional Downloads

::: itemizedlist
-   Optional documentation: [https://www.nasm.us/pub/nasm/releasebuilds/3.01/nasm-3.01-xdoc.tar.xz](https://www.nasm.us/pub/nasm/releasebuilds/3.01/nasm-3.01-xdoc.tar.xz){.ulink}
:::

### NASM Dependencies

#### Optional (for generating documentation):

[asciidoc-10.2.1](python-modules.md#asciidoc "Asciidoc-10.2.1"){.xref} and [xmlto-0.0.29](../pst/xmlto.md "xmlto-0.0.29"){.xref}
::::::

::: {.installation lang="en"}
## Installation of NASM {#installation-of-nasm .sect2}

If you downloaded the optional documentation, put it into the source tree:

``` userinput
tar -xf ../nasm-3.01-xdoc.tar.xz --strip-components=1
```

Install [NASM]{.application} by running the following commands:

``` userinput
./configure --prefix=/usr &&
make
```

This package does not come with a test suite.

Now, as the `root`{.systemitem} user:

``` root
make install
```

If you downloaded the optional documentation, install it with the following instructions as the `root`{.systemitem} user:

``` root
install -m755 -d         /usr/share/doc/nasm-3.01/html  &&
cp -v doc/html/*.md    /usr/share/doc/nasm-3.01/html  &&
cp -v doc/*.{txt,ps,pdf} /usr/share/doc/nasm-3.01
```
:::

::::::::: {.content lang="en"}
## Contents {#contents .sect2}

::::::: segmentedlist
:::::: seglistitem
::: seg
**Installed Programs:** [nasm and ndisasm]{.segbody}
:::

::: seg
**Installed Libraries:** [None]{.segbody}
:::

::: seg
**Installed Directory:** [/usr/share/doc/nasm-3.01]{.segbody}
:::
::::::
:::::::

::: variablelist
### Short Descriptions

  ---------------------------------------------- --------------------------------------
  []{#nasm-prog}[[**nasm**]{.command}]{.term}    is a portable 80x86 assembler
  []{#ndisasm}[[**ndisasm**]{.command}]{.term}   is an 80x86 binary file disassembler
  ---------------------------------------------- --------------------------------------
:::
:::::::::
:::::::::::::::

::: navfooter
-   [Prev](mercurial.md "Mercurial-7.2.2"){accesskey="p"}

    Mercurial-7.2.2

-   [Next](patchelf.md "Patchelf-0.18.0"){accesskey="n"}

    Patchelf-0.18.0

-   [Up](prog.md "Chapter 13. Programming"){accesskey="u"}

-   [Home](../index.md "Beyond Linux® From Scratch  (systemd  Edition) - Version r13.0-790"){accesskey="h"}
:::
